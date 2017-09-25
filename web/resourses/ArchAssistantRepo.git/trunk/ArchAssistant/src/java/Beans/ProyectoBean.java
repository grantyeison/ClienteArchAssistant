/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;
import DAO.ProyectoDAO;
import DAO.ProyectoJPADAO;
import Modelo.Escenario;
import Modelo.Proyecto;
import Modelo.Usuario;
import java.util.LinkedList;
import java.util.List;
import javax.ejb.EJB;

/**
 *
 * @author Prometheus
 */
public class ProyectoBean 
{
     @EJB
    private ProyectoDAO dao;

    public ProyectoBean() 
    {
            dao = new ProyectoJPADAO();
    }
    
    public List<Proyecto> Listar(Usuario Usu)
    {
        return dao.ListarProyectos(Usu);
    }
    
    public void Crear(Proyecto atr)
    {
        dao.CrearProyecto(atr);
    }
    
    public boolean Eliminar(Proyecto atr, int usuario)
    {
        return dao.EliminarProyecto(atr, usuario);
    }
    
    public void Modificar(Proyecto atr)
    {
        dao.ModificarProyecto(atr);
    }
    public Proyecto Buscar(int idPro)
    {
        return dao.Buscar(idPro);
    }
    
}
