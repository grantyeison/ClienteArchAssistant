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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
@Table(name = "tbl_controlador")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Controlador.findAll", query = "SELECT c FROM Controlador c")
    , @NamedQuery(name = "Controlador.findByContID", query = "SELECT c FROM Controlador c WHERE c.contID = :contID")
    , @NamedQuery(name = "Controlador.findByContNombre", query = "SELECT c FROM Controlador c WHERE c.contNombre = :contNombre")
    , @NamedQuery(name = "Controlador.findByContDescripcion", query = "SELECT c FROM Controlador c WHERE c.contDescripcion = :contDescripcion")})
public class Controlador implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "contID")
    private Integer contID;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "contNombre")
    private String contNombre;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 250)
    @Column(name = "contDescripcion")
    private String contDescripcion;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "tblControladorcontID")
    private List<Preocupacion> preocupacionList;
    @JoinColumn(name = "Tbl_AtributoCalidad_acID", referencedColumnName = "acID")
    @ManyToOne(optional = false)
    private Atributocalidad tblAtributoCalidadacID;

    public Controlador() {
    }

    public Controlador(Integer contID) {
        this.contID = contID;
    }

    public Controlador(Integer contID, String contNombre, String contDescripcion) {
        this.contID = contID;
        this.contNombre = contNombre;
        this.contDescripcion = contDescripcion;
    }

    public Integer getContID() {
        return contID;
    }

    public void setContID(Integer contID) {
        this.contID = contID;
    }

    public String getContNombre() {
        return contNombre;
    }

    public void setContNombre(String contNombre) {
        this.contNombre = contNombre;
    }

    public String getContDescripcion() {
        return contDescripcion;
    }

    public void setContDescripcion(String contDescripcion) {
        this.contDescripcion = contDescripcion;
    }

    @XmlTransient
    public List<Preocupacion> getPreocupacionList() {
        return preocupacionList;
    }

    public void setPreocupacionList(List<Preocupacion> preocupacionList) {
        this.preocupacionList = preocupacionList;
    }

    public Atributocalidad getTblAtributoCalidadacID() {
        return tblAtributoCalidadacID;
    }

    public void setTblAtributoCalidadacID(Atributocalidad tblAtributoCalidadacID) {
        this.tblAtributoCalidadacID = tblAtributoCalidadacID;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (contID != null ? contID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Controlador)) {
            return false;
        }
        Controlador other = (Controlador) object;
        if ((this.contID == null && other.contID != null) || (this.contID != null && !this.contID.equals(other.contID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Modelo.Controlador[ contID=" + contID + " ]";
    }
    
}
