package cn.ndky.webtextile.config;


import cn.ndky.webtextile.common.ShiroUser;
import cn.ndky.webtextile.mapper.UserMapper;
import cn.ndky.webtextile.pojo.User;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class UserRealm extends AuthorizingRealm {

    @Autowired
    private UserMapper userMapper;

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principal) {
        SimpleAuthorizationInfo info = null;
        ShiroUser shiroUser = (ShiroUser)principal.getPrimaryPrincipal();

        if(shiroUser != null){
            info = new SimpleAuthorizationInfo();
            List<String> roles = shiroUser.getRoles();
            info.addRoles(roles);
        }

        return info;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        SimpleAuthenticationInfo info = null;
        UsernamePasswordToken upToken = (UsernamePasswordToken)token;

        String userId = upToken.getUsername();
        User user = userMapper.getUserByUserId(userId);
        if(user!=null){

//            if(user.getStatus() == AccountStatus.LOCKED.getCode())
//                throw new LockedAccountException("账号被禁用,请联系教师或管理员!");

            ShiroUser shiroUser = new ShiroUser();
            shiroUser.setUser(user);
            shiroUser.setRoles(userMapper.getRoleIdsByUserId(userId));
            shiroUser.setRoleDesc(userMapper.getRoleNamesByUserId(userId));

            info = new SimpleAuthenticationInfo(shiroUser,user.getPassword(), ByteSource.Util.bytes(user.getUserId()),getName());
        }

        return info;
    }
}
