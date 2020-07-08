package cn.ndky.webtextile.service.sys.impl;

import cn.ndky.webtextile.common.Constance;
import cn.ndky.webtextile.common.RespObj;
import cn.ndky.webtextile.common.Utils;
import cn.ndky.webtextile.mapper.UserMapper;
import cn.ndky.webtextile.pojo.User;
import cn.ndky.webtextile.service.sys.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.crypto.hash.SimpleHash;
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


    /**
     * 初始化所有企业负责人列表
     * @return
     */
    @Override
    public RespObj initEnterpriseUserTable() {
        List<User> userList = userMapper.getUserListByRoleId("enterprise");
        return RespObj.build(200,"ok",userList);
    }

    /**
     * 批量删除用户
     * @param userIds
     * @param session
     * @return
     */
    @Override
    public RespObj delAllUser(String[] userIds, HttpSession session) {
        userMapper.delAllUser(userIds);
        return RespObj.build(200,"ok",null);
    }



    /**
     * 删除用户根据用户编号
     * @param userId
     * @return
     */
    @Override
    public RespObj delUser(String userId) {
        userMapper.delUser(userId);
        return RespObj.build(200,"ok",null);
    }

    /**
     * 重置用户密码（企业负责人 666666，供应商 111111，内部协作人  222222）
     * @param userId
     * @return
     */
    @Override
    public RespObj resetPassword(String userId) {
        User user = userMapper.getUserByUserId(userId);
        String password = "";
        if(user.getRoleId().equals("enterprise")){
            password = new SimpleHash("MD5", Constance.ENTERPRISE,userId,1024).toString();
        }else if(user.getRoleId().equals("supplier")){
            password = new SimpleHash("MD5", Constance.SUPPLIER,userId,1024).toString();
        }else if(user.getRoleId().equals("collaborator")){
            password = new SimpleHash("MD5", Constance.COLLABORATOR,userId,1024).toString();
        }
        userMapper.resetPassword(userId,password);
        return RespObj.build(200,"ok",null);
    }

    /**
     * 获取用户信息
     * @param userId
     * @return
     */
    @Override
    public RespObj getUser(String userId) {
        User user = userMapper.getUserByUserId(userId);
        return RespObj.build(200,"ok",user);
    }
}
