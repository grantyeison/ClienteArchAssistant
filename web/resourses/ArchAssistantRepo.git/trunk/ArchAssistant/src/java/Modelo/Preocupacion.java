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
@Table(name = "tbl_preocupacion")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Preocupacion.findAll", query = "SELECT p FROM Preocupacion p")
    , @NamedQuery(name = "Preocupacion.findByPreID", query = "SELECT p FROM Preocupacion p WHERE p.preID = :preID")
    , @NamedQuery(name = "Preocupacion.findByPreNombre", query = "SELECT p FROM Preocupacion p WHERE p.preNombre = :preNombre")
    , @NamedQuery(name = "Preocupacion.findByPreDescripcion", query = "SELECT p FROM Preocupacion p WHERE p.preDescripcion = :preDescripcion")})
public class Preocupacion implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "preID")
    private Integer preID;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "preNombre")
    private String preNombre;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 250)
    @Column(name = "preDescripcion")
    private String preDescripcion;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "tblPreocupacionpreID")
    private List<Tactica> tacticaList;
    @JoinColumn(name = "Tbl_Controlador_contID", referencedColumnName = "contID")
    @ManyToOne(optional = false)
    private Controlador tblControladorcontID;

    public Preocupacion() {
    }

    public Preocupacion(Integer preID) {
        this.preID = preID;
    }

    public Preocupacion(Integer preID, String preNombre, String preDescripcion) {
        this.preID = preID;
        this.preNombre = preNombre;
        this.preDescripcion = preDescripcion;
    }

    public Integer getPreID() {
        return preID;
    }

    public void setPreID(Integer preID) {
        this.preID = preID;
    }

    public String getPreNombre() {
        return preNombre;
    }

    public void setPreNombre(String preNombre) {
        this.preNombre = preNombre;
    }

    public String getPreDescripcion() {
        return preDescripcion;
    }

    public void setPreDescripcion(String preDescripcion) {
        this.preDescripcion = preDescripcion;
    }

    @XmlTransient
    public List<Tactica> getTacticaList() {
        return tacticaList;
    }

    public void setTacticaList(List<Tactica> tacticaList) {
        this.tacticaList = tacticaList;
    }

    public Controlador getTblControladorcontID() {
        return tblControladorcontID;
    }

    public void setTblControladorcontID(Controlador tblControladorcontID) {
        this.tblControladorcontID = tblControladorcontID;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (preID != null ? preID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Preocupacion)) {
            return false;
        }
        Preocupacion other = (Preocupacion) object;
        if ((this.preID == null && other.preID != null) || (this.preID != null && !this.preID.equals(other.preID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Modelo.Preocupacion[ preID=" + preID + " ]";
    }
    
}
