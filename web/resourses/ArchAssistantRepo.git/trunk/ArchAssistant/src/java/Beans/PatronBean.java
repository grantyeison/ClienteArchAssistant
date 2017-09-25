/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;

import DAO.PatronDAO;
import DAO.PatronJPADAO;
import javax.ejb.EJB;
import Modelo.Patron;
import java.util.List;

/**
 *
 * @author Prometheus
 */
public class PatronBean 
{
    @EJB
    private PatronDAO dao;

    public PatronBean() 
    {
        /*if (dao != null)
        {*/
            dao = new PatronJPADAO();
            System.out.println("***Patron DAO ha sido creado***");
        //}
    }
    
    public List<Patron> Listar()
    {
        return dao.ListarPatrones();
    }
    
    public void Crear(Patron atr)
    {
        dao.CrearPatron(atr);
    }
    
    public Patron Buscar(int id)
    {
        return dao.BuscarPatron(id);
    }
    
    public void Eliminar(Patron atr)
    {
        dao.EliminarPatron(atr);
    }
    
    public void Modificar(Patron atr)
    {
        dao.ModificarPatron(atr);
    }
}
