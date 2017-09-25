/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Modelo.Atributocalidad;
import java.util.List;

/**
 *
 * @author Prometheus
 */
public interface AtributoCalidadDAO 
{
    List<Atributocalidad> ListarAtributos();    
    
    void crearAtributo(Atributocalidad atr);
    
    Atributocalidad BuscarAtributo(int id);
    
    void ModificarAtributo (Atributocalidad esc);
    
    void EliminarAtributo (Atributocalidad esc);
}
