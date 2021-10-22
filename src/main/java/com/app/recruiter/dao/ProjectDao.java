package com.app.recruiter.dao;

import com.app.recruiter.entity.Project;
import com.app.recruiter.entity.User;
import com.app.recruiter.repository.ProjectRepository;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.SessionAttribute;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;
import java.time.LocalDate;
import java.util.Date;

@Repository
@Transactional
public class ProjectDao {

    @PersistenceContext
    private EntityManager entityManager;

    public void create(Project project){
        if(project.getEnd()==null){
            project.setStatus("w toku");
        }
        entityManager.persist(project);
    }
    public void edit(Project project){
        entityManager.merge(project);
    }
    public void close(Project project){
        Date data = java.sql.Date.valueOf(LocalDate.now());
        project.setEnd(data);
        project.setStatus("zakończony");
        entityManager.merge(project);
    }
}
