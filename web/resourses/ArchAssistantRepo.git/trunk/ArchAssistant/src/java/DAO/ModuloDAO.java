/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;
import Modelo.Modulo;
import Modelo.Proyecto;
import java.util.List;

/**
 *
 * @author Prometheus
 */
public interface ModuloDAO 
{
    List<Modulo> ListarModulos(Proyecto proy);
    
    void CrearModulo(Modulo mod);
    
    Modulo BuscarModulo(int id);
    
    Modulo BuscarModuloDescomposicion(Proyecto idProy);
    
    void ModificarModulo (Modulo mod);
    
    void EliminarModulo (Modulo mod);
}
