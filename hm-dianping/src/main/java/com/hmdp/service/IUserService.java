package com.hmdp.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.hmdp.dto.LoginFormDTO;
import com.hmdp.dto.Result;
import com.hmdp.dto.UserProfileUpdateDTO;
import com.hmdp.entity.User;

import javax.servlet.http.HttpSession;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Moon
 * @since 2026-07-13
 */
public interface IUserService extends IService<User> {

    /**
     * 发送手机验证码
     * @param phone 手机号
     * @param session 会话
     * @return 发送结果
     */
    Result sendCode(String phone, HttpSession session);

    /**
     * 登录功能
     * @param loginForm
     * @param session
     * @return
     */
    Result login(LoginFormDTO loginForm, HttpSession session);

    /**
     * 退出登录
     * @param token 登录令牌
     * @return 退出结果
     */
    Result logout(String token);

    /**
     * 更新当前登录用户资料
     * @param profile 资料表单
     * @param token 登录令牌
     * @return 更新结果
     */
    Result updateProfile(UserProfileUpdateDTO profile, String token);


    Result sign();

    Result signCount();

}
