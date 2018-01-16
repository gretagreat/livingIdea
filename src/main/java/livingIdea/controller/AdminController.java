/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package livingIdea.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;
import javax.servlet.ServletException;
import javax.validation.Valid;
import livingIdea.model.Project;
import livingIdea.model.ProjectImage;
import livingIdea.service.ProjectService;
import livingIdea.service.ProjectImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
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
    
    @Autowired
    private ProjectImageService projectImageService;
    
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
    public ModelAndView newProject(@ModelAttribute("project") @Valid Project project, BindingResult bindingResult, RedirectAttributes redirectAttributes) throws ServletException, UnsupportedEncodingException {  
        projectService.save(project);
        return this.editProject(project.getId());
    }
    
    @GetMapping("/project&id={id}")
    public ModelAndView editProject(@PathVariable Long id) throws UnsupportedEncodingException{
        ModelAndView modelAndView = new ModelAndView("project_edit");
        modelAndView.addObject("project", projectService.getProjectById(id));
        modelAndView.addObject("projectId", id);
        modelAndView.addObject("images_lists", projectImageService.getImagesByProjectId(id));       
        return modelAndView;
    }
    
    @PostMapping("/project&id={id}")
    public String saveEditedProject(@ModelAttribute("project") @Valid Project project, @RequestParam(value="visibility", required=false) String visibility, BindingResult bindingResult, RedirectAttributes redirectAttributes) throws ServletException {  
        projectService.updateProject(project);
        return "redirect:/admin";
    }
    
    @GetMapping("/delete&id={id}")
    public String deleteProject(@PathVariable Long id){
        projectService.deleteProjectById(id);
        projectImageService.deleteByProjectId(id);
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
    
    @PostMapping("/uploadimage")
    public String uploadImage(@RequestParam("image") MultipartFile image, @RequestParam("projectId") Long projectId, @RequestParam("imagename") String name, 
        @RequestParam("price") float price, RedirectAttributes redirectAttributes) throws IOException {
        ProjectImage projectImage = new ProjectImage(image.getBytes(), projectId, name, price);
        projectImageService.save(projectImage);
        
        return "redirect:/admin/project&id="+projectId;
    }
   
}
