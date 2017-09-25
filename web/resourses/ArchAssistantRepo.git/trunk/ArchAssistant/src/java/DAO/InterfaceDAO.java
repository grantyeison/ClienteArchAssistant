/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.util.List;
import Modelo.Interface;

/**
 *
 * @author Prometheus
 */
public interface InterfaceDAO  
{
    List<Interface> ListarInterfaces();
    
    void CrearInterface(Interface inter);
    
    Interface BuscarInterface(int id);
    
    void ModificarInterface(Interface inter);
    
    void EliminarInterface(Interface inter);
}
