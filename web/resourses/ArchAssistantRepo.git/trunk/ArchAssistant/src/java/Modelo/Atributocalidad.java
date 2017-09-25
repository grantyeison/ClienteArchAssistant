/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Prometheus
 */
@Entity
@Table(name = "tbl_atributocalidad")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Atributocalidad.findAll", query = "SELECT a FROM Atributocalidad a")
    , @NamedQuery(name = "Atributocalidad.findByAcID", query = "SELECT a FROM Atributocalidad a WHERE a.acID = :acID")
    , @NamedQuery(name = "Atributocalidad.findByAcNombre", query = "SELECT a FROM Atributocalidad a WHERE a.acNombre = :acNombre")
    , @NamedQuery(name = "Atributocalidad.findByAcDescripcion", query = "SELECT a FROM Atributocalidad a WHERE a.acDescripcion = :acDescripcion")})
public class Atributocalidad implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "acID")
    private Integer acID;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "acNombre")
    private String acNombre;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 250)
    @Column(name = "acDescripcion")
    private String acDescripcion;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "tblAtributoCalidadacID")
    private List<Escenario> escenarioList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "tblAtributoCalidadacID")
    private List<Controlador> controladorList;

    public Atributocalidad() {
    }

    public Atributocalidad(Integer acID) {
        this.acID = acID;
    }

    public Atributocalidad(Integer acID, String acNombre, String acDescripcion) {
        this.acID = acID;
        this.acNombre = acNombre;
        this.acDescripcion = acDescripcion;
    }

    public Integer getAcID() {
        return acID;
    }

    public void setAcID(Integer acID) {
        this.acID = acID;
    }

    public String getAcNombre() {
        return acNombre;
    }

    public void setAcNombre(String acNombre) {
        this.acNombre = acNombre;
    }

    public String getAcDescripcion() {
        return acDescripcion;
    }

    public void setAcDescripcion(String acDescripcion) {
        this.acDescripcion = acDescripcion;
    }

    @XmlTransient
    public List<Escenario> getEscenarioList() {
        return escenarioList;
    }

    public void setEscenarioList(List<Escenario> escenarioList) {
        this.escenarioList = escenarioList;
    }

    @XmlTransient
    public List<Controlador> getControladorList() {
        return controladorList;
    }

    public void setControladorList(List<Controlador> controladorList) {
        this.controladorList = controladorList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (acID != null ? acID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Atributocalidad)) {
            return false;
        }
        Atributocalidad other = (Atributocalidad) object;
        if ((this.acID == null && other.acID != null) || (this.acID != null && !this.acID.equals(other.acID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Modelo.Atributocalidad[ acID=" + acID + " ]";
    }
    
}
