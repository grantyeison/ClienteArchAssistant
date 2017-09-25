/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Prometheus
 */
@Entity
@Table(name = "tbl_rationaleadd")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Rationaleadd.findAll", query = "SELECT r FROM Rationaleadd r")
    , @NamedQuery(name = "Rationaleadd.findByRatAddID", query = "SELECT r FROM Rationaleadd r WHERE r.ratAddID = :ratAddID")
    , @NamedQuery(name = "Rationaleadd.findByRatAddPaso", query = "SELECT r FROM Rationaleadd r WHERE r.ratAddPaso = :ratAddPaso")
    , @NamedQuery(name = "Rationaleadd.findByRatAddDescripcion", query = "SELECT r FROM Rationaleadd r WHERE r.ratAddDescripcion = :ratAddDescripcion")
    , @NamedQuery(name = "Rationaleadd.findByRatAddArchivo", query = "SELECT r FROM Rationaleadd r WHERE r.ratAddArchivo = :ratAddArchivo")})
public class Rationaleadd implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "RatAddID")
    private Integer ratAddID;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "RatAddPaso")
    private String ratAddPaso;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 2000)
    @Column(name = "RatAddDescripcion")
    private String ratAddDescripcion;
    @Size(max = 1000)
    @Column(name = "RatAddArchivo")
    private String ratAddArchivo;
    @JoinColumn(name = "Tbl_Proyecto_ProID", referencedColumnName = "ProID")
    @ManyToOne(optional = false)
    private Proyecto tblProyectoProID;

    public Rationaleadd() {
    }

    public Rationaleadd(Integer ratAddID) {
        this.ratAddID = ratAddID;
    }

    public Rationaleadd(Integer ratAddID, String ratAddPaso, String ratAddDescripcion) {
        this.ratAddID = ratAddID;
        this.ratAddPaso = ratAddPaso;
        this.ratAddDescripcion = ratAddDescripcion;
    }

    public Integer getRatAddID() {
        return ratAddID;
    }

    public void setRatAddID(Integer ratAddID) {
        this.ratAddID = ratAddID;
    }

    public String getRatAddPaso() {
        return ratAddPaso;
    }

    public void setRatAddPaso(String ratAddPaso) {
        this.ratAddPaso = ratAddPaso;
    }

    public String getRatAddDescripcion() {
        return ratAddDescripcion;
    }

    public void setRatAddDescripcion(String ratAddDescripcion) {
        this.ratAddDescripcion = ratAddDescripcion;
    }

    public String getRatAddArchivo() {
        return ratAddArchivo;
    }

    public void setRatAddArchivo(String ratAddArchivo) {
        this.ratAddArchivo = ratAddArchivo;
    }

    public Proyecto getTblProyectoProID() {
        return tblProyectoProID;
    }

    public void setTblProyectoProID(Proyecto tblProyectoProID) {
        this.tblProyectoProID = tblProyectoProID;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (ratAddID != null ? ratAddID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Rationaleadd)) {
            return false;
        }
        Rationaleadd other = (Rationaleadd) object;
        if ((this.ratAddID == null && other.ratAddID != null) || (this.ratAddID != null && !this.ratAddID.equals(other.ratAddID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Modelo.Rationaleadd[ ratAddID=" + ratAddID + " ]";
    }
    
}
