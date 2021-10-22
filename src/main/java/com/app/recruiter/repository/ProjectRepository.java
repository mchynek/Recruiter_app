package com.app.recruiter.repository;

import com.app.recruiter.entity.Candidate;
import com.app.recruiter.entity.Project;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProjectRepository extends JpaRepository<Project,Long> {

    @Query(value = "select * from project order by start desc limit 7" , nativeQuery = true)
    List<Project> findFirstSeven();

    List<Project> findByStatus(String status);


}
