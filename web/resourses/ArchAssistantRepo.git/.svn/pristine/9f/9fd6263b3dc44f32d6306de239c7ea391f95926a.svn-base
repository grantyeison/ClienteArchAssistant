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
@Table(name = "tbl_proyecto")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Proyecto.findAll", query = "SELECT p FROM Proyecto p")
    , @NamedQuery(name = "Proyecto.findByProID", query = "SELECT p FROM Proyecto p WHERE p.proID = :proID")
    , @NamedQuery(name = "Proyecto.findByProNombre", query = "SELECT p FROM Proyecto p WHERE p.proNombre = :proNombre")
    , @NamedQuery(name = "Proyecto.findByProDescripcion", query = "SELECT p FROM Proyecto p WHERE p.proDescripcion = :proDescripcion")
    , @NamedQuery(name = "Proyecto.findByProAvance", query = "SELECT p FROM Proyecto p WHERE p.proAvance = :proAvance")})
public class Proyecto implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ProID")
    private Integer proID;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "ProNombre")
    private String proNombre;
    @Size(max = 2000)
    @Column(name = "ProDescripcion")
    private String proDescripcion;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "ProAvance")
    private String proAvance;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "tblProyectoProID")
    private List<Rationaleadd> rationaleaddList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "tblProyectoProID")
    private List<Modulo> moduloList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "tblProyectoProID")
    private List<Escenario> escenarioList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "tblProyectoProID")
    private List<Rationaleqaw> rationaleqawList;
    @JoinColumn(name = "TblUsuario_idUsuario", referencedColumnName = "idUsuario")
    @ManyToOne(optional = false)
    private Usuario tblUsuarioidUsuario;

    public Proyecto() {
    }

    public Proyecto(Integer proID) {
        this.proID = proID;
    }

    public Proyecto(Integer proID, String proNombre, String proAvance) {
        this.proID = proID;
        this.proNombre = proNombre;
        this.proAvance = proAvance;
    }

    public Integer getProID() {
        return proID;
    }

    public void setProID(Integer proID) {
        this.proID = proID;
    }

    public String getProNombre() {
        return proNombre;
    }

    public void setProNombre(String proNombre) {
        this.proNombre = proNombre;
    }

    public String getProDescripcion() {
        return proDescripcion;
    }

    public void setProDescripcion(String proDescripcion) {
        this.proDescripcion = proDescripcion;
    }

    public String getProAvance() {
        return proAvance;
    }

    public void setProAvance(String proAvance) {
        this.proAvance = proAvance;
    }

    @XmlTransient
    public List<Rationaleadd> getRationaleaddList() {
        return rationaleaddList;
    }

    public void setRationaleaddList(List<Rationaleadd> rationaleaddList) {
        this.rationaleaddList = rationaleaddList;
    }

    @XmlTransient
    public List<Modulo> getModuloList() {
        return moduloList;
    }

    public void setModuloList(List<Modulo> moduloList) {
        this.moduloList = moduloList;
    }

    @XmlTransient
    public List<Escenario> getEscenarioList() {
        return escenarioList;
    }

    public void setEscenarioList(List<Escenario> escenarioList) {
        this.escenarioList = escenarioList;
    }

    @XmlTransient
    public List<Rationaleqaw> getRationaleqawList() {
        return rationaleqawList;
    }

    public void setRationaleqawList(List<Rationaleqaw> rationaleqawList) {
        this.rationaleqawList = rationaleqawList;
    }

    public Usuario getTblUsuarioidUsuario() {
        return tblUsuarioidUsuario;
    }

    public void setTblUsuarioidUsuario(Usuario tblUsuarioidUsuario) {
        this.tblUsuarioidUsuario = tblUsuarioidUsuario;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (proID != null ? proID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Proyecto)) {
            return false;
        }
        Proyecto other = (Proyecto) object;
        if ((this.proID == null && other.proID != null) || (this.proID != null && !this.proID.equals(other.proID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Modelo.Proyecto[ proID=" + proID + " ]";
    }
    
}
