/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package livingIdea.controller;

import java.util.List;
import livingIdea.model.Project;
import livingIdea.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author greta
 */
@Controller
public class AdminController {

    @Autowired
    private ProjectService projectService;
    
    @GetMapping("/admin")
    public ModelAndView getProjectsList() {
        ModelAndView model = new ModelAndView("admin");
        List<Project> projects = projectService.findAll();
        model.addObject("projects", projects);
        return model;
    }
}
