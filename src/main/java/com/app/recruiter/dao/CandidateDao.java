package com.app.recruiter.dao;

import com.app.recruiter.entity.Candidate;
import com.app.recruiter.entity.Project;
import org.hibernate.annotations.Cascade;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;

@Repository
@Transactional
public class CandidateDao {


    @PersistenceContext
    private EntityManager entityManager;

    public void create(Candidate candidate){
        Date date = java.sql.Date.valueOf(LocalDate.now());
        candidate.setRegistration(date);
        entityManager.persist(candidate);
    }
    public void edit(Candidate candidate){
        Date date = java.sql.Date.valueOf(LocalDate.now());
        candidate.setEdition(date);
        entityManager.merge(candidate);
    }
    public List<Project> projectList(Candidate candidate){
       return candidate.getProjectList();
    }

    public void addToProject(Candidate candidate){
        entityManager.merge(candidate);
    }

}
