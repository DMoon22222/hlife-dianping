package com.hmdp.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.hmdp.dto.Result;
import com.hmdp.entity.Follow;
import com.hmdp.mapper.FollowMapper;
import com.hmdp.service.IFollowService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.hmdp.utils.UserHolder;
import org.springframework.stereotype.Service;

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

    /**
     * 关注或取关
     * @param followUserId
     * @param isFollow
     * @return
     */
    @Override
    public Result follow(Long followUserId, Boolean isFollow) {
        //获取当前登录用户
        Long userId= UserHolder.getUser().getId();
        //1、判断到底是关注还是取关
        if(isFollow){
            //2、关注，新增数据
            Follow follow=new Follow();
            follow.setUserId(userId);
            follow.setFollowUserId(followUserId);
            save(follow);
        }else{
            //3、取关，删除数据 delete from tb_follow where user_id=? and follow_user_id=?
            remove(new QueryWrapper<Follow>()
                    .eq("user_id",userId)
                    .eq("follow_user_id",followUserId));
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
}
