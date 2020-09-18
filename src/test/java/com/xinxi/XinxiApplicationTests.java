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

import java.io.*;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

@RunWith(SpringRunner.class)
@SpringBootTest
public class XinxiApplicationTests {
    @Test
    public void contextLoads() throws IOException {
        File file = new File("D:\\tomcat\\logs\\access_log.2020-09-16.log");

    }
    @Test
    public void logTest() throws IOException {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String today = dateFormat.format(new Date());

        File file = new File("D:\\tomcat\\logs");
        File[] files = file.listFiles(new FilenameFilter() {
            @Override
            public boolean accept(File dir, String name) {
                System.out.println(name);
                if (name.indexOf(today) != -1)
                    return true;
                return false;
            }
        });
        FileReader fileReader = new FileReader(files[0].getAbsolutePath());
        BufferedReader bufferedReader = new BufferedReader(fileReader);
        HashSet<String> strings = new HashSet<>();
        String str;
        while ((str = bufferedReader.readLine()) != null){
            str = str.substring(0,str.indexOf(" "));
            strings.add(str);
        }
        System.out.println(strings.size());

    }

}
