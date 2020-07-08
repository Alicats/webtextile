package cn.ndky.webtextile.service.sys;

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

    /**
     * 初始化所有企业负责人列表
     */
    public RespObj initEnterpriseUserTable();

    /**
     * 批量删除用户
     */
    public RespObj delAllUser(String[] userIds, HttpSession session);

    /**
     * 除用户根据用户编号
     */
    public RespObj delUser(String userId);

    /**
     * 重置用户密码
     */
    public RespObj resetPassword(String userId);

    /**
     * 获取该用户信息
     */
    public RespObj getUser(String userId);
}
