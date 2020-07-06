package cn.ndky.webtextile.service.impl;

import cn.ndky.webtextile.common.RespObj;
import cn.ndky.webtextile.common.ShiroUser;
import cn.ndky.webtextile.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;

@Service
public class UserServiceimpl implements UserService {



    /**
     * 用户登录
     * @param userId
     * @param password
     * @param session
     * @return
     */
    @Override
    public RespObj login(String userId, String password, HttpSession session) {

//        if(!verify)
//            return RespObj.build(500,"验证码错误",null);

        Subject subject = SecurityUtils.getSubject();

        if(!subject.isAuthenticated()){
            UsernamePasswordToken token = new UsernamePasswordToken(userId,password);
            try{
                subject.login(token);
                session.setAttribute("currentUser",(ShiroUser)subject.getPrincipal());
                session.setAttribute("aa","张三");
                return RespObj.build(200,"ok",null);
            }catch (LockedAccountException lae){
                return RespObj.build(500,lae.getMessage(),null);
            }catch (Exception e){
                return RespObj.build(500,"用户名或密码错误",null);
            }
        }

        return RespObj.build(200,"ok",null);
    }

    /**
     * 用户注销
     * @return
     */
    @Override
    public RespObj logout() {
        SecurityUtils.getSubject().logout();
        return RespObj.build(200,"注销成功",null);
    }
}
