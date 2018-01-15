/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package livingIdea.service;

import java.util.ArrayList;
import java.util.List;
import javax.transaction.Transactional;
import livingIdea.dao.ProjectImageRepository;
import livingIdea.dao.ProjectRepository;
import livingIdea.model.ProjectImage;
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
    
    public ProjectImage geProjectImageById(long id) {
        return repository.findOne(id);
    }
    
    public void delete(ProjectImage image){
        repository.delete(image);
    }
    
    public List<ProjectImage> findAllByStyle(String style) {
        List<ProjectImage> images = new ArrayList<>();
        for(ProjectImage image: repository.findAll()) {
            if(projectRepository.findOne(image.getProjectid()).getStyle().equals(style))
                images.add(image);
	}
        return images; 
    }
    
}
