package com.app.recruiter.controller;

import com.app.recruiter.dao.CandidateDao;
import com.app.recruiter.entity.*;
import com.app.recruiter.repository.CandidateRepository;
import com.app.recruiter.repository.LanguagesRepository;
import com.app.recruiter.repository.MassagesRepository;
import com.app.recruiter.repository.ProjectRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class CandidateController {

    private final CandidateRepository candidateRepository;
    private final CandidateDao candidateDao;
    private final LanguagesRepository languagesRepository;
    private final ProjectRepository projectRepository;
    private final MassagesRepository massagesRepository;



    public CandidateController(CandidateRepository candidateRepository, CandidateDao candidateDao, LanguagesRepository languagesRepository, ProjectRepository projectRepository, MassagesRepository massagesRepository) {
        this.candidateRepository = candidateRepository;
        this.candidateDao = candidateDao;
        this.languagesRepository = languagesRepository;
        this.projectRepository = projectRepository;
        this.massagesRepository = massagesRepository;

    }

    @ModelAttribute("languagesList")
    public List<Language> languagesList() {
        return languagesRepository.findAll();
    }

    @ModelAttribute("allList")
    public List<Project> projectList() {
        return projectRepository.findAll();
    }

    @GetMapping("/candidate/list")
    public String projectList(Model model) {
        List<Candidate> allCandidate = candidateRepository.findAll();
        model.addAttribute("candidateList", allCandidate);
        return "candidateList";
    }

    @GetMapping("/candidate/add")
    public String candidateAdd(Model model) {
        model.addAttribute("candidate", new Candidate());
        return "candidateEdit";
    }

    @PostMapping("/candidate/add")
    public String candidateAdd(Candidate candidate) {
        candidateDao.create(candidate);
        return "redirect:/candidate/list";
    }

    @GetMapping("/candidate/edit")
    public String candidateEdit(@RequestParam Long idToEdit, Model model) {
        model.addAttribute("candidate", candidateRepository.getById(idToEdit));
        return "candidateEdit";
    }

    @PostMapping("/candidate/edit")
    public String projectEdit(Candidate candidate) {
        candidateDao.edit(candidate);
        return "redirect:/candidate/list";
    }

    @GetMapping("/candidate/delete")
    public String projectDelete(@RequestParam Long idToDelete) {
        candidateRepository.delete(candidateRepository.getById(idToDelete));
        return "redirect:/candidate/list";
    }

    @GetMapping("/candidate/addToProject")
    public String addToProject(@RequestParam Long idToAdd, HttpServletRequest request) {
        request.setAttribute("idToAdd", idToAdd);
        return "addToProject";
    }

    @GetMapping("/candidate/addToProjectPost")
    public String addToProject(@RequestParam Long idProject, @RequestParam Long idToAdd) {

        Candidate candidate = candidateRepository.getById(idToAdd);
        List<Project> candidateProjectList = candidate.getProjectList();
        Project project = projectRepository.getById(idProject);
        List<Project> list = new ArrayList<>();
        if (!candidateProjectList.isEmpty()) {
            for (Project item : candidateProjectList) {
                list.add(item);
                if (!project.equals(item)) {
                    list.add(project);
                }
            }
        } else {
            list.add(projectRepository.getById(idProject));
        }
        candidate.setProjectList(list);
        candidateDao.edit(candidate);
        return "redirect:/candidate/list";

    }

    @GetMapping("/candidate/deleteFromProject")
    public String deleteFromProject(Model model, @RequestParam Long idToRemove, HttpServletRequest request) {
        Candidate byId = candidateRepository.getById(idToRemove);
        List<Project> projectList = byId.getProjectList();
        HttpSession session = request.getSession();
        Long id = (Long) session.getAttribute("projectId");
        projectList.remove(projectRepository.getById(id));
        byId.setProjectList(projectList);
        candidateDao.edit(byId);
        session.invalidate();

        return "redirect:/project/candidate/list?projectId=" + id;
    }

    @GetMapping("/candidate/massages/list")
    public String candidateMassagesList(@RequestParam Long candidateId, Model model, HttpServletRequest request){
        Candidate candidate = candidateRepository.getById(candidateId);
        model.addAttribute("massages",candidate.getMassages());
        request.setAttribute("candidateId", candidateId);
        return "massageList";
    }
    @GetMapping("/candidate/addMassage")
    public String addMassage(@RequestParam Long candidateId, HttpServletRequest request, Model model) {
        request.setAttribute("candidateId", candidateId);
        model.addAttribute("massage", new Massages());
        return "addMassage";
    }

    @PostMapping("/candidate/addMassage")
    public String addMassage(@RequestParam Long candidateId, Massages massage, HttpServletRequest request) {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("loggedUser");
        Candidate candidate = candidateRepository.getById(candidateId);
        List<Massages> candidateMassagesList = candidate.getMassages();
        List<Massages> list = new ArrayList<>();
        Date data = java.sql.Date.valueOf(LocalDate.now());
        massage.setDate(data);
        massage.setUsername(user.getUsername());
        if (!candidateMassagesList.isEmpty()) {
            for (Massages item : candidateMassagesList) {
                list.add(item);
            }
                list.add(massage);

        } else {
            list.add(massage);
        }
        candidateRepository.getById(candidateId).setMassages(list);
        massagesRepository.add(candidate);
        return "redirect:/candidate/massages/list?candidateId="+candidateId;
    }
    @GetMapping("/candidate/view")
    public String projectView(@RequestParam Long candidateId, Model model){
        model.addAttribute("candidate", candidateRepository.getById(candidateId));
        return "candidateView";
    }
    @GetMapping("/candidate/save")
    public String projectSave(@RequestParam Long candidateId) throws FileNotFoundException {
        Candidate candidate = candidateRepository.getById(candidateId);
        PrintWriter printWriter = new PrintWriter("candidate"+candidateId+".txt");
        printWriter.println("Imię: "+candidate.getFirstName());
        printWriter.println("Nazwisko: "+candidate.getLastName());
        printWriter.println("Data urodzenia: "+candidate.getBirthDate());
        printWriter.println("E-mail: "+candidate.getEmail());
        printWriter.println("Numer telefonu: "+candidate.getPhone());
        printWriter.println("Status: "+candidate.getStatus());
        printWriter.close();
        return"redirect:/candidate/view?candidateId="+candidateId;
    }

}
