package com.nn.search.controller;

import com.nn.search.domain.Information;
import com.nn.search.service.InformationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@Controller

public class SearchController {

    @Autowired
    InformationService informationService;

    @RequestMapping("/api/search")
    @ResponseBody
    public List<Information> search(String word){
        return informationService.match(word);
    }
    @RequestMapping("/page/search")
    public String searchIndexPage(String word, Model model){
        model.addAttribute("word",word);
        model.addAttribute("list",informationService.match(word));

        return "kaifa";
    }

    @RequestMapping("/api/rank")
    @ResponseBody
    public List<Map<String,Object>>  searchRank(){

        return informationService.searchRank();
    }
    @RequestMapping("/page/rank")
    public  String searchRankPage(Model model){
        model.addAttribute("list",informationService.searchRank());
        return "rank";
    }

}
