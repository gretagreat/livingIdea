/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package livingIdea.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;
import javax.servlet.ServletException;
import livingIdea.model.Project;
import livingIdea.service.ProjectImageService;
import livingIdea.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author greta
 */

@Controller
public class ProjectsController {

    @Autowired
    private ProjectService projectService;
    
    @Autowired
    private ProjectImageService projectImageService;
    
    @GetMapping("/allprojects")
    public ModelAndView getProjectList() {
        projectService.save(new Project("name","modernas", 50f, true));
        projectService.save(new Project("labas","klasikinis", 60f, true));
        projectService.save(new Project("laba diena","klasikinis", 6090f, true));
        
        ModelAndView model = new ModelAndView("project_all");
        List<Project> projects = projectService.findVisibleProjects();
        model.addObject("projects", projects);
        return model;
    }
    
    @GetMapping("/project&id={id}")
    public ModelAndView editProject(@PathVariable Long id) throws UnsupportedEncodingException{
        ModelAndView modelAndView = new ModelAndView("project_view");
        modelAndView.addObject("project", projectService.getProjectById(id));
        modelAndView.addObject("projectId", id);
        modelAndView.addObject("images_lists", projectImageService.getImagesByProjectId(id));       
        return modelAndView;
    }
    
    @GetMapping("/myproject")
    public ModelAndView getMyProjectList() {
        ModelAndView model = new ModelAndView("project_my");
        List<Project> projects = projectService.findDistinctStyles();
        model.addObject("projects", projects);
        return model;
    }
    
    /**
     *
     * @param price
     * @param space
     * @param redirectAttributes
     * @return
     * @throws ServletException
     */
    @PostMapping("/showmyproject")
        public ModelAndView showMyProject(@RequestParam("optradio") Float price, @RequestParam("space") double space, RedirectAttributes redirectAttributes) throws ServletException {  
        ModelAndView model = new ModelAndView("project_showmy");
          model.addObject("totalprice",  price*space);
        return model ;
        }
   
}
