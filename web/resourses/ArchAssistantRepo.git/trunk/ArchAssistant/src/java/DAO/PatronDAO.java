/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.util.List;
import Modelo.Patron;

/**
 *
 * @author Prometheus
 */
public interface PatronDAO  
{
    List<Patron> ListarPatrones();
    
    void CrearPatron(Patron pat);
    
    Patron BuscarPatron(int id);
    
    void ModificarPatron(Patron pat);
    
    void EliminarPatron(Patron pat);
}
