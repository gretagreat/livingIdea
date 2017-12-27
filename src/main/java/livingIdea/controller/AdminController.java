/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package livingIdea.controller;

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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author greta
 */
@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private ProjectService projectService;
    
    @GetMapping()
    public ModelAndView getProjectsList() {
        ModelAndView model = new ModelAndView("admin");
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
    public String newProject(@ModelAttribute("project") @Valid Project project, BindingResult bindingResult, RedirectAttributes redirectAttributes) throws ServletException {  
        if (bindingResult.hasErrors()) {
            return "newproject";
        } else {  
            projectService.save(project);
            return "redirect:/admin";
        }
    }
    
    @GetMapping("/project&id={id}")
    public ModelAndView editProject(@PathVariable Long id){
        return new ModelAndView("project_edit", "project", projectService.geProjectById(id));
    }
    
    @PostMapping("/project&id={id}")
    public String saveEditedProject(@ModelAttribute("project") @Valid Project project, @RequestParam(value="visibility", required=false) String visibility, BindingResult bindingResult, RedirectAttributes redirectAttributes) throws ServletException {  
        projectService.updateProject(project);
        return "redirect:/admin";
    }
    
    @GetMapping("/delete&id={id}")
    public String deleteProject(@PathVariable Long id){
        projectService.deleteProjectById(id);
        return "redirect:/admin";
    }
    
    @GetMapping("/cancel&id={id}")
    public String cancel(){
        return "redirect:/admin";
    }
    
    @GetMapping("/allprojectsvisible")
    public String visible(){
        projectService.makeVisibleProjects();
        return "redirect:/admin";
    }
 
    @GetMapping("/allprojectsinvisible")
    public String invisible(){
        projectService.makeInvisibleProjects();
        return "redirect:/admin";
    }
}
