package cn.ndky.webtextile;

import cn.ndky.webtextile.config.ShiroConfig;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;

@SpringBootApplication
@MapperScan("cn.ndky.webtextile.mapper")
public class WebtextileApplication {

    public static void main(String[] args) {
        SpringApplication.run(WebtextileApplication.class, args);
    }

}
