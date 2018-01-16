/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package livingIdea.service;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.stereotype.Service;
import livingIdea.model.Project;
import livingIdea.dao.ProjectRepository;
import javax.transaction.Transactional;
import livingIdea.dao.ProjectImageRepository;
import livingIdea.model.ProjectImage;
import org.apache.tomcat.util.codec.binary.Base64;

/**
 *
 * @author greta
 */

@Service
@Transactional
public class ProjectService {

    private final ProjectRepository repository;
    private final ProjectImageRepository projectImageRepository;

    public ProjectService(ProjectRepository repository, ProjectImageRepository projectImageRepository) {
        this.repository = repository;
        this.projectImageRepository = projectImageRepository;
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
    
    public List<ProjectImage> findAllByStyle(String style) {
        List<ProjectImage> images = new ArrayList<>();
        for(ProjectImage image: projectImageRepository.findAll()) {
            if(repository.findOne(image.getProjectid()).getStyle().equals(style))
                images.add(image);
	}
        return images; 
    }
    
    public List<String> findAllStyleImages(String style) {
        List<String> imagesList = new ArrayList<>();
        for(ProjectImage image: this.findAllByStyle(style)) {
            try {
                imagesList.add(new String(Base64.encodeBase64(image.getImage()), "UTF-8"));
            } catch (UnsupportedEncodingException ex) {
                Logger.getLogger(ProjectImageService.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return imagesList; 
    }
    
    public List<Project> findSameStyles(String style) {
        List<Project> projects = this.findAll();
        List<Project> sameStyles = new ArrayList<>();
        
        for(Project project: projects) {
            if(project.getStyle().equals(style)) 
                sameStyles.add(project);
        }
        return sameStyles;
    } 
}
