/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package livingIdea.controller;

import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.validation.Valid;
import livingIdea.model.Project;
import livingIdea.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
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
    
    @GetMapping("/allprojects")
    public ModelAndView getSpotsList() {
        ModelAndView model = new ModelAndView("project_all");
        List<Project> projects = projectService.findAll();
        model.addObject("projects", projects);
        return model;
    }
    
    @GetMapping("/newproject")
    public ModelAndView newProject() {        
        ModelAndView modelAndView = new ModelAndView("project_new");
        modelAndView.addObject("project", new Project());
        return modelAndView;
    }
    
    @PostMapping("/newproject")
    public String newProject(@ModelAttribute("project") @Valid Project project, @RequestParam(value="visibility", required=false) String visibility, BindingResult bindingResult, RedirectAttributes redirectAttributes) throws ServletException {  
        boolean visibilityBool = false;
        if(visibility != null){
            visibilityBool = true;
        }
        if (bindingResult.hasErrors()) {
            return "newproject";
        } else {  
            project.setVisibleToCustomers(visibilityBool);
            projectService.save(project);
            return "redirect:/admin";
        }
    }
    
    @GetMapping("/editproject&id={id}")
    public ModelAndView editProject(@PathVariable Long id, RedirectAttributes redirectAttributes){
        ModelAndView model = new ModelAndView("project_edit");
        Project project = projectService.geProjectById(id);
	model.addObject("project", project);
        return model;
    }
}
