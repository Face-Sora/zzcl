package com.xinxi.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.xinxi.entity.Need;
import com.xinxi.entity.NeedType;
import com.xinxi.entity.User;
import com.xinxi.service.INeedService;
import com.xinxi.service.INeedTypeService;
import com.xinxi.service.IUserService;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import com.xinxi.controller.BaseController;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * <p>
 * 需求表 前端控制器
 * </p>
 *
 * @author jobob
 * @since 2020-07-22
 */
@Controller
@RequestMapping("/need")
public class NeedController extends BaseController {

    @Autowired
    INeedService iNeedService;

    @Autowired
    INeedTypeService iNeedTypeService;

    @Autowired
    IUserService iUserService;

    @RequestMapping("/showAll")
    public String showAll(Model model){
        List<Need> needs = iNeedService.list();
        model.addAttribute("needs",needs);
        return "projectType";
    }

    @GetMapping("/nNeeds")
    public String nNeeds(int pageNum,int pageSize,ModelMap model){
        Page<Need> nNeeds = iNeedService.findNNeeds(pageNum, pageSize);
        model.addAttribute("nNeeds",nNeeds);
        model.addAttribute("pages",nNeeds.getPages());
        return "n-needs";
    }

    @GetMapping("/yNeeds")
    public String yNeeds(int pageNum,int pageSize,ModelMap model){
        Page<Need> yNeeds = iNeedService.findYNeeds(pageNum, pageSize);
        model.addAttribute("yNeeds",yNeeds);
        model.addAttribute("pages",yNeeds.getPages());
        return "y-needs";
    }

    @RequestMapping("/delete")
    @ResponseBody
    public String delete(Long needId){
        iNeedService.removeById(needId);
        return "ok";
    }

    @GetMapping("/toPublish")
    public String toPublish(ModelMap model,int pageNum, int pageSize){
        List<NeedType> types = iNeedTypeService.list();
        model.addAttribute("needTypes",types);

        Page<Need> needs = iNeedService.listToPage(pageNum, pageSize);
        model.addAttribute("needs",needs);

        long pages = needs.getPages();
        model.addAttribute("pages",pages);
        model.addAttribute("code", 4);
        return "publish";}

    @GetMapping("/needList")
    public String toNeedList(ModelMap model,int pageNum, int pageSize, Long classify){

        List<NeedType> types = iNeedTypeService.list();
        model.addAttribute("needTypes",types);

        Page<Need> needs = iNeedService.findByClassifyToPage(pageNum, pageSize, classify);

        model.addAttribute("pages",needs.getPages());
        model.addAttribute("needs",needs);
        model.addAttribute("classify",classify);
        model.addAttribute("code", 3);
        model.addAttribute("activeCode", classify);
        return "needList3";
    }

    @GetMapping("/findByTypeName")
    public String findByType(String needName, ModelMap model){
        HashMap<String, String> map = new HashMap<>();
        System.out.println(needName);
        QueryWrapper<NeedType> qw = new QueryWrapper<>();
        qw.like("name",needName);
        NeedType needType = iNeedTypeService.getOne(qw);
        QueryWrapper<Need> nqw = new QueryWrapper<>();
        nqw.eq("classify",needType.getId());
        nqw.eq("status",'y');
        List<Need> needs = iNeedService.list(nqw);
        for (Need need:needs) {
            Long userId = need.getUserId();
            QueryWrapper<User> uqw = new QueryWrapper<>();
            uqw.eq("id",userId);
            User user = iUserService.getOne(uqw);
            need.setUser(user);
        }
        model.addAttribute("type",needName);
        model.addAttribute("needs",needs);
        return "needList";
    }

    @GetMapping("/findByClassify")
    @ResponseBody
    public Page<Need> findByClassify(int pageNum, int pageSize, Long classifyId){
        Page<Need> needs = iNeedService.findByClassifyToPage(pageNum, pageSize, classifyId);
        System.out.println(needs.getRecords());
        return needs;
    }

    @RequestMapping("/findByKey")
    public String findByName(String key,ModelMap model){
        QueryWrapper<Need> needQueryWrapper = new QueryWrapper<>();
        needQueryWrapper.eq("status",'y');
        needQueryWrapper.like("title",key).or().like("description",key);
        List<Need> needs = iNeedService.list(needQueryWrapper);
        for (Need need:needs) {
            Long userId = need.getUserId();
            QueryWrapper<User> qw = new QueryWrapper<>();
            qw.eq("id",userId);
            User user = iUserService.getOne(qw);
            need.setUser(user);
        }
        model.addAttribute("type",key + "相关的");
        model.addAttribute("needs",needs);
        return "needList";
    }

