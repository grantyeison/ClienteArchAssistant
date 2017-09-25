/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;
import DAO.RationaleQAWJPADAO;
import DAO.RationaleQawDAO;
import Modelo.Proyecto;
import Modelo.Rationaleqaw;
import java.util.List;
import javax.ejb.EJB;

/**
 *
 * @author Prometheus
 */
public class RationaleQawBean 
{
    @EJB
    private RationaleQawDAO dao;

    public RationaleQawBean() 
    {
        /*if (dao != null)
        {*/
            dao = new RationaleQAWJPADAO();
            System.out.println("***Atributo de calidad DAO ha sido creado***");
        //}
    }
    
        
    public void Guardar(Rationaleqaw atr)
    {
        dao.guardarRationale(atr);
    }
    
    public Rationaleqaw Obtener(Proyecto pro, String paso)
    {
        return dao.obtenerRationale(pro,paso);
    }
       
    public List<Rationaleqaw> Listar(Proyecto pro)
    {
        return dao.listar(pro);
    }
}
