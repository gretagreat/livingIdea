/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package livingIdea.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import livingIdea.model.Project;
import livingIdea.model.ProjectImage;
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
    
    @GetMapping("/home")
    public ModelAndView getProjectStyles() throws UnsupportedEncodingException{       
        ModelAndView model = new ModelAndView("home");
        model.addObject("images_lists", projectImageService.getImages());  
        return model;
    }
    
    @GetMapping("/allprojects")
    public ModelAndView getProjectList() { 
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
        model.addObject("images_lists", projectImageService.getImages());  
        return model;
    }
    
    /**
     *
     * @param id
     * @param price
     * @param space
     * @param redirectAttributes
     * @return
     * @throws ServletException
     */
    @PostMapping("/showmyproject")
    public ModelAndView showMyProject(@RequestParam("optradio") int id, @RequestParam("space") double space, RedirectAttributes redirectAttributes) throws ServletException {  
        ModelAndView model = new ModelAndView("project_showmy");
        List<ProjectImage> projectimages = null;    
        Float price = null;
        String style=projectService.getProjectById(id).getStyle();
        List<Project> projectPrices = projectService.findSameStyles(style);
        for(Project project : projectPrices){
            if (price==null){
               price=project.getPrice();
            }
            else
                price=(project.getPrice()+price)/2;
        }
        projectimages = projectService.findAllByStyle(style);
        model.addObject("totalprice",  price*space);
        model.addObject("images",projectimages);
        model.addObject("images_lists", projectService.findAllStyleImages(style));
        return model ;
    }
        
        
    @PostMapping("/showmyfurniture")
    public ModelAndView showMyFurniture(@RequestParam("furniture") int[] checkboxValue, RedirectAttributes redirectAttributes) throws ServletException {  
        ModelAndView model = new ModelAndView("project_furniture");
        float price=0;
        for(int id : checkboxValue)
        {
            price+=  projectImageService.getProjectImageById(id).getPrice();
        }
        model.addObject("price",price);
        model.addObject("furnitureId", checkboxValue);
        model.addObject("images_lists", projectImageService.getImages());  
        return model ;
    }
   
}
