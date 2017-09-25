/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;

import DAO.AtributoCalidadDAO;
import DAO.AtributocalidadJPADAO;
import java.util.List;
import javax.ejb.EJB;
import Modelo.Atributocalidad;

/**
 *
 * @author Prometheus
 */
public class AtributoCalidadBean 
{
    @EJB
    private AtributoCalidadDAO dao;

    public AtributoCalidadBean() 
    {
        /*if (dao != null)
        {*/
            dao = new AtributocalidadJPADAO();
            System.out.println("***Atributo de calidad DAO ha sido creado***");
        //}
    }
    
    public List<Atributocalidad> Listar()
    {
        return dao.ListarAtributos();
    }
    
    public void Crear(Atributocalidad atr)
    {
        dao.crearAtributo(atr);
    }
    
    public Atributocalidad Buscar(int id)
    {
        return dao.BuscarAtributo(id);
    }
    
    public void Eliminar(Atributocalidad atr)
    {
        dao.EliminarAtributo(atr);
    }
    
    public void Modificar(Atributocalidad atr)
    {
        dao.ModificarAtributo(atr);
    }
    
}
