package com.app.recruiter;

import com.app.recruiter.entity.Language;
import com.app.recruiter.repository.LanguagesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;

@Component
public class DataLoader {

    @Autowired
    private LanguagesRepository languagesRepository;

//    @PostConstruct
//    public void loadData() {
//
//        languagesRepository.save(new Language("angielski"));
//        languagesRepository.save(new Language("niemiecki"));
//        languagesRepository.save(new Language("francuski"));
//        languagesRepository.save(new Language("hiszpański"));
//        languagesRepository.save(new Language("rosyjski"));
//        languagesRepository.save(new Language("grecki"));
//    }


//    @PreDestroy
//    public void removeData() {
//        languagesRepository.deleteAll();
//    }
}