/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package livingIdea.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author greta
 */
@Entity
@XmlRootElement
@Table(name = "projectimage")
public class ProjectImage implements Serializable{
    
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    @Column
    private Long projectid;
    
    @Column
    private String name;
    
    @Column
    private byte[] image;
    
    public ProjectImage()
    {
        
    }   
    
    public ProjectImage(byte[] image, Long projectid)
    {
        this.image = image;
        this.projectid = projectid;
    }
    
    public ProjectImage(byte[] image, Long projectid, String name)
    {
        this.image = image;
        this.projectid = projectid;
        this.name = name;
    }
    
    public ProjectImage(Long id, byte[] image, Long projectid, String name)
    {
        this.id = id;
        this.image = image;
        this.projectid = projectid;
        this.name = name;
    }
    
    public void setId(Long id)
    {
        this.id = id;
    }
    
    public Long getId()
    {
        return this.id;
    }
    
    public byte[] getImage() {
        return image;
    }
    
    public void setImage(byte[] image) {
        this.image = image;
    }
    
    public void setProjectid(Long projectid)
    {
        this.projectid = projectid;
    }
    
    public Long getProjectid()
    {
        return this.projectid;
    }
    
    public void setName(String name)
    {
        this.name = name;
    }
    
    public String getName()
    {
        return this.name;
    }
}
