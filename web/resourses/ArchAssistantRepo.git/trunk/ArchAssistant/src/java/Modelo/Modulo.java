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
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Prometheus
 */
@Entity
@Table(name = "tbl_modulo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Modulo.findAll", query = "SELECT m FROM Modulo m")
    , @NamedQuery(name = "Modulo.findByModId", query = "SELECT m FROM Modulo m WHERE m.modId = :modId")
    , @NamedQuery(name = "Modulo.findByModNombre", query = "SELECT m FROM Modulo m WHERE m.modNombre = :modNombre")
    , @NamedQuery(name = "Modulo.findByModDescripcion", query = "SELECT m FROM Modulo m WHERE m.modDescripcion = :modDescripcion")
    , @NamedQuery(name = "Modulo.findByModDescomp", query = "SELECT m FROM Modulo m WHERE m.tblProyectoProID = :modProId")
    , @NamedQuery(name = "Modulo.findByModFinal", query = "SELECT m FROM Modulo m WHERE m.modFinal = :modFinal")})
public class Modulo implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ModId")
    private Integer modId;
    @Size(max = 45)
    @Column(name = "ModNombre")
    private String modNombre;
    @Size(max = 1000)
    @Column(name = "ModDescripcion")
    private String modDescripcion;
    @Size(max = 45)
    @Column(name = "ModFinal")
    private String modFinal;
    @OneToMany(mappedBy = "tblModuloModId")
    private List<Modulo> moduloList;
    @JoinColumn(name = "Tbl_Modulo_ModId", referencedColumnName = "ModId")
    @ManyToOne
    private Modulo tblModuloModId;
    @JoinColumn(name = "Tbl_Proyecto_ProID", referencedColumnName = "ProID")
    @ManyToOne(optional = false)
    private Proyecto tblProyectoProID;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "tblModuloModId")
    private List<Escenario> escenarioList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "tblModuloModId")
    private List<Interface> interfaceList;

    public Modulo() {
    }

    public Modulo(Integer modId) {
        this.modId = modId;
    }

    public Integer getModId() {
        return modId;
    }

    public void setModId(Integer modId) {
        this.modId = modId;
    }

    public String getModNombre() {
        return modNombre;
    }

    public void setModNombre(String modNombre) {
        this.modNombre = modNombre;
    }

    public String getModDescripcion() {
        return modDescripcion;
    }

    public void setModDescripcion(String modDescripcion) {
        this.modDescripcion = modDescripcion;
    }

    public String getModFinal() {
        return modFinal;
    }

    public void setModFinal(String modFinal) {
        this.modFinal = modFinal;
    }

    @XmlTransient
    public List<Modulo> getModuloList() {
        return moduloList;
    }

    public void setModuloList(List<Modulo> moduloList) {
        this.moduloList = moduloList;
    }

    public Modulo getTblModuloModId() {
        return tblModuloModId;
    }

    public void setTblModuloModId(Modulo tblModuloModId) {
        this.tblModuloModId = tblModuloModId;
    }

    public Proyecto getTblProyectoProID() {
        return tblProyectoProID;
    }

    public void setTblProyectoProID(Proyecto tblProyectoProID) {
        this.tblProyectoProID = tblProyectoProID;
    }

    @XmlTransient
    public List<Escenario> getEscenarioList() {
        return escenarioList;
    }

    public void setEscenarioList(List<Escenario> escenarioList) {
        this.escenarioList = escenarioList;
    }

    @XmlTransient
    public List<Interface> getInterfaceList() {
        return interfaceList;
    }

    public void setInterfaceList(List<Interface> interfaceList) {
        this.interfaceList = interfaceList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (modId != null ? modId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Modulo)) {
            return false;
        }
        Modulo other = (Modulo) object;
        if ((this.modId == null && other.modId != null) || (this.modId != null && !this.modId.equals(other.modId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Modelo.Modulo[ modId=" + modId + " ]";
    }
    
}
