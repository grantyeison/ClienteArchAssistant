/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;
import DAO.ControladorDAO;
import DAO.ControladorJPADAO;
import Modelo.Controlador;
import Modelo.Modulo;
import Modelo.Proyecto;
import java.util.List;
import javax.ejb.EJB;

/**
 *
 * @author Prometheus
 */
public class ControladorBean 
{
    @EJB
    private ControladorDAO dao;

    public ControladorBean() 
    {
            dao = new ControladorJPADAO();
    }
    
    public List<Controlador> Listar(Proyecto proy)
    {
        return dao.ListarControlador(proy);
    }
    
    public void Crear(Controlador con)
    {
        dao.CrearControlador(con);
    }
    
    public Controlador Buscar(int id)
    {
        return dao.BuscarControlador(id);
    }
    
    public void Eliminar(Controlador con)
    {
        dao.EliminarControlador(con);
    }
    
    public void Modificar(Controlador con)
    {
        dao.ModificarControlador(con);
    }
    
    /*
    public Modulo BuscarModDescomposicion(Proyecto id)
    {
        return dao.BuscarModuloDescomposicion(id);
    }
*/
    
}
