package cn.ndky.webtextile.config;


import cn.ndky.webtextile.mapper.UserMapper;
import cn.ndky.webtextile.pojo.User;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

public class UserRealm extends AuthorizingRealm {

    @Autowired
    private UserMapper userMapper;

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principal) {
        SimpleAuthorizationInfo info = null;
        User user = (User) principal.getPrimaryPrincipal();
        if(user != null){
            info = new SimpleAuthorizationInfo();
            info.addRole(user.getRoleId());
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


            info = new SimpleAuthenticationInfo(user,user.getPassword(), ByteSource.Util.bytes(user.getUserId()),getName());
        }

        return info;
    }
}
