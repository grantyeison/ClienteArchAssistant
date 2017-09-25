/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;

import DAO.InterfaceDAO;
import DAO.InterfaceJPADAO;
import java.util.List;
import javax.ejb.EJB;
import Modelo.Interface;

/**
 *
 * @author Prometheus
 */
public class InterfaceBean 
{
    @EJB
    private InterfaceDAO dao;

    public InterfaceBean() 
    {
       /* if (dao != null)
        {*/
            dao = new InterfaceJPADAO();
            System.out.println("***Interface DAO ha sido creado***");
       // }
    }
    
    public List<Interface> Listar()
    {
        System.out.println("llegó a bean");
        return dao.ListarInterfaces();
    }
    
    public void Crear(Interface atr)
    {
        dao.CrearInterface(atr);
    }
    
    public Interface Buscar(int id)
    {
        return dao.BuscarInterface(id);
    }
    
    public void Eliminar(Interface atr)
    {
        dao.EliminarInterface(atr);
    }
    
    public void Modificar(Interface atr)
    {
        dao.ModificarInterface(atr);
    }
    
}
