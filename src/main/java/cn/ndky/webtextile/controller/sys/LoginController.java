package cn.ndky.webtextile.controller.sys;

import cn.ndky.webtextile.common.RespObj;
import cn.ndky.webtextile.service.sys.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;

@RestController
public class LoginController {

    @Autowired
    private UserService userService;


    /**
     * @Description 登录
     * @date 2018年7月24日下午3:25:46
     */
    @PostMapping("/login")
    public RespObj login(String userId, String password, HttpSession session) {
        return userService.login(userId,password,session);
    }

    /**
     * @Description 退出
     * @date 2018年7月24日下午3:25:52
     */
    @RequestMapping("/logout")
    public RespObj logout() {
        return userService.logout();

    }


}
