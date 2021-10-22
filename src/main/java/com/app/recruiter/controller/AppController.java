package com.app.recruiter.controller;

import com.app.recruiter.dao.UserDao;
import com.app.recruiter.entity.User;
import com.app.recruiter.repository.CandidateRepository;
import com.app.recruiter.repository.ProjectRepository;
import com.app.recruiter.repository.UserRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class AppController {

    private final UserDao userDao;
    private final UserRepository userRepository;
    private final ProjectRepository projectRepository;
    private final CandidateRepository candidateRepository;

    public AppController(UserDao userDao, UserRepository userRepository, ProjectRepository projectRepository, CandidateRepository candidateRepository) {
        this.userDao = userDao;
        this.userRepository = userRepository;
        this.projectRepository = projectRepository;
        this.candidateRepository = candidateRepository;
    }



    @GetMapping("/app")
    public String app(Model model){
        model.addAttribute("projectSeven", projectRepository.findFirstSeven());
        model.addAttribute("inProgress", projectRepository.findByStatus("w toku").size());
        model.addAttribute("stopped", projectRepository.findByStatus("zakończony").size());
        model.addAttribute("candidate", candidateRepository.findAll().size());
        return "app";
    }
    @GetMapping("/")
    public String loginForm(Model model){
        model.addAttribute("user", new User());

        return "login";
    }


    @PostMapping("/")
    public String login(User user, HttpServletRequest request){
        String email = user.getEmail();
        String password = user.getPassword();
        User loggedUser= userDao.login(email, password);
        HttpSession session = request.getSession();
        if(loggedUser == null){
            return "login";
        }else{
            session.setAttribute("loggedUser", loggedUser);
            System.out.println(loggedUser.getUsername());
            return "redirect:/app";
        }
    }

    @GetMapping("/register")
    public String log(Model model){
        model.addAttribute("user", new User());
        return "register";
    }
    @PostMapping("/register")
    public String login(User user){
        String password = user.getPassword();
        user.setPassword(UserDao.hashPassword(password));
        userDao.create(user);
        return "redirect:";
    }

    @GetMapping("/logout")
    public String logout(HttpServletRequest request){
        HttpSession session = request.getSession();
        session.removeAttribute("loggedUser");
        return "redirect:/";
    }
}
