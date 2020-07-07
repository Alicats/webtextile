package cn.ndky.webtextile.common;

import org.apache.shiro.crypto.hash.SimpleHash;

public class test {
    public static void main(String[] args) {
        String password = new SimpleHash("MD5","admin","admin",1024).toString();
        System.out.println("  "+password);
        System.out.println("df655ad8d3229f3269fad2a8bab59b6c");
        String oldpwd = "df655ad8d3229f3269fad2a8bab59b6c";
        if(oldpwd.equals(password)){
            System.out.println("相等");
        }

    }
}