    @RequestMapping("/findByUserId")
    public String findByUser(Long userId,ModelMap model){

        QueryWrapper<Need> needQueryWrapper = new QueryWrapper<>();
        needQueryWrapper.eq("user_id",userId);
        List<Need> needs = iNeedService.list(needQueryWrapper);

        QueryWrapper<User> uqw = new QueryWrapper<>();
        uqw.eq("id",userId);
        User user = iUserService.getOne(uqw);

        for (Need need:needs) {
            need.setUser(user);
        }
        model.addAttribute("type","您发布过的");
        model.addAttribute("needs",needs);
        return "needList";
    }

    @PostMapping("/saveNeed")
    @ResponseBody
    public Map<String,Object> save(Need need){
        HashMap<String, Object> map = new HashMap<>();

        String phone = (String) SecurityUtils.getSubject().getPrincipal();
        if (phone == null){
            map.put("error","notLogin");
            return map;
        }
        QueryWrapper<User> qw = new QueryWrapper<>();
        qw.eq("phone",phone);
        User user = iUserService.getOne(qw);
        Long id = user.getId();

        QueryWrapper<Need> nqw = new QueryWrapper<>();
        nqw.eq("title",need.getTitle());
        nqw.eq("description",need.getDescription());
        nqw.eq("user_id",id);
        List<Need> needs = iNeedService.list(nqw);

        if (needs.size() > 0){
            map.put("error","您已经发布过该需求，请勿重复发布！");
        }else{
            need.setUserId(id);
            need.setStatus('n');
            need.setProgress('w');
            iNeedService.save(need);
            map.put("success",true);
        }
        return map;
    }

    @PostMapping("/updateStatus")
    @ResponseBody
    public String updateStatus(Long needId,Character status){

        QueryWrapper<Need> needQueryWrapper = new QueryWrapper<>();
        needQueryWrapper.eq("id",needId);
        Need one = iNeedService.getOne(needQueryWrapper);
        one.setStatus(status);
        iNeedService.updateById(one);
        return "ok";
    }

    @PostMapping("/modifyDescAndDate")
    @ResponseBody
    public String modifyDescAndDate(Long needId, String desc, String begin, String finish) throws ParseException {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        QueryWrapper<Need> needQueryWrapper = new QueryWrapper<>();
        needQueryWrapper.eq("id",needId);
        Need one = iNeedService.getOne(needQueryWrapper);
        String description = one.getDescription();
        if (begin != null && finish != null) {
            if (begin != "" && finish != "") {
                Date beginDate = simpleDateFormat.parse(begin);
                Date finishDate = simpleDateFormat.parse(finish);
                one.setBeginTime(beginDate);
                one.setFinishTime(finishDate);
            } else if (begin != "" && finish == "") {
                Date beginDate = simpleDateFormat.parse(begin);
                one.setBeginTime(beginDate);
            } else if (begin == "" && finish != "") {
                Date finishDate = simpleDateFormat.parse(finish);
                one.setFinishTime(finishDate);
            }
        }
        one.setDescription(desc);
        iNeedService.updateById(one);
        return "修改成功！";
    }

    @PostMapping("/modifyDesc")
    @ResponseBody
    public String modifyDesc(Long needId, String desc) {
        QueryWrapper<Need> needQueryWrapper = new QueryWrapper<>();
        needQueryWrapper.eq("id",needId);
        Need one = iNeedService.getOne(needQueryWrapper);
        String description = one.getDescription();
        if (description.equals(desc)){
            return "未进行任何修改!";
        }
        one.setDescription(desc);
        iNeedService.updateById(one);
        return "修改成功！";
    }

    @PostMapping("/modify")
    @ResponseBody
    public String modify(Need need,Model model) {
        iNeedService.updateById(need);
        return "ok";
    }


    @PostMapping("/changeWorker")
    @ResponseBody
    public String changeWorker(String needId,String phone){

        QueryWrapper<Need> needQueryWrapper = new QueryWrapper<>();
        needQueryWrapper.eq("id",needId);
        Need need = iNeedService.getOne(needQueryWrapper);

        if (phone.equals("0")){
            need.setWorkerId(0L);
            need.setWorker(null);
            iNeedService.updateById(need);
            return "清除成功";
        }
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("phone",phone);
        User one = iUserService.getOne(queryWrapper);
        if (one == null){
            return "该手机号尚未注册！";
        }

        need.setWorkerId(one.getId());
        iNeedService.updateById(need);
        return "true";
    }
    @PostMapping("/updateProgress")
    @ResponseBody
    public String updateProgress(Long needId,Character progress){
        QueryWrapper<Need> needQueryWrapper = new QueryWrapper<>();
        needQueryWrapper.eq("id",needId);
        Need one = iNeedService.getOne(needQueryWrapper);
        one.setProgress(progress);
        iNeedService.updateById(one);
        if (progress == 'w'){
            return "未接单";
        }else if (progress == 'i'){
            return "进行中";
        }else {
            return "已完成";
        }
    }
}
