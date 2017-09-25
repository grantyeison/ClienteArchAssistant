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
@Table(name = "tbl_rationaleqaw")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Rationaleqaw.findAll", query = "SELECT r FROM Rationaleqaw r")
    , @NamedQuery(name = "Rationaleqaw.findByRatQawID", query = "SELECT r FROM Rationaleqaw r WHERE r.ratQawID = :ratQawID")
    , @NamedQuery(name = "Rationaleqaw.findByRatQawPaso", query = "SELECT r FROM Rationaleqaw r WHERE r.ratQawPaso = :ratQawPaso")
    , @NamedQuery(name = "Rationaleqaw.findByRatQawDescripcion", query = "SELECT r FROM Rationaleqaw r WHERE r.ratQawDescripcion = :ratQawDescripcion")
    , @NamedQuery(name = "Rationaleqaw.findByRatQawArchivo", query = "SELECT r FROM Rationaleqaw r WHERE r.ratQawArchivo = :ratQawArchivo")})
public class Rationaleqaw implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "RatQawID")
    private Integer ratQawID;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "RatQawPaso")
    private String ratQawPaso;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 2000)
    @Column(name = "RatQawDescripcion")
    private String ratQawDescripcion;
    @Size(max = 1000)
    @Column(name = "RatQawArchivo")
    private String ratQawArchivo;
    @JoinColumn(name = "Tbl_Proyecto_ProID", referencedColumnName = "ProID")
    @ManyToOne(optional = false)
    private Proyecto tblProyectoProID;

    public Rationaleqaw() {
    }

    public Rationaleqaw(Integer ratQawID) {
        this.ratQawID = ratQawID;
    }

    public Rationaleqaw(Integer ratQawID, String ratQawPaso, String ratQawDescripcion) {
        this.ratQawID = ratQawID;
        this.ratQawPaso = ratQawPaso;
        this.ratQawDescripcion = ratQawDescripcion;
    }

    public Integer getRatQawID() {
        return ratQawID;
    }

    public void setRatQawID(Integer ratQawID) {
        this.ratQawID = ratQawID;
    }

    public String getRatQawPaso() {
        return ratQawPaso;
    }

    public void setRatQawPaso(String ratQawPaso) {
        this.ratQawPaso = ratQawPaso;
    }

    public String getRatQawDescripcion() {
        return ratQawDescripcion;
    }

    public void setRatQawDescripcion(String ratQawDescripcion) {
        this.ratQawDescripcion = ratQawDescripcion;
    }

    public String getRatQawArchivo() {
        return ratQawArchivo;
    }

    public void setRatQawArchivo(String ratQawArchivo) {
        this.ratQawArchivo = ratQawArchivo;
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
        hash += (ratQawID != null ? ratQawID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Rationaleqaw)) {
            return false;
        }
        Rationaleqaw other = (Rationaleqaw) object;
        if ((this.ratQawID == null && other.ratQawID != null) || (this.ratQawID != null && !this.ratQawID.equals(other.ratQawID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Modelo.Rationaleqaw[ ratQawID=" + ratQawID + " ]";
    }
    
}
