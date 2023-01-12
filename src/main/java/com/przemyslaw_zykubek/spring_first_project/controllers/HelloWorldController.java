package com.przemyslaw_zykubek.spring_first_project.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloWorldController {
    @RequestMapping("/helloworld")
    public ModelAndView helloWorldPage() {
        return new ModelAndView ("helloWorld");
    }
}
