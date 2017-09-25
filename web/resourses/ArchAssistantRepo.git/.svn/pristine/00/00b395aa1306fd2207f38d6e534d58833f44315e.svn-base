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
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Prometheus
 */
@Entity
@Table(name = "tbl_interface")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Interface.findAll", query = "SELECT i FROM Interface i")
    , @NamedQuery(name = "Interface.findByIntId", query = "SELECT i FROM Interface i WHERE i.intId = :intId")
    , @NamedQuery(name = "Interface.findByIntNombre", query = "SELECT i FROM Interface i WHERE i.intNombre = :intNombre")
    , @NamedQuery(name = "Interface.findByIntDescripcion", query = "SELECT i FROM Interface i WHERE i.intDescripcion = :intDescripcion")
    , @NamedQuery(name = "Interface.findByIntTipo", query = "SELECT i FROM Interface i WHERE i.intTipo = :intTipo")})
public class Interface implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "IntId")
    private Integer intId;
    @Size(max = 45)
    @Column(name = "IntNombre")
    private String intNombre;
    @Size(max = 1000)
    @Column(name = "IntDescripcion")
    private String intDescripcion;
    @Size(max = 45)
    @Column(name = "IntTipo")
    private String intTipo;
    @JoinColumn(name = "Tbl_Modulo_ModId", referencedColumnName = "ModId")
    @ManyToOne(optional = false)
    private Modulo tblModuloModId;

    public Interface() {
    }

    public Interface(Integer intId) {
        this.intId = intId;
    }

    public Integer getIntId() {
        return intId;
    }

    public void setIntId(Integer intId) {
        this.intId = intId;
    }

    public String getIntNombre() {
        return intNombre;
    }

    public void setIntNombre(String intNombre) {
        this.intNombre = intNombre;
    }

    public String getIntDescripcion() {
        return intDescripcion;
    }

    public void setIntDescripcion(String intDescripcion) {
        this.intDescripcion = intDescripcion;
    }

    public String getIntTipo() {
        return intTipo;
    }

    public void setIntTipo(String intTipo) {
        this.intTipo = intTipo;
    }

    public Modulo getTblModuloModId() {
        return tblModuloModId;
    }

    public void setTblModuloModId(Modulo tblModuloModId) {
        this.tblModuloModId = tblModuloModId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (intId != null ? intId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Interface)) {
            return false;
        }
        Interface other = (Interface) object;
        if ((this.intId == null && other.intId != null) || (this.intId != null && !this.intId.equals(other.intId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Modelo.Interface[ intId=" + intId + " ]";
    }
    
}
