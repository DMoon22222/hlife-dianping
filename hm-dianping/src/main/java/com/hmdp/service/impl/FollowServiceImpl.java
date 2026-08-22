package com.hmdp.service.impl;

import cn.hutool.core.bean.BeanUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.hmdp.dto.Result;
import com.hmdp.dto.UserDTO;
import com.hmdp.entity.Follow;
import com.hmdp.entity.User;
import com.hmdp.entity.UserInfo;
import com.hmdp.mapper.FollowMapper;
import com.hmdp.service.IFollowService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.hmdp.service.IUserInfoService;
import com.hmdp.service.IUserService;
import com.hmdp.utils.UserHolder;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Moon
 * @since 2026-07-13
 */
@Service
public class FollowServiceImpl extends ServiceImpl<FollowMapper, Follow> implements IFollowService {
    @Resource
    private StringRedisTemplate stringRedisTemplate;
    @Resource
    private IUserService userService;
    @Resource
    private IUserInfoService userInfoService;

    /**
     * 关注或取关
     * @param followUserId
     * @param isFollow
     * @return
     */
    @Override
    @Transactional
    public Result follow(Long followUserId, Boolean isFollow) {
        //获取当前登录用户
        Long userId= UserHolder.getUser().getId();
        String key="follows:"+userId;
        boolean followed = query()
                .eq("user_id", userId)
                .eq("follow_user_id", followUserId)
                .count() > 0;
        //1、判断到底是关注还是取关
        if(isFollow){
            if (followed) {
                return Result.ok();
            }
            //2、关注，新增数据
            Follow follow=new Follow();
            follow.setUserId(userId);
            follow.setFollowUserId(followUserId);
            boolean isSuccess = save(follow);
            if(isSuccess){
                ensureUserInfo(userId);
                ensureUserInfo(followUserId);
                incrementFollowee(userId);
                incrementFans(followUserId);
                //把关注用户的id放入redis的Set集合中 sadd userId followUserId
                stringRedisTemplate.opsForSet().add(key,followUserId.toString());
            }
        }else{
            if (!followed) {
                return Result.ok();
            }
            //3、取关，删除数据 delete from tb_follow where user_id=? and follow_user_id=?
            boolean isSuccess = remove(new QueryWrapper<Follow>()
                    .eq("user_id", userId)
                    .eq("follow_user_id", followUserId));
            //把关注用户的id从Redis中移除
            if(isSuccess) {
                decrementFollowee(userId);
                decrementFans(followUserId);
                stringRedisTemplate.opsForSet().remove(key,followUserId.toString());
            }
        }
        return Result.ok();
    }

    /**
     * 查询是否关注
     * @param followUserId
     * @return
     */

    @Override
    public Result isFollow(Long followUserId) {
        //1、查询是否关注 select count(*) from tb_follow where user_id=? and follow_user_id=?
        Long userId=UserHolder.getUser().getId();
        Integer count = query().eq("user_id", userId)
                .eq("follow_user_id", followUserId)
                .count();
        //判断
        return Result.ok(count>0);

    }

    /**
     * 查询共同关注
     * @param id
     * @return
     */
    @Override
    public Result followCommons(Long id) {
        //1、获取当前用户
        Long userId=UserHolder.getUser().getId();
        String key1="follows:"+userId;
        //2、求交集
        String key2="follows:"+id;
        Set<String> intersect = stringRedisTemplate.opsForSet().intersect(key1, key2);
        if(intersect==null||intersect.isEmpty()){
            //无交集
            return Result.ok(Collections.emptyList());
        }
        //3、解析id集合
        List<Long> ids=intersect.stream().map(Long::valueOf)
                .collect(Collectors.toList());

        //4、查询用户
        List<UserDTO> users = userService.listByIds(ids)
                .stream()
                .map(user-> BeanUtil.copyProperties(user,UserDTO.class))
                .collect(Collectors.toList());

        return Result.ok(users);
    }

    private void ensureUserInfo(Long userId) {
        if (userInfoService.getById(userId) != null) {
            return;
        }
        UserInfo userInfo = new UserInfo();
        userInfo.setUserId(userId);
        userInfoService.save(userInfo);
    }

    private void incrementFans(Long userId) {
        userInfoService.update()
                .setSql("fans = IFNULL(fans, 0) + 1")
                .eq("user_id", userId)
                .update();
    }

    private void decrementFans(Long userId) {
        userInfoService.update()
                .setSql("fans = IF(IFNULL(fans, 0) > 0, fans - 1, 0)")
                .eq("user_id", userId)
                .update();
    }

    private void incrementFollowee(Long userId) {
        userInfoService.update()
                .setSql("followee = IFNULL(followee, 0) + 1")
                .eq("user_id", userId)
                .update();
    }

    private void decrementFollowee(Long userId) {
        userInfoService.update()
                .setSql("followee = IF(IFNULL(followee, 0) > 0, followee - 1, 0)")
                .eq("user_id", userId)
                .update();
    }
}
