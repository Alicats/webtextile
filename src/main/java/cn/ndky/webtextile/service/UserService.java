package cn.ndky.webtextile.service;

import cn.ndky.webtextile.common.RespObj;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;

import javax.servlet.http.HttpSession;

public interface UserService {

    /**
     * 用户登录
     * @param userId
     * @param password
     * @param session
     * @return
     */
    public RespObj login(String userId, String password, HttpSession session);

    /**
     * 用户注销
     * @return
     */
    public RespObj logout();
}
