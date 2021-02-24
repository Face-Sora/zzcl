package com.xinxi.controller;


import com.alibaba.excel.EasyExcel;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.sun.org.apache.xpath.internal.operations.Bool;
import com.xinxi.entity.*;
import com.xinxi.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.swing.text.DateFormatter;
import java.io.File;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;
import java.time.temporal.TemporalAccessor;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

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
    IQCompanyDefectService companyDefectService;
    @Autowired
    IQQuestionIntellectualPropertyService questionIntellectualPropertyService;
    @Autowired
    IQIntellectualPropertyService intellectualPropertyService;
    @Autowired
    IQServiceDefectService iqServiceDefectService;
    @Autowired
    IQQuestionFinancingchannelService questionFinancingchannelService;
    @Autowired
    IQFinancingChannelService financingChannelService;
    @Autowired
    IQQuestionPolicyService questionPolicyService;
    @Autowired
    IQPolicyService policyService;
    @Autowired
    IQQuestionTrainService questionTrainService;
    @Autowired
    IQTrainService trainService;
    @Autowired
    IQQuestionServicedefectService questionServicedefectService;
    @Autowired
    IQServiceDefectService serviceDefectService;

    @GetMapping("/index")
    public String toIndex(ModelMap model){
        List<QQuestion> quetions = questionService.list();
        QueryWrapper<QQuestion> qQuestionQueryWrapper = new QueryWrapper<>();
        qQuestionQueryWrapper.eq("science",true);
        List<QQuestion> sCompany = questionService.list(qQuestionQueryWrapper);
        qQuestionQueryWrapper.clear();
        qQuestionQueryWrapper.eq("science",false);
        List<QQuestion> nosCompanyNum = questionService.list(qQuestionQueryWrapper);
        qQuestionQueryWrapper.clear();
        qQuestionQueryWrapper.ne("financing",0);
        List<QQuestion> financingCompany = questionService.list(qQuestionQueryWrapper);

        model.addAttribute("companyNum",quetions.size());
        model.addAttribute("sCompanyNum",sCompany.size());
        model.addAttribute("sCompany",sCompany);
        model.addAttribute("nosCompanyNum",nosCompanyNum.size());
        model.addAttribute("nosCompany",nosCompanyNum);
        model.addAttribute("finanCompany",financingCompany);

        return "dy-admin-index";
    }
    @ResponseBody
    @PostMapping("/save")
    public String save(QQuestion question, @RequestParam(value="companyDefect[]") int[] companyDefect,
                       @RequestParam(value="intellectualProperty[]")int[] intellectualProperty,
                       @RequestParam(value="financingChannel[]")int[] financingChannel,
                       @RequestParam(value="policy[]") int[] policy,
                       @RequestParam(value="serviceDefect[]")int[] serviceDefect,
                       @RequestParam(value="train[]")int[] train){

        questionService.save(question);
        int questionId = question.getId();
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
        for (int lc:financingChannel) {
            QQuestionFinancingchannel qQuestionFinancingchannel = new QQuestionFinancingchannel();
            qQuestionFinancingchannel.setQuestionId(questionId);
            qQuestionFinancingchannel.setFinancingChannelId(lc);
            questionFinancingchannelService.save(qQuestionFinancingchannel);
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

    @GetMapping("/all")
    public String findAll(Boolean science, Integer scale, Integer financing,
                          Integer locans, Boolean trainPay, int pageNum, int pageSize, Model model){
        Page<QQuestion> questions =
                questionService.findByPage(science, scale, financing, locans, trainPay, pageNum, pageSize);
        model.addAttribute("questions",questions);
        return "research";
    }

    @PostMapping("/export")
    @ResponseBody
    public String export(@RequestParam("ids") Integer[] ids){
        System.out.println(Arrays.toString(ids));
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd ss");
        String dateStr = sdf.format(date);
        File file = new File("C:\\企业数据导出\\"+dateStr+".xlsx") ;
        if (!file.getParentFile().exists()){
            file.getParentFile().mkdirs();
        }
        List<QQuestion> qQuestions = questionService.listByIds(Arrays.asList(ids));
        EasyExcel.write(file,QQuestion.class).sheet("企业数据表").doWrite(qQuestions);
        return "success";
    }

    @GetMapping("/detail")
    public String detail(Integer id, ModelMap model){
        QQuestion one = questionService.getById(id);

        QueryWrapper<QQuestionIntellectualProperty> qw = new QueryWrapper<>();
        qw.eq("question_id",id);
        List<QQuestionIntellectualProperty> list = questionIntellectualPropertyService.list(qw);
        one.setProperties(intellectualPropertyService.findIntellectualPropertyName(list));

        QueryWrapper<QQuestionPolicy> qQuestionPolicyQueryWrapper = new QueryWrapper<>();
        qQuestionPolicyQueryWrapper.eq("question_id",id);
        List<QQuestionPolicy> qps = questionPolicyService.list(qQuestionPolicyQueryWrapper);
        one.setPolicies(policyService.findNames(qps));

        QueryWrapper<QQuestionCompanydefect> qcdqw = new QueryWrapper<>();
        qcdqw.eq("question_id",id);
        ArrayList<String> companyDefects = new ArrayList<>();
        List<QQuestionCompanydefect> qcds = questionCompanydefectService.list(qcdqw);
        for (QQuestionCompanydefect qcd:qcds) {
            Integer companyDefectId = qcd.getCompanyDefectId();
            QCompanyDefect cd = companyDefectService.getById(companyDefectId);
            String defect = cd.getDefect();
            companyDefects.add(defect);
        }

        QueryWrapper<QQuestionFinancingchannel> qfcqw = new QueryWrapper<>();
        qfcqw.eq("question_id",id);
        ArrayList<String> financingChannels = new ArrayList<>();
        List<QQuestionFinancingchannel> qfcs = questionFinancingchannelService.list(qfcqw);
        for (QQuestionFinancingchannel qfc:qfcs) {
            Integer fcId = qfc.getFinancingChannelId();
            QFinancingChannel cd = financingChannelService.getById(fcId);
            String channel = cd.getChannel();
            financingChannels.add(channel);
        }

        QueryWrapper<QQuestionTrain> qtqw = new QueryWrapper<>();
        qtqw.eq("question_id",id);
        ArrayList<String> trains = new ArrayList<>();
        List<QQuestionTrain> qts = questionTrainService.list(qtqw);
        for (QQuestionTrain qt:qts) {
            Integer trainId = qt.getTrainId();
            QTrain qtrain = trainService.getById(trainId);
            String  train = qtrain.getTrain();
            trains.add(train);
        }

        QueryWrapper<QQuestionServicedefect> qsdqw = new QueryWrapper<>();
        qsdqw.eq("question_id",id);
        ArrayList<String> serviceDefects = new ArrayList<>();
        List<QQuestionServicedefect> qsds = questionServicedefectService.list(qsdqw);
        for (QQuestionServicedefect qsd:qsds) {
            Integer serviceDefectId = qsd.getServiceDefectId();
            QServiceDefect qServiceDefect = serviceDefectService.getById(serviceDefectId);
            String  serviceDefect = qServiceDefect.getServiceDefect();
            serviceDefects.add(serviceDefect);
        }
        model.addAttribute("company",one);
        model.addAttribute("conpanyDefects",companyDefects);
        model.addAttribute("channels",financingChannels);
        model.addAttribute("trains",trains);
        model.addAttribute("serviceDefects",serviceDefects);
        return "company";
    }

    @GetMapping("/data")
    public String toData(ModelMap model){
        List<QQuestion> companys = questionService.list();
        int s = 0;
        int ns = 0;
        for (QQuestion company:companys) {
            if (company.getScience()){
                s++;
            }else{
                ns++;
            }
        }
        model.addAttribute("scienceNum",s);
        model.addAttribute("notScienceNum",ns);
        return "data3";
    }

    @GetMapping("/allType")
    public String toAllType(){
        return "allType";
    }
}
