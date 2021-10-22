package com.app.recruiter.repository;

import com.app.recruiter.entity.Language;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LanguagesRepository extends JpaRepository <Language, Long> {


}
