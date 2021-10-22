package com.app.recruiter.repository;

import com.app.recruiter.entity.Candidate;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;
import java.util.Optional;


@Repository
public interface CandidateRepository extends JpaRepository<Candidate, Long> {

    @Query(value = "select candidate.id, candidate.birth_date, candidate.company, candidate.consent_future, candidate.consent_project,\n" +
            "       candidate.edition, candidate.education,candidate.email,candidate.first_name, candidate.last_name,\n" +
            "       candidate.phone, candidate.position,candidate.registration, candidate.status \n" +
            "from candidate left outer join candidate_project_list cpl on candidate.id = cpl.candidate_id where cpl.project_list_id= :givenId group by candidate.id", nativeQuery = true)
    List<Candidate> findCandidateInProject(@Param("givenId") Long id);

}
