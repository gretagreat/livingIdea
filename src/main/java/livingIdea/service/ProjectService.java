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
//import livingIdea.dao.ProjectRepository;
import javax.transaction.Transactional;

/**
 *
 * @author greta
 */
/*
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
    
    public Project geProjectById(long id) {
        return repository.findOne(id);
    }
    
    public void delete(Project project){
        repository.delete(project);
    }
    
    public void deleteProjectById(long projectId) {
	repository.delete(projectId);
    }
    
    public List<Project> visibleProjects() {
        List<Project> projects = this.findAll();
        List<Project> visibleProjects = new ArrayList<>();
        
        for(Project project: projects) {
            if(project.getVisibleToCustomers()) 
                visibleProjects.add(project);
        }
        return visibleProjects;
    }
}*/
