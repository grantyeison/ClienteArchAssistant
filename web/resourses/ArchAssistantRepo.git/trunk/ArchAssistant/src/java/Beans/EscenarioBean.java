/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;

import DAO.EscenarioDAO;
import DAO.EscenarioJPADAO;
import Modelo.Escenario;
import Modelo.Proyecto;
import java.util.List;
import javax.ejb.EJB;

/**
 *
 * @author Prometheus
 */
public class EscenarioBean 
{
    @EJB
    private EscenarioDAO dao;

    public EscenarioBean() 
    {
        /*if (dao != null)
        {*/
            dao = new EscenarioJPADAO();
            System.out.println("***Escenario DAO ha sido creado***");
        //}
    }
    
    public List<Escenario> Listar(Proyecto proy)
    {
        return dao.ListarEscenarios(proy);
    }
    
    public void Crear(Escenario atr)
    {
        dao.CrearEscenario(atr);
    }
    
    public Escenario Buscar(int id)
    {
        return dao.BuscarEscenario(id);
    }
    
    public void Eliminar(Escenario atr)
    {
        dao.EliminarEscenario(atr);
    }
    
    public void Modificar(Escenario atr)
    {
        dao.ModificarEscenario(atr);
    }
    
    public List<Escenario> ListarEscenariosArquitectonicos(Proyecto proy)
    {
        return dao.ListarEscenarios(proy);
    }
}
