/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;
import DAO.ModuloDAO;
import DAO.ModuloJPADAO;
import Modelo.Modulo;
import Modelo.Proyecto;
import java.util.List;
import javax.ejb.EJB;

/**
 *
 * @author Prometheus
 */
public class ModuloBean 
{
    @EJB
    private ModuloDAO dao;

    public ModuloBean() 
    {
            dao = new ModuloJPADAO();
    }
    
    public List<Modulo> Listar(Proyecto proy)
    {
        return dao.ListarModulos(proy);
    }
    
    public void Crear(Modulo atr)
    {
        dao.CrearModulo(atr);
    }
    
    public Modulo Buscar(int id)
    {
        return dao.BuscarModulo(id);
    }
    
    public void Eliminar(Modulo atr)
    {
        dao.EliminarModulo(atr);
    }
    
    public void Modificar(Modulo atr)
    {
        dao.ModificarModulo(atr);
    }
    
    public Modulo BuscarModDescomposicion(Proyecto id)
    {
        return dao.BuscarModuloDescomposicion(id);
    }
    
}
