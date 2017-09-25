/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Modelo.*;
import java.util.List;

/**
 *
 * @author Prometheus
 */
public interface ProyectoDAO 
{
    void CrearProyecto(Proyecto pro);
    
    void ModificarProyecto(Proyecto pro);
    
    Proyecto AbrirProyecto(int id);
    
    boolean EliminarProyecto(Proyecto pro, int usu);
    
    List<Proyecto> ListarProyectos(Usuario usu);
    
    Proyecto Buscar(int id);
}
