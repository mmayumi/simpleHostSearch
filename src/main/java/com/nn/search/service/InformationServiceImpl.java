package com.nn.search.service;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.nn.search.dao.InformationDao;
import com.nn.search.domain.Information;
import com.nn.search.utils.http.HttpClientUtil;
import com.nn.search.utils.http.HttpResult;
import com.nn.search.utils.redis.RedisUtil;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.ZSetOperations;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.DigestUtils;

import java.util.*;


@Service
@Transactional
public class InformationServiceImpl implements InformationService{
    private static final Logger LOG = LoggerFactory.getLogger(InformationServiceImpl.class);

    @Autowired
    InformationDao informationDao;

    @Autowired
    HttpClientUtil httpClient;

    @Autowired
    RedisUtil redisUtil;

    private static final String URL = "https://news.baidu.com/widget?id=LocalNews&ajax=json";

    @Override
    public List<Information> search(String word) {
        if(StringUtils.isNotBlank(word)){
            record(word);
            return informationDao.match(word);
        }
        return new ArrayList<Information>();
    }

    @Override
    public void importNews() {
        LOG.info("===[开始调用爬取内容方法]===");
        try {
            HttpResult result = httpClient.doPost(URL);
            if (200 == result.getCode()) {
                JSONObject vo = JSON.parseObject(result.getBody());
                JSONArray arr = vo.getJSONObject("data").getJSONObject("LocalNews")
                        .getJSONObject("data").getJSONObject("rows").getJSONArray("first");
                Date date = new Date();
                for (int i = 0; i < arr.size(); i++) {
                    JSONObject o = arr.getJSONObject(i);
                    Information info = new Information();
                    info.setInfoSrc("bd");
                    info.setInfoImage(o.getString("imgUrl"));
                    info.setInfoText(o.getString("title"));
                    info.setInfoUrl(o.getString("url"));
                    info.setTime(o.getString("time"));
                    info.setSingleTag(DigestUtils.md5DigestAsHex(o.getString("title").getBytes()));
                    info.setCreateTime(date);
                    info.setUpdateTime(date);
                    informationDao.insertIfNotExist(info);
                    LOG.info("返回抓取信息的主键id:{}",info.getId());
                }
            }
        } catch (Exception e) {
            LOG.error("爬取内容方法异常：excp={}", e);
        }
        LOG.info("===[结束调用爬取内容方法]===");
    }

    @Override
    public Double record(String word) {
        try {
            return redisUtil.zincrby("NEWS_SEARCH:", word, 1);
        }catch (Exception e){
            LOG.error("===[记录热搜词时出现异常：excp={}]===", e);
        }
        return 0D;

    }

    @Override
    public List<Map<String, Object>> searchRank() {
        List<Map<String,Object>> list =new ArrayList<>();
        Set<ZSetOperations.TypedTuple<Object>> set = redisUtil.zrevrangeByScoreWithScores("NEWS_SEARCH:", 0D, 10000D);

        int i =1;

        for(ZSetOperations.TypedTuple t: set){
            try {
                HashMap<String,Object> hashMap =new HashMap<>();
                hashMap.put("word",t.getValue());
                hashMap.put("num",t.getScore());
                hashMap.put("rank",i);
                list .add(hashMap);
                i++;
            } catch (Exception e) {
                LOG.error("记录热搜搜索词发生错误");
            }

        }

        return list;
    }

    @Override
    public List<Information> match(String word) {
        List<Information> list = informationDao.match(word);
        record(word);
        return list;
    }
}
