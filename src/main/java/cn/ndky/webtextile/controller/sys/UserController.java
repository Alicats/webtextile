package cn.ndky.webtextile.controller.sys;

import cn.ndky.webtextile.common.RespObj;
import cn.ndky.webtextile.common.Utils;
import cn.ndky.webtextile.pojo.User;
import cn.ndky.webtextile.service.sys.UserService;
import org.apache.ibatis.annotations.Delete;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;

@RestController
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    /**
     * 初始化所有企业负责人列表
     * @return
     */
    @GetMapping("/initEnterpriseUserTable")
    public RespObj initEnterpriseUserTable(){
        return userService.initEnterpriseUserTable();
    }

    /**
     * 批量删除用户
     * @param userIds
     * @param session
     * @return
     */
    @PostMapping("/delAllUser")
    public RespObj delAllUser(@RequestParam("userIds[]")String[] userIds, HttpSession session){
        return userService.delAllUser(userIds,session);
    }

    /**
     * 删除用户
     * @param userId
     * @return
     */
    @DeleteMapping("/delUser/{userId}")
    public RespObj delUser(@PathVariable("userId")String userId){
        return userService.delUser(userId);
    }

    /**
     * 重置用户密码
     * @param userId
     * @return
     */
    @GetMapping("/resetPassword/{userId}")
    public RespObj resetPassword(@PathVariable("userId")String userId){
        return userService.resetPassword(userId);
    }

    /**
     * 获取用户信息
     * @param userId
     * @return
     */
    @GetMapping("/getUser/{userId}")
    public RespObj getUser(@PathVariable("userId")String userId){
        return userService.getUser(userId);
    }
}
