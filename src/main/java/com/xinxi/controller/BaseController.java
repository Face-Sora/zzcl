package com.xinxi.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class BaseController {
    @Autowired
    HttpServletRequest req;

    protected Logger log = LoggerFactory.getLogger(getClass());

}
