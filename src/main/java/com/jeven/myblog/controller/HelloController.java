package com.jeven.myblog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Created by jeven on 2019/5/23.
 */
@Controller
public class HelloController {

    @GetMapping("/")
    public String index(){
        return "index";
    }

    }
