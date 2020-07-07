package cn.ndky.webtextile;

import org.apache.shiro.crypto.hash.SimpleHash;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class WebtextileApplicationTests {

    @Test
    void contextLoads() {

        String password = new SimpleHash("MD5","admin","admin",1024).toString();
        System.out.println("password "+password);
    }

}
