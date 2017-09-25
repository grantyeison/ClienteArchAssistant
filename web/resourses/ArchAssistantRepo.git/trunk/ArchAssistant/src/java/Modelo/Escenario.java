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
@Table(name = "tbl_escenario")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Escenario.findAll", query = "SELECT e FROM Escenario e")
    , @NamedQuery(name = "Escenario.findByEscID", query = "SELECT e FROM Escenario e WHERE e.escID = :escID")
    , @NamedQuery(name = "Escenario.findByEscNombre", query = "SELECT e FROM Escenario e WHERE e.escNombre = :escNombre")
    , @NamedQuery(name = "Escenario.findByEscFuente", query = "SELECT e FROM Escenario e WHERE e.escFuente = :escFuente")
    , @NamedQuery(name = "Escenario.findByEscEstimulo", query = "SELECT e FROM Escenario e WHERE e.escEstimulo = :escEstimulo")
    , @NamedQuery(name = "Escenario.findByEscRespuesta", query = "SELECT e FROM Escenario e WHERE e.escRespuesta = :escRespuesta")
    , @NamedQuery(name = "Escenario.findByEscMedidaRespuesta", query = "SELECT e FROM Escenario e WHERE e.escMedidaRespuesta = :escMedidaRespuesta")
    , @NamedQuery(name = "Escenario.findByEscEstado", query = "SELECT e FROM Escenario e WHERE e.escEstado = :escEstado")
    , @NamedQuery(name = "Escenario.findByEscAmbiente", query = "SELECT e FROM Escenario e WHERE e.escAmbiente = :escAmbiente")
    , @NamedQuery(name = "Escenario.findByEscArtefacto", query = "SELECT e FROM Escenario e WHERE e.escArtefacto = :escArtefacto")
    , @NamedQuery(name = "Escenario.findByEscPrioridad", query = "SELECT e FROM Escenario e WHERE e.escPrioridad = :escPrioridad")})
public class Escenario implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "escID")
    private Integer escID;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "escNombre")
    private String escNombre;
    @Size(max = 1000)
    @Column(name = "escFuente")
    private String escFuente;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 1000)
    @Column(name = "escEstimulo")
    private String escEstimulo;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 1000)
    @Column(name = "escRespuesta")
    private String escRespuesta;
    @Size(max = 250)
    @Column(name = "escMedidaRespuesta")
    private String escMedidaRespuesta;
    @Size(max = 45)
    @Column(name = "escEstado")
    private String escEstado;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 1000)
    @Column(name = "escAmbiente")
    private String escAmbiente;
    @Size(max = 250)
    @Column(name = "escArtefacto")
    private String escArtefacto;
    @Column(name = "escPrioridad")
    private Integer escPrioridad;
    @JoinColumn(name = "Tbl_AtributoCalidad_acID", referencedColumnName = "acID")
    @ManyToOne(optional = false)
    private Atributocalidad tblAtributoCalidadacID;
    @JoinColumn(name = "Tbl_Modulo_ModId", referencedColumnName = "ModId")
    @ManyToOne(optional = false)
    private Modulo tblModuloModId;
    @JoinColumn(name = "Tbl_Proyecto_ProID", referencedColumnName = "ProID")
    @ManyToOne(optional = false)
    private Proyecto tblProyectoProID;

    public Escenario() {
    }

    public Escenario(Integer escID) {
        this.escID = escID;
    }

    public Escenario(Integer escID, String escNombre, String escEstimulo, String escRespuesta, String escAmbiente) {
        this.escID = escID;
        this.escNombre = escNombre;
        this.escEstimulo = escEstimulo;
        this.escRespuesta = escRespuesta;
        this.escAmbiente = escAmbiente;
    }

    public Integer getEscID() {
        return escID;
    }

    public void setEscID(Integer escID) {
        this.escID = escID;
    }

    public String getEscNombre() {
        return escNombre;
    }

    public void setEscNombre(String escNombre) {
        this.escNombre = escNombre;
    }

    public String getEscFuente() {
        return escFuente;
    }

    public void setEscFuente(String escFuente) {
        this.escFuente = escFuente;
    }

    public String getEscEstimulo() {
        return escEstimulo;
    }

    public void setEscEstimulo(String escEstimulo) {
        this.escEstimulo = escEstimulo;
    }

    public String getEscRespuesta() {
        return escRespuesta;
    }

    public void setEscRespuesta(String escRespuesta) {
        this.escRespuesta = escRespuesta;
    }

    public String getEscMedidaRespuesta() {
        return escMedidaRespuesta;
    }

    public void setEscMedidaRespuesta(String escMedidaRespuesta) {
        this.escMedidaRespuesta = escMedidaRespuesta;
    }

    public String getEscEstado() {
        return escEstado;
    }

    public void setEscEstado(String escEstado) {
        this.escEstado = escEstado;
    }

    public String getEscAmbiente() {
        return escAmbiente;
    }

    public void setEscAmbiente(String escAmbiente) {
        this.escAmbiente = escAmbiente;
    }

    public String getEscArtefacto() {
        return escArtefacto;
    }

    public void setEscArtefacto(String escArtefacto) {
        this.escArtefacto = escArtefacto;
    }

    public Integer getEscPrioridad() {
        return escPrioridad;
    }

    public void setEscPrioridad(Integer escPrioridad) {
        this.escPrioridad = escPrioridad;
    }

    public Atributocalidad getTblAtributoCalidadacID() {
        return tblAtributoCalidadacID;
    }

    public void setTblAtributoCalidadacID(Atributocalidad tblAtributoCalidadacID) {
        this.tblAtributoCalidadacID = tblAtributoCalidadacID;
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

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (escID != null ? escID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Escenario)) {
            return false;
        }
        Escenario other = (Escenario) object;
        if ((this.escID == null && other.escID != null) || (this.escID != null && !this.escID.equals(other.escID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Modelo.Escenario[ escID=" + escID + " ]";
    }
    
}
