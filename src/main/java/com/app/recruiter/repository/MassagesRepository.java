package com.app.recruiter.repository;

import com.app.recruiter.entity.Candidate;
import com.app.recruiter.entity.Massages;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import javax.transaction.Transactional;

public interface MassagesRepository extends JpaRepository<Massages, Long> {


    @Modifying
    @Transactional
    @Query("update Massages m set m.candidate = :givenCandidate")
    void add(@Param("givenCandidate") Candidate candidate);
}
