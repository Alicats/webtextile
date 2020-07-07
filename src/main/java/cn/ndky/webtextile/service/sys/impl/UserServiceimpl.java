package cn.ndky.webtextile.service.sys.impl;

import cn.ndky.webtextile.common.RespObj;
import cn.ndky.webtextile.mapper.UserMapper;
import cn.ndky.webtextile.pojo.User;
import cn.ndky.webtextile.service.sys.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public class UserServiceimpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    /**
     * 用户登录
     * @param userId
     * @param password
     * @param session
     * @return
     */
    @Override
    public RespObj login(String userId, String password, HttpSession session) {


        Subject subject = SecurityUtils.getSubject();

        if(!subject.isAuthenticated()){
            UsernamePasswordToken token = new UsernamePasswordToken(userId,password);
            try{
                subject.login(token);
                session.setAttribute("currentUser",(User)subject.getPrincipal());
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

    @Override
    public RespObj initEnterpriseUserTable() {
        List<User> userList = userMapper.getUserListByRoleId("enterprise");
        return RespObj.build(200,"ok",userList);
    }
}
