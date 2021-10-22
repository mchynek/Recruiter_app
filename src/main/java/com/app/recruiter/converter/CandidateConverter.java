package com.app.recruiter.converter;

import com.app.recruiter.entity.Candidate;

import com.app.recruiter.repository.CandidateRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;

import java.math.BigDecimal;

public class CandidateConverter implements Converter<BigDecimal, Candidate> {

    @Autowired
    private CandidateRepository candidate;

    @Override
    public Candidate convert(BigDecimal b){
        return candidate.getById(Long.parseLong(String.valueOf(b)));
    }
}
