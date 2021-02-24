package com.xinxi.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.xinxi.entity.LeaveMessage;
import com.xinxi.entity.Need;
import com.xinxi.entity.User;
import com.xinxi.service.ILeaveMessageService;
import com.xinxi.service.INeedService;
import com.xinxi.service.IUserService;
import com.xinxi.service.impl.NeedServiceImpl;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.*;

import com.xinxi.controller.BaseController;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
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

    @Autowired
    ILeaveMessageService iLeaveMessageService;

    @GetMapping("/toRegister")
    public String toRegister(){return "sigin";}

    /***
     * 注册方法
     *
     */
    @PostMapping("/register")
    @ResponseBody
    public String register(User user, @RequestParam(value = "license",required = false)MultipartFile file) {
        System.out.println(user);
        String pwd = DigestUtils.md5DigestAsHex(user.getPwd().getBytes());
        user.setPwd(pwd);
        List<User> users = userService.list(new QueryWrapper<User>().eq("phone",user.getPhone()).or().eq("email",user.getEmail()));

        if (users.size() > 0){
            return "该手机号或邮箱已被注册，请重新选择！";
        }else {
            user.setDelCode(1);
            userService.save(user);
        }
        if (file != null){
            String filePath = "C:\\licenses\\";
            String fileName = user.getPhone() + ".jpg";
            File file1 = new File(filePath + fileName);
            if (!file1.getParentFile().exists())
                file1.getParentFile().mkdirs();
            try {
                file.transferTo(file1);
            }catch (Exception e){
                e.printStackTrace();
            }
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

    @RequiresRoles("admin")
    @GetMapping("/lastUsers")
    public String lastUsers(int pageNum,int pageSize,ModelMap modelMap){
        Page<User> lastUsers = userService.findLastUsers(pageNum, pageSize);
        modelMap.addAttribute("lastUsers",lastUsers);
        modelMap.addAttribute("pages",lastUsers.getPages());
        return "last-users";
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
        log.warn("id === ",one.getId());
        List<Need> needs = needService.findByUserId(one.getId());
        model.addAttribute("needs",needs);

        List<Need> doNeeds = needService.findByWorkerId(one.getId());
        model.addAttribute("code",1);
        model.addAttribute("doneeds",doNeeds);
        model.addAttribute("user",one);
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

    @RequiresRoles("admin")
    @GetMapping("/allUsers")
    public String getAll(ModelMap model,int pageNum,int pageSize){
        Page<User> users = userService.page(new Page<User>(pageNum, pageSize));
        model.addAttribute("allUsers",users);
        model.addAttribute("pages",users.getPages());
        return "allUsers";
    }

    @RequiresRoles("admin")
    @GetMapping("/leaveMessages")
    public String getLeaveMessages(ModelMap model,int pageNum,int pageSize){
        Page<LeaveMessage> messages = iLeaveMessageService.page(new Page<LeaveMessage>(pageNum, pageSize));
        model.addAttribute("leaveMessages",messages);
        model.addAttribute("pages",messages.getPages());
        return "leaveMessages";
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

    @PostMapping("/modify")
    @ResponseBody
    public String modifyUser(User user){
        String phone = user.getPhone();
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("phone",phone);
        List<User> users = userService.list(queryWrapper);
        if (users.size() > 0){
            return "该手机号已被注册！";
        }else{
            userService.updateById(user);
            return "success";
        }
    }

}
