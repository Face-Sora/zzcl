package com.xinxi.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.xinxi.entity.Need;
import com.xinxi.entity.User;
import com.xinxi.service.INeedService;
import com.xinxi.service.IUserService;
import com.xinxi.service.impl.NeedServiceImpl;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.*;

import com.xinxi.controller.BaseController;

import java.sql.Wrapper;
import java.util.HashMap;
import java.util.List;

/**
 * <p>
 * 用户表 前端控制器
 * </p>
 *
 * @author jobob
 * @since 2020-07-22
 */
@Controller
@RequestMapping("/user")
public class UserController extends BaseController {

    @Autowired
    IUserService userService;

    @Autowired
    NeedServiceImpl needService;

    @GetMapping("/toRegister")
    public String toRegister(){return "sigin";}

    /***
     * 注册方法
     *
     */
    @PostMapping("/register")
    @ResponseBody
    public String register(User user) {
        System.out.println(user);
        String s = DigestUtils.md5DigestAsHex(user.getPwd().getBytes());

        user.setPwd(s);
        String phone = user.getPhone();
        String email = user.getEmail();
        QueryWrapper<User> qw = new QueryWrapper<>();
        qw.eq("phone",phone).or().eq("email",email);
        List<User> users = userService.list(qw);

        if (users.size() > 0){
            return "该手机号或邮箱已被注册，请重新选择！";
        }else {
            user.setDelCode(1);
            userService.save(user);
        }
        return "success";
    }

    @ResponseBody
    @RequestMapping("/selectByPhone")
    public String selectByPhone(String phone){
        System.out.println(".................");
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("phone", phone);
        User one = userService.getOne(queryWrapper);
        System.out.println(one);
        if (one!=null){
            return "手机已被注册！";
        } else {
            return null;
        }
    }

    @RequestMapping("/checkLogin")
    @ResponseBody
    public String checkLogin(){
        String name = (String) SecurityUtils.getSubject().getPrincipal();

        if (name == null){
            return "";
        }
        return "success";
    }

    @GetMapping("/tozone")
    public String toZone(ModelMap model){
        String phone = (String) SecurityUtils.getSubject().getPrincipal();
        if (phone == null){
            return "login";
        }
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("phone",phone);
        User one = userService.getOne(queryWrapper);
        List<Need> needs = needService.findByUserId(one.getId());
        model.addAttribute("needs",needs);

        List<Need> doNeeds = needService.findByWorkerId(one.getId());
        model.addAttribute("code",1);
        model.addAttribute("doneeds",doNeeds);
        return "zone";
    }

    @GetMapping("/resetPwd")
    public String toResetPwd(){return "resetPwd";}

    @PostMapping("/resetPwd")
    @ResponseBody
    public String resetPwd(String phone, String password){
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("phone",phone);
        User user = userService.getOne(queryWrapper);
        System.out.println(user);
        if (user == null){
            return "该手机号尚未注册！";
        }else{
        password = DigestUtils.md5DigestAsHex(password.getBytes());
        user.setPwd(password);
        userService.updateById(user);
        return "success";
        }
    }

    @GetMapping("/getAll")
    public String getAll(ModelMap model){
        QueryWrapper<User> uqw = new QueryWrapper<>();
        uqw.eq("tendency",1);
        List<User> aUsers = userService.list(uqw);
        uqw.eq("tendency",2);
        List<User> bUsers = userService.list(uqw);
        model.addAttribute("ausers",aUsers);
        model.addAttribute("busers",bUsers);
        return "users";
    }

    @PostMapping("/updateStatus")
    @ResponseBody
    public String updateStatus(String userId,Integer delCode){
        System.out.println(userId + " " + delCode);
        Long id = Long.valueOf(userId);
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("id",id);
        User user = userService.getOne(queryWrapper);
        user.setDelCode(delCode);
        userService.updateById(user);
        return "ok";
    }
}
