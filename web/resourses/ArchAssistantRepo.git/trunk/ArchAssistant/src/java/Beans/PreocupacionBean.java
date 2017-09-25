/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;

import DAO.PreocupacionDAO;
import DAO.PreocupacionJPADAO;
import javax.ejb.EJB;
import Modelo.Preocupacion;
import Modelo.Atributocalidad;
import java.util.List;

/**
 *
 * @author Prometheus
 */
public class PreocupacionBean 
{
    @EJB
    private PreocupacionDAO dao;

    public PreocupacionBean() 
    {
        /*if (dao != null)
        {*/
            dao = new PreocupacionJPADAO();
            System.out.println("***Preocupacion DAO ha sido creado***");
        //}
    }
    
    public List<Preocupacion> Listar()
    {
        return dao.ListarPreocupaciones();
    }
    
    public List<Preocupacion> ListarPorAtributo(Atributocalidad atr)
    {
        return dao.ListarPreocupacionesPorAtributo(atr);
    }
    
    public void Crear(Preocupacion pre)
    {
        dao.CrearPreocupacion(pre);
    }
    
    public Preocupacion Buscar(int id)
    {
        return dao.BuscarPreocupacion(id);
    }
    
    public void Eliminar(Preocupacion atr)
    {
        dao.EliminarPreocupacion(atr);
    }
    
    public void Modificar(Preocupacion atr)
    {
        dao.ModificarPreocupacion(atr);
    }
}
