package com.nn.search.job;

import com.nn.search.service.InformationService;
import com.nn.search.service.InformationServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
public class NewJob {
    private static final Logger  Log = LoggerFactory.getLogger(InformationServiceImpl.class);

    @Autowired
    InformationService informationService;

    @Scheduled(cron = "0 0/10 * * * ?")
    public void run(){
        Log.info("====开始爬取数据===");
        informationService.importNews();
        Log.info("===结束爬取内容定时任务==");
    }
}
