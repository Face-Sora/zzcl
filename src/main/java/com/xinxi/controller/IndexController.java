package com.xinxi.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.xinxi.entity.Need;
import com.xinxi.entity.NeedType;
import com.xinxi.entity.User;
import com.xinxi.service.INeedService;
import com.xinxi.service.INeedTypeService;
import com.xinxi.service.IUserService;
import com.xinxi.service.impl.NeedTypeServiceImpl;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.lang.reflect.Array;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

@Controller
public class IndexController extends BaseController{

    @Autowired
    INeedTypeService needTypeService;

    @Autowired
    INeedService needService;

    @Autowired
    IUserService userService;

    @RequestMapping("/")
    public String toMain(Model model){
        model.addAttribute("code", 1);
        return "index";
    }

    @GetMapping("/tologin")
    public String toLogin(Model model,String phone, String pwd){
        model.addAttribute("phone",phone);
        model.addAttribute("pwd",pwd);
        return "login";
    }

    @GetMapping("/getCheckCode")
    @ResponseBody
    public Integer getCheckCode(){
        int num = (int) ((Math.random() * 9 + 1) * 100000);
        return num;
    }


    /***
     * 点击登录按钮
     * @param
     * @param
     * @return
     */
    @PostMapping("/login")
    @ResponseBody
    public String login(String phone, String pwd){
        Subject subject = SecurityUtils.getSubject();
        pwd = DigestUtils.md5DigestAsHex(pwd.getBytes());
        UsernamePasswordToken token = new UsernamePasswordToken(phone, pwd);
        try{
           subject.login(token);
        }catch (Exception e){
            return e.getMessage();
        }
        return "success";
    }


    @GetMapping("/about")
    public String project(Model model){
        model.addAttribute("code", 2);
        return "about";
    }

    @RequestMapping("/towe")
    public String toWe(Model model){
        model.addAttribute("code", 5);
        return "we";}


    @GetMapping("/admin")
    public String admin(ModelMap model){
        String phone = (String) SecurityUtils.getSubject().getPrincipal();

        if (phone != null && phone.equals("110120119")){

            QueryWrapper<Need> nqw = new QueryWrapper<>();


            List<User> users = userService.list();

            nqw.eq("status","y");
            List<Need> needs = needService.list(nqw);
            for (Need need:needs) {
                Long userId = need.getUserId();
                Long workerId = need.getWorkerId();
                Character progress = need.getProgress();
                QueryWrapper<User> uqw = new QueryWrapper<>();
                uqw.eq("id",userId);
                User user = userService.getOne(uqw);
                need.setUser(user);
                uqw.clear();
                uqw.eq("id",workerId);
                User worker = userService.getOne(uqw);
                need.setWorker(worker);
                QueryWrapper<NeedType> qw = new QueryWrapper<>();
                qw.eq("id",need.getClassify());
                NeedType needType = needTypeService.getOne(qw);
                need.setNeedType(needType);
                if (progress != null){
                    if (progress == 'w'){
                        need.setProgressStr("未接单");
                    }else if (progress == 'i'){
                        need.setProgressStr("进行中");
                    }else if (progress == 'f'){
                        need.setProgressStr("已完成");
                    }
                } else {
                    need.setProgressStr("");
                }
            }

            nqw.clear();
            nqw.eq("status",'n');
            List<Need> lastNeeds = needService.list(nqw);
            for (Need need:lastNeeds) {
                Long userId = need.getUserId();
                QueryWrapper<User> uqw = new QueryWrapper<>();
                uqw.eq("id",userId);
                User user = userService.getOne(uqw);
                need.setUser(user);
                QueryWrapper<NeedType> qw = new QueryWrapper<>();
                qw.eq("id",need.getClassify());
                NeedType needType = needTypeService.getOne(qw);
                need.setNeedType(needType);
            }

            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
            String today = simpleDateFormat.format(new Date());
            ArrayList<User> lastUsers = new ArrayList<>();
            for (User user:users) {
                if (simpleDateFormat.format(user.getCreateTime()).equals(today)){
                    lastUsers.add(user);
                }
            }


            model.addAttribute("totalusernum",users.size());
            model.addAttribute("totalneednum",needs.size());
            model.addAttribute("lastusernum",lastUsers.size());
            model.addAttribute("lastneednum",lastNeeds.size());

            model.addAttribute("totalusers",users);
            model.addAttribute("totalneeds",needs);
            model.addAttribute("lastusers",lastUsers);
            model.addAttribute("lastneeds",lastNeeds);
            return "admin";
        }


        return "login";
    }

}
