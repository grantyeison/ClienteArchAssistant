/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
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
@Table(name = "tbl_patron")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Patron.findAll", query = "SELECT p FROM Patron p")
    , @NamedQuery(name = "Patron.findByPatID", query = "SELECT p FROM Patron p WHERE p.patID = :patID")
    , @NamedQuery(name = "Patron.findByPatNombre", query = "SELECT p FROM Patron p WHERE p.patNombre = :patNombre")
    , @NamedQuery(name = "Patron.findByPatDescripcion", query = "SELECT p FROM Patron p WHERE p.patDescripcion = :patDescripcion")})
public class Patron implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "patID")
    private Integer patID;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "patNombre")
    private String patNombre;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 250)
    @Column(name = "patDescripcion")
    private String patDescripcion;
    @JoinTable(name = "tbl_tacticapatron", joinColumns = {
        @JoinColumn(name = "Tbl_Patron_patID", referencedColumnName = "patID")}, inverseJoinColumns = {
        @JoinColumn(name = "Tbl_Tactica_tacID", referencedColumnName = "tacID")})
    @ManyToMany
    private List<Tactica> tacticaList;

    public Patron() {
    }

    public Patron(Integer patID) {
        this.patID = patID;
    }

    public Patron(Integer patID, String patNombre, String patDescripcion) {
        this.patID = patID;
        this.patNombre = patNombre;
        this.patDescripcion = patDescripcion;
    }

    public Integer getPatID() {
        return patID;
    }

    public void setPatID(Integer patID) {
        this.patID = patID;
    }

    public String getPatNombre() {
        return patNombre;
    }

    public void setPatNombre(String patNombre) {
        this.patNombre = patNombre;
    }

    public String getPatDescripcion() {
        return patDescripcion;
    }

    public void setPatDescripcion(String patDescripcion) {
        this.patDescripcion = patDescripcion;
    }

    @XmlTransient
    public List<Tactica> getTacticaList() {
        return tacticaList;
    }

    public void setTacticaList(List<Tactica> tacticaList) {
        this.tacticaList = tacticaList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (patID != null ? patID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Patron)) {
            return false;
        }
        Patron other = (Patron) object;
        if ((this.patID == null && other.patID != null) || (this.patID != null && !this.patID.equals(other.patID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Modelo.Patron[ patID=" + patID + " ]";
    }
    
}
