package com.xinxi;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.xinxi.entity.Need;
import com.xinxi.entity.User;
import com.xinxi.service.INeedService;
import com.xinxi.service.IUserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.util.DigestUtils;

import java.util.List;
import java.util.Map;

@RunWith(SpringRunner.class)
@SpringBootTest
public class XinxiApplicationTests {
    @Test
    public void contextLoads() {
        String s = DigestUtils.md5DigestAsHex("112233".getBytes());
        System.out.println(s);
    }

}
