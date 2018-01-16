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
import javax.transaction.Transactional;
import livingIdea.dao.ProjectImageRepository;
import livingIdea.dao.ProjectRepository;
import livingIdea.model.ProjectImage;
import org.apache.tomcat.util.codec.binary.Base64;
import org.springframework.stereotype.Service;

/**
 *
 * @author greta
 */
@Service
@Transactional
public class ProjectImageService {
    private final ProjectImageRepository repository;
    private final ProjectRepository projectRepository;

    public ProjectImageService(ProjectImageRepository repository, ProjectRepository projectRepository) {
        this.repository = repository;
        this.projectRepository = projectRepository;
    }

    public void save(ProjectImage image){
        repository.save(image);
    }
    
    public List<ProjectImage> findAll() {
        List<ProjectImage> images = new ArrayList<>();
        for(ProjectImage image: repository.findAll()) {
            images.add(image);
	}
        return images; 
    }
    
    public ProjectImage getProjectImageById(long id) {
        return repository.findOne(id);
    }
   
    public List<ProjectImage> getProjectImagesByProjectId(long projectId) {
        List<ProjectImage> images = new ArrayList<>();
        for(ProjectImage image: repository.findAll()) {
            if(image.getProjectid() == projectId)
                images.add(image);
	}
        return images; 
    }
    
    public List<String> getImagesByProjectId(long projectId) {
        List<String> images = new ArrayList<>();
        for(ProjectImage image: repository.findAll()) {
            if(image.getProjectid() == projectId)
                try {
                    images.add(new String(Base64.encodeBase64(image.getImage()), "UTF-8"));
            } catch (UnsupportedEncodingException ex) {
                Logger.getLogger(ProjectImageService.class.getName()).log(Level.SEVERE, null, ex);
            }
	}
        return images; 
    }
    
    public List<String> getImages() {
        List<String> images = new ArrayList<>();
        for(ProjectImage image: repository.findAll()) {
            if(projectRepository.findOne(image.getProjectid()).getVisibleToCustomers()){
                try {
                    images.add(new String(Base64.encodeBase64(image.getImage()), "UTF-8"));
                } catch (UnsupportedEncodingException ex) {
                    Logger.getLogger(ProjectImageService.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return images; 
    }
    
    public void delete(ProjectImage image){
        repository.delete(image);
    }
    
    public void deleteByProjectId(Long projectId){
        for(ProjectImage image: repository.findAll()) {
            if(image.getProjectid() == projectId)
               repository.delete(image);
	}
    }
   
    
}
