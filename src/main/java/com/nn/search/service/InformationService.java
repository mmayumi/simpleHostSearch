package com.nn.search.service;

import com.nn.search.domain.Information;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public interface InformationService {
    List<Information> match(String word);

    void importNews();

    //每搜索一次，给排行榜值+1
     Double record(String word);

    List<Map<String, Object>> searchRank();

    List<Information> search (String word);

}
