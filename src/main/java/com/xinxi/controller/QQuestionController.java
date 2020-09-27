package com.xinxi.controller;


import com.xinxi.entity.*;
import com.xinxi.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.xinxi.controller.BaseController;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author jobob
 * @since 2020-09-22
 */
@Controller
@RequestMapping("/question")
public class QQuestionController extends BaseController {

    @Autowired
    IQQuestionService questionService;
    @Autowired
    IQQuestionCompanydefectService questionCompanydefectService;
    @Autowired
    IQQuestionIntellectualPropertyService questionIntellectualPropertyService;
    @Autowired
    IQServiceDefectService iqServiceDefectService;
    @Autowired
    IQQuestionLocanschannelService questionLocanschannelService;
    @Autowired
    IQQuestionPolicyService questionPolicyService;
    @Autowired
    IQQuestionTrainService questionTrainService;
    @Autowired
    IQQuestionServicedefectService questionServicedefectService;

    @ResponseBody
    @PostMapping("/save")
    public String save(QQuestion question, @RequestParam(value="companyDefect[]") int[] companyDefect,
                       @RequestParam(value="intellectualProperty[]")int[] intellectualProperty,
                       @RequestParam(value="locansChannel[]")int[] locansChannel,
                       @RequestParam(value="policy[]") int[] policy,
                       @RequestParam(value="serviceDefect[]")int[] serviceDefect,
                       @RequestParam(value="train[]")int[] train){

        questionService.save(question);
        System.out.println(question.getId());
        int questionId = question.getId();
        System.out.println(companyDefect);
        for (int cd:companyDefect) {
            QQuestionCompanydefect qQuestionCompanydefect = new QQuestionCompanydefect();
            qQuestionCompanydefect.setCompanyDefectId(cd);
            qQuestionCompanydefect.setQuestionId(questionId);
            questionCompanydefectService.save(qQuestionCompanydefect);
        }
        for (int ip:intellectualProperty) {
            QQuestionIntellectualProperty qQuestionIntellectualProperty = new QQuestionIntellectualProperty();
            qQuestionIntellectualProperty.setIntellectualPropertyId(ip);
            qQuestionIntellectualProperty.setQuestionId(questionId);
            questionIntellectualPropertyService.save(qQuestionIntellectualProperty);
        }
        for (int lc:locansChannel) {
            QQuestionLocanschannel qQuestionLocanschannel = new QQuestionLocanschannel();
            qQuestionLocanschannel.setQuestionId(questionId);
            qQuestionLocanschannel.setLocansChannelId(lc);
            questionLocanschannelService.save(qQuestionLocanschannel);
        }
        for (int po:policy) {
            QQuestionPolicy qQuestionPolicy = new QQuestionPolicy();
            qQuestionPolicy.setPolicyId(po);
            qQuestionPolicy.setQuestionId(questionId);
            questionPolicyService.save(qQuestionPolicy);
        }
        for (int sd:serviceDefect) {
            QQuestionServicedefect qQuestionServicedefect = new QQuestionServicedefect();
            qQuestionServicedefect.setQuestionId(questionId);
            qQuestionServicedefect.setServiceDefectId(sd);
            questionServicedefectService.save(qQuestionServicedefect);
        }
        for (int tr:train) {
            QQuestionTrain qQuestionTrain = new QQuestionTrain();
            qQuestionTrain.setQuestionId(questionId);
            qQuestionTrain.setTrainId(tr);
            questionTrainService.save(qQuestionTrain);
        }


        return "ok";
    }
}
