package com.xinxi.controller;


import com.xinxi.entity.LeaveMessage;
import com.xinxi.service.ILeaveMessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;
import com.xinxi.controller.BaseController;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author jobob
 * @since 2020-09-07
 */
@RestController
@RequestMapping("/message")
public class LeaveMessageController extends BaseController {

    @Autowired
    ILeaveMessageService messageService;


    @PostMapping("/save")
    public String save(LeaveMessage leaveMessage){
        messageService.save(leaveMessage);
        return "ok";
    }

}
