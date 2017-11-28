/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package livingIdea.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Currency;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author greta
 */

@Entity
@Table(name = "project")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Project.findAll", query = "SELECT p FROM Project p")
    , @NamedQuery(name = "Project.findById", query = "SELECT p FROM Project p WHERE p.id = :id")})
public class Project implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column 
    private String name;
    
    @Column 
    private Date date;
    
    @Column 
    private boolean visibleToCustomers;
    
    @Column 
    private Currency price;
    
    public Project(){
        
    }
    
    public Project(String name, Date date, boolean visibleToCustomers){
        this.name = name;
        this.date = date;
        this.visibleToCustomers = visibleToCustomers;
    }
    
    public Project(Long id, String name, Date date, boolean visibleToCustomers){
        this.name = name;
        this.date = date;
        this.visibleToCustomers = visibleToCustomers;
        this.id = id;
    }
    
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
    
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }

    public Date getDate() {
        return date;
    }
    
    public void setDate(Date date) {
        this.date = date;
    }
    
    public boolean getVisibleToCustomers() {
        return visibleToCustomers;
    }
    
    public void setVisibleToCustomers(boolean visibleToCustomers) {
        this.visibleToCustomers = visibleToCustomers;
    }
    
    public Currency getPrice() {
        return price;
    }

    public void setPrice(Currency price) {
        this.price = price;
    }
    
    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Project)) {
            return false;
        }
        Project other = (Project) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "livingIdea.model.Project[ id=" + id + " ]";
    }
    
    
}
