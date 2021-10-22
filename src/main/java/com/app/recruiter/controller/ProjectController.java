package com.app.recruiter.controller;

import com.app.recruiter.dao.ProjectDao;
import com.app.recruiter.entity.Candidate;
import com.app.recruiter.entity.Project;
import com.app.recruiter.entity.User;
import com.app.recruiter.repository.CandidateRepository;
import com.app.recruiter.repository.ProjectRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.List;

@Controller
public class ProjectController {

    private final ProjectDao projectDao;
    private final ProjectRepository projectRepository;
    private final CandidateRepository candidateRepository;

    public ProjectController(ProjectDao projectDao, ProjectRepository projectRepository, CandidateRepository candidateRepository) {
        this.projectDao = projectDao;
        this.projectRepository = projectRepository;
        this.candidateRepository = candidateRepository;
    }


    @GetMapping("/project/list")
    public String projectList(Model model){
        List<Project> allProjects= projectRepository.findAll();
        model.addAttribute("projectList", allProjects);
        return "projectList";
    }

    @GetMapping("/project/add")
    public String projectAdd (Model model){
       model.addAttribute("project", new Project());

        return "projectAdd";
    }

    @PostMapping("/project/add")
    public String projectAdd (Project project, HttpServletRequest request) {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("loggedUser");
        if (user != null) {
            project.setUserName(user.getUsername());
        }
        projectDao.create(project);
        return "redirect:/project/list";
    }

    @GetMapping("/project/edit")
    public String projectEdit(@RequestParam Long idToEdit, Model model){
        model.addAttribute("project", projectRepository.getById(idToEdit));
        return "projectEdit";
    }

    @PostMapping("/project/edit")
    public String projectEdit(Project project){
        projectDao.edit(project);
        return "redirect:/project/list";
    }
    @GetMapping("/project/close")
    public String projectClose(@RequestParam Long idToClose){
        Project project = projectRepository.getById(idToClose);
        projectDao.close(project);
        return "redirect:/project/list";

    }
    @GetMapping("/project/delete")
    public String projectDelete(@RequestParam Long idToDelete){
        projectRepository.delete(projectRepository.getById(idToDelete));
        return "redirect:/project/list";
    }

    @GetMapping("/project/candidate/list")
    public String projectCandidate(@RequestParam Long projectId, Model model, HttpServletRequest request){
        List<Candidate> candidateInProject = (List<Candidate>) candidateRepository.findCandidateInProject(projectId);
        HttpSession session = request.getSession();
        session.setAttribute("projectId", projectId);
        model.addAttribute("candidateProjectList", candidateInProject);
        return "candidatesInProject";
    }

    @GetMapping("/project/view")
    public String projectView(@RequestParam Long projectId, Model model){
        model.addAttribute("project", projectRepository.getById(projectId));
        return "projectView";
    }
    @GetMapping("/project/save")
    public String projectSave(@RequestParam Long projectId) throws FileNotFoundException {
       Project project = projectRepository.getById(projectId);
        PrintWriter printWriter = new PrintWriter("project"+projectId+".txt");
        printWriter.println("Company: "+project.getCompany());
        printWriter.println("Name: "+project.getName());
        printWriter.println("Start: "+project.getStart());
        printWriter.println("End: "+project.getEnd());
        printWriter.println("Prowadzący: "+project.getUserName());
        printWriter.close();
        return"redirect:/project/view?projectId="+projectId;
    }

}
