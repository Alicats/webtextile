package cn.ndky.webtextile.controller;

import cn.ndky.webtextile.pojo.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class LoginController {

    /**
     * @Description 登录
     * @date 2018年7月24日下午3:25:46
     */
    @RequestMapping("/login")
    public String loginAdmin(String username, String password, HttpSession session) {
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken usernamePasswordToken = new UsernamePasswordToken(username, password);
        try {
            subject.login(usernamePasswordToken); // 完成登录
            User user = (User) subject.getPrincipal();
            session.setAttribute("user", user);
            return "redirect:/index";
        } catch (Exception e) {
            return "redirect:/welcome";// 返回登录页面
        }
    }

    /**
     * @Description 退出
     * @date 2018年7月24日下午3:25:52
     */
    @RequestMapping("/logOut")
    public String logOut(HttpSession session) {
        Subject subject = SecurityUtils.getSubject();
        subject.logout();
        return "login";
    }


}
