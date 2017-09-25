/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;

import DAO.RationaleADDJPADAO;
import DAO.RationaleAddDAO;
import Modelo.Proyecto;
import javax.ejb.EJB;
import Modelo.Rationaleadd;
import java.util.List;

/**
 *
 * @author Prometheus
 */
public class RationaleAddBean 
{
     @EJB
    private RationaleAddDAO dao;

    public RationaleAddBean() 
    {
        /*if (dao != null)
        {*/
            dao = new RationaleADDJPADAO();
            System.out.println("***Atributo de calidad DAO ha sido creado***");
        //}
    }
    
        
    public void Guardar(Rationaleadd atr)
    {
        dao.guardarRationale(atr);
    }
    
    public Rationaleadd Obtener(Proyecto pro, String paso)
    {
        return dao.obtenerRationale(pro, paso);
    }
    
    public List<Rationaleadd> Listar(Proyecto pro)
    {
        return dao.listar(pro);
    }
}
