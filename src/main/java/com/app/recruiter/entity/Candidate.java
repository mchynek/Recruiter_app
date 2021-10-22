package com.app.recruiter.entity;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


@Entity
@Table(name= "candidate")
public class Candidate {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String firstName;

    private String lastName;

    private String email;

    private String phone;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date birthDate;

    private String company;

    private String position;

    @ManyToMany
    private List<Language> language;

    private String education;

    private boolean consentProject;

    private boolean consentFuture;

    @OneToMany(mappedBy = "candidate", cascade = CascadeType.ALL)
    private List<Massages> massages;

    private String status;


    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date registration;


    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date edition;

    @ManyToMany
    private List<Project> projectList;

    public Candidate() {

    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public List<Language> getLanguage() {
        return language;
    }

    public void setLanguage(List<Language> languages) {
        this.language = languages;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public boolean isConsentProject() {
        return consentProject;
    }

    public void setConsentProject(boolean consentProject) {
        this.consentProject = consentProject;
    }

    public boolean isConsentFuture() {
        return consentFuture;
    }

    public void setConsentFuture(boolean consentFuture) {
        this.consentFuture = consentFuture;
    }

    public List<Massages> getMassages() {
        return massages;
    }

    public void setMassages(List<Massages> massages) {
        this.massages = massages;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Date getRegistration() {
        return registration;
    }

    public void setRegistration(Date registration) {
        this.registration = registration;
    }

    public Date getEdition() {
        return edition;
    }

    public void setEdition(Date edition) {
        this.edition = edition;
    }

    public List<Project> getProjectList() {
        return projectList;
    }

    public void setProjectList(List<Project> projectList) {
        this.projectList = projectList;
    }
}
