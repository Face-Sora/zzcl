package com.xinxi;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.xinxi.mapper")
public class XinxiApplication {

    public static void main(String[] args) {
        SpringApplication.run(XinxiApplication.class, args);
    }

}
