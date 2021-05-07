package net.baghirzade.java.stratifytask.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("opportunities")
public class OpportunitiesController {

    @GetMapping
    public String aa(){
        return "aaa";
    }
}
