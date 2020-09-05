package com.xinxi.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.xinxi.entity.Demo;
import com.xinxi.entity.NeedType;
import com.xinxi.service.impl.NeedTypeServiceImpl;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import com.xinxi.controller.BaseController;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author jobob
 * @since 2020-07-22
 */
@Controller
@RequestMapping("/xinxi/needType")
public class NeedTypeController extends BaseController {

    @Autowired
    NeedTypeServiceImpl needTypeService;

    @GetMapping("/showAll")
    @ResponseBody
    public Map<String,Object> showAll(){
        HashMap<String, Object> map = new HashMap<>();
        String name = (String) SecurityUtils.getSubject().getPrincipal();

        if (name != null){
            QueryWrapper<NeedType> qw = new QueryWrapper<>();
            qw.ne("parent_id","");
            List<NeedType> list = needTypeService.list(qw);
            map.put("success",true);
            map.put("types",list);
        }else{
            map.put("error","请先登录后再次尝试！");
        }

        return map;
    }
}
