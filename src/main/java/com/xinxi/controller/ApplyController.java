package com.xinxi.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.xinxi.entity.Apply;
import com.xinxi.entity.User;
import com.xinxi.service.IApplyService;
import com.xinxi.service.IUserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import com.xinxi.controller.BaseController;

import javax.security.auth.Subject;
import java.util.HashMap;
import java.util.Map;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author jobob
 * @since 2020-09-11
 */
@RequiresRoles("admin")
@Controller
@RequestMapping("/apply")
public class ApplyController extends BaseController {

    @Autowired
    IApplyService iApplyService;

    @Autowired
    IUserService iUserService;

    @PostMapping("/save")
    @ResponseBody
    public Map<String,String> save(Integer needId){
        System.out.println(needId);
        HashMap<String, String> map = new HashMap<>();
        String phone = (String) SecurityUtils.getSubject().getPrincipal();
        if (phone != null){
            User user = iUserService.getOne(new QueryWrapper<User>().eq("phone", phone));
            Long id = user.getId();
            Apply apply = iApplyService.findByNeedIdAndApplicantId(needId, id);
            if (apply == null){
                Apply apply2 = new Apply();
                apply2.setApplicantId(id);
                apply2.setNeedId(needId);
                apply2.setApplicant(user);
                iApplyService.save(apply2);
                map.put("success","true");
                return map;
            }else{
                map.put("error","您已经申请过该项目，请勿重复申请!");
                return map;
            }
        }else{
            map.put("error","notLogin");
        }
        return map;
    }

    @PostMapping("/cancel")
    @ResponseBody
    public String cancel(int needId){
        String phone = (String) SecurityUtils.getSubject().getPrincipal();
        User user = iUserService.getOne(new QueryWrapper<User>().eq("phone", phone));
        Long id = user.getId();
        HashMap<String, Object> map = new HashMap<>();
        map.put("applicant_id",id);
        map.put("need_id",needId);
        iApplyService.removeByMap(map);
        return "ok";
    }

    @PostMapping("/delete")
    @ResponseBody
    public String delete(int applyId){
        QueryWrapper<Apply> applyQueryWrapper = new QueryWrapper<>();
        applyQueryWrapper.eq("id",applyId);
        boolean remove = iApplyService.remove(applyQueryWrapper);
        if (remove)
            return "success";
        else
            return "error";
    }

    @GetMapping("/applyList")
    public String toApplyList(int pageNum, int pageSize, ModelMap modelMap){
        Page applys = iApplyService.page(pageNum,pageSize);
        System.out.println(applys.getRecords());
        modelMap.addAttribute("applys",applys);
        modelMap.addAttribute("pages",applys.getPages());
        return "applys";
    }
}
