/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package livingIdea.service;

import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Service;
import livingIdea.model.Project;
import livingIdea.dao.ProjectRepository;
import javax.transaction.Transactional;

/**
 *
 * @author greta
 */

@Service
@Transactional
public class ProjectService {

    private final ProjectRepository repository;

    public ProjectService(ProjectRepository repository) {
        this.repository = repository;
    }
    
    public void save(Project project){
        repository.save(project);
    }
    
    public List<Project> findAll() {
        List<Project> projects = new ArrayList<>();
        for(Project project: repository.findAll()) {
            projects.add(project);
	}
        return projects; 
    }
    
    public Project getProjectById(long id) {
        return repository.findOne(id);
    }
    
    public void delete(Project project){
        repository.delete(project);
    }
    
    public void deleteProjectById(long projectId) {
	repository.delete(projectId);
    }
    
    public List<Project> findVisibleProjects() {
        List<Project> projects = this.findAll();
        List<Project> visibleProjects = new ArrayList<>();
        
        for(Project project: projects) {
            if(project.getVisibleToCustomers()) 
                visibleProjects.add(project);
        }
        return visibleProjects;
    }

    public void updateProject(Project project) {
        this.save(project);
    }
    
    public void makeVisibleProjects() {
        List<Project> projects = this.findAll();
        
        for(Project project: projects) {
            if(!project.getVisibleToCustomers()) 
            {
                project.setVisibleToCustomers(true);
                updateProject(project);
            }
        }
    }
    
    public void makeInvisibleProjects() {
        List<Project> projects = this.findAll();
        
        for(Project project: projects) {
            if(project.getVisibleToCustomers()) 
            {
                project.setVisibleToCustomers(false);
                updateProject(project);
            }
        }
    }
    
    public List<Project> findDistinctStyles(){
        List<Project> projects = this.findAll();
        List<Project> disctintStyleProjects = new ArrayList<>();
        boolean distinct;
        for(Project project: projects) {
            distinct=false;
            if( disctintStyleProjects.isEmpty()) {
                disctintStyleProjects.add(project);
            } else {
                for(Project distinctproject: disctintStyleProjects) {
                    if (project.getStyle().equals(distinctproject.getStyle())){
                        distinct=false;
                        break;
                    }
                    else {
                        distinct=true;
                    }
                }
                if (distinct==true){
                    disctintStyleProjects.add(project);
                } 
            }
        }
        return disctintStyleProjects;  
    }
}
