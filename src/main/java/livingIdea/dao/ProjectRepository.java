/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package livingIdea.dao;

import livingIdea.model.Project;
import org.springframework.data.repository.CrudRepository;

/**
 *
 * @author greta
 */

public interface ProjectRepository extends CrudRepository<Project, Long>{
    
}

