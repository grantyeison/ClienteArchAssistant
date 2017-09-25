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
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
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
@Table(name = "tbl_tactica")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Tactica.findAll", query = "SELECT t FROM Tactica t")
    , @NamedQuery(name = "Tactica.findByTacID", query = "SELECT t FROM Tactica t WHERE t.tacID = :tacID")
    , @NamedQuery(name = "Tactica.findByTacNombre", query = "SELECT t FROM Tactica t WHERE t.tacNombre = :tacNombre")
    , @NamedQuery(name = "Tactica.findByTacDescripcion", query = "SELECT t FROM Tactica t WHERE t.tacDescripcion = :tacDescripcion")})
public class Tactica implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "tacID")
    private Integer tacID;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "tacNombre")
    private String tacNombre;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 250)
    @Column(name = "tacDescripcion")
    private String tacDescripcion;
    @ManyToMany(mappedBy = "tacticaList")
    private List<Patron> patronList;
    @JoinColumn(name = "Tbl_Preocupacion_preID", referencedColumnName = "preID")
    @ManyToOne(optional = false)
    private Preocupacion tblPreocupacionpreID;

    public Tactica() {
    }

    public Tactica(Integer tacID) {
        this.tacID = tacID;
    }

    public Tactica(Integer tacID, String tacNombre, String tacDescripcion) {
        this.tacID = tacID;
        this.tacNombre = tacNombre;
        this.tacDescripcion = tacDescripcion;
    }

    public Integer getTacID() {
        return tacID;
    }

    public void setTacID(Integer tacID) {
        this.tacID = tacID;
    }

    public String getTacNombre() {
        return tacNombre;
    }

    public void setTacNombre(String tacNombre) {
        this.tacNombre = tacNombre;
    }

    public String getTacDescripcion() {
        return tacDescripcion;
    }

    public void setTacDescripcion(String tacDescripcion) {
        this.tacDescripcion = tacDescripcion;
    }

    @XmlTransient
    public List<Patron> getPatronList() {
        return patronList;
    }

    public void setPatronList(List<Patron> patronList) {
        this.patronList = patronList;
    }

    public Preocupacion getTblPreocupacionpreID() {
        return tblPreocupacionpreID;
    }

    public void setTblPreocupacionpreID(Preocupacion tblPreocupacionpreID) {
        this.tblPreocupacionpreID = tblPreocupacionpreID;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (tacID != null ? tacID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Tactica)) {
            return false;
        }
        Tactica other = (Tactica) object;
        if ((this.tacID == null && other.tacID != null) || (this.tacID != null && !this.tacID.equals(other.tacID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Modelo.Tactica[ tacID=" + tacID + " ]";
    }
    
}
