/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servicios;

import Beans.*;
import Modelo.Atributocalidad;
import Modelo.Controlador;
import Modelo.Escenario;
import Modelo.Interface;
import Modelo.Modulo;
import Modelo.Patron;
import Modelo.Preocupacion;
import Modelo.Proyecto;
import Modelo.Rationaleadd;
import Modelo.Rationaleqaw;
import Modelo.Tactica;
import Modelo.Usuario;
import java.util.ArrayList;
import java.util.List;
import javax.jws.Oneway;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author Prometheus
 */
@WebService(serviceName = "ArcAssistantService")
public class ArcAssistantService {
    
    AtributoCalidadBean atrB;
    EscenarioBean escB;
    InterfaceBean intB;
    ModuloBean modB;
    PatronBean patB;
    ProyectoBean proB;
    RationaleAddBean rataB;
    RationaleQawBean ratqB;
    TacticaBean tacB;
    PreocupacionBean preB;
    ControladorBean conB;
    
    UsuarioBean usuB;

    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "hello")
    public String hello(@WebParam(name = "name") String txt) {
        return "Hello " + txt + " !";
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "ListarAtributos")
    public List<Atributocalidad> ListarAtributos() {
        atrB = new AtributoCalidadBean();
        return atrB.Listar();
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "CrearAtributo")
    @Oneway
    public void CrearAtributo(@WebParam(name = "parameter") Atributocalidad parameter) 
    {
        atrB = new AtributoCalidadBean();
        atrB.Crear(parameter);
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "BuscarAtributo")
    public Atributocalidad BuscarAtributo(@WebParam(name = "parameter") int parameter) 
    {
        atrB = new AtributoCalidadBean();
        return atrB.Buscar(parameter);
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "EliminarAtributo")
    @Oneway
    public void EliminarAtributo(@WebParam(name = "parameter") Atributocalidad parameter) 
    {
        atrB = new AtributoCalidadBean();
        atrB.Eliminar(parameter);
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "ModificarAtributo")
    @Oneway
    public void ModificarAtributo(@WebParam(name = "parameter") Atributocalidad parameter) 
    {
        atrB = new AtributoCalidadBean();
        atrB.Modificar(parameter);
    }


    /**
     * Web service operation
     */
    @WebMethod(operationName = "CrearEscenario")
    @Oneway
    public void CrearEscenario(@WebParam(name = "parameter") Escenario parameter) 
    {
        escB = new EscenarioBean();
        escB.Crear(parameter);
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "BuscarEscenario")
    public Escenario BuscarEscenario(@WebParam(name = "parameter") int parameter) 
    {
        escB = new EscenarioBean();
        return escB.Buscar(parameter);
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "EliminarEscenario")
    @Oneway
    public void EliminarEscenario(@WebParam(name = "parameter") Escenario parameter) 
    {
        escB = new EscenarioBean();
        escB.Eliminar(parameter);
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "ModificarEscenario")
    @Oneway
    public void ModificarEscenario(@WebParam(name = "parameter") Escenario parameter) 
    {
        escB = new EscenarioBean();
        escB.Modificar(parameter);
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "ListarInterfaces")
    public List<Interface> ListarInterfaces() 
    {
        
        System.out.println("******************************---------------------------------****************");
        intB = new InterfaceBean();
        return intB.Listar();
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "CrearInterface")
    @Oneway
    public void CrearInterface(@WebParam(name = "parameter") Interface parameter) 
    {
        intB = new InterfaceBean();
        intB.Crear(parameter);
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "BuscarInterface")
    public Interface BuscarInterface(@WebParam(name = "parameter") int parameter) 
    {
        intB = new InterfaceBean();
        return intB.Buscar(parameter);
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "EliminarInterface")
    @Oneway
    public void EliminarInterface(@WebParam(name = "parameter") Interface parameter) 
    {
        intB = new InterfaceBean();
        intB.Eliminar(parameter);
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "ModificarInterface")
    @Oneway
    public void ModificarInterface(@WebParam(name = "parameter") Interface parameter) 
    {
        intB = new InterfaceBean();
        intB.Modificar(parameter);
    }


    /**
     * Web service operation
     */
    @WebMethod(operationName = "CrearModulo")
    @Oneway
    public void CrearModulo(@WebParam(name = "parameter") Modulo parameter) 
    {
        modB = new ModuloBean();
        modB.Crear(parameter);
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "BuscarModulo")
    public Modulo BuscarModulo(@WebParam(name = "parameter") int parameter) 
    {
        modB = new ModuloBean();
        return modB.Buscar(parameter);
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "EliminarModulo")
    @Oneway
    public void EliminarModulo(@WebParam(name = "parameter") Modulo parameter) 
    {
        modB = new ModuloBean();
        modB.Eliminar(parameter);
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "ModificarModulo")
    @Oneway
    public void ModificarModulo(@WebParam(name = "parameter") Modulo parameter) 
    {
        modB = new ModuloBean();
        modB.Modificar(parameter);
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "ListarPatrones")
    public List<Patron> ListarPatrones() 
    {
        patB = new PatronBean();
        return patB.Listar();
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "CrearPatron")
    @Oneway
    public void CrearPatron(@WebParam(name = "parameter") Patron parameter) 
    {
        patB = new PatronBean();
        patB.Crear(parameter);
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "buscarPatron")
    public Patron buscarPatron(@WebParam(name = "parameter") int parameter) 
    {
        patB = new PatronBean();
        return patB.Buscar(parameter);
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "EliminarPatron")
    @Oneway
    public void EliminarPatron(@WebParam(name = "parameter") Patron parameter) 
    {
        patB = new PatronBean();
        patB.Eliminar(parameter);
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "ModificarPatron")
    @Oneway
    public void ModificarPatron(@WebParam(name = "parameter") Patron parameter) 
    {
        patB = new PatronBean();
        patB.Modificar(parameter);
    }


    /**
     * Web service operation
     */
    @WebMethod(operationName = "CrearProyecto")
    @Oneway
    public void CrearProyecto(@WebParam(name = "parameter") Proyecto parameter) 
    {
        proB = new ProyectoBean();
        proB.Crear(parameter);
    }


    /**
     * Web service operation
     */
    @WebMethod(operationName = "ModificarProyecto")
    @Oneway
    public void ModificarProyecto(@WebParam(name = "parameter") Proyecto parameter) 
    {
        proB = new ProyectoBean();
        proB.Modificar(parameter);
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "GuardarRationaleAdd")
    @Oneway
    public void GuardarRationaleAdd(@WebParam(name = "parameter") Rationaleadd parameter) 
    {
        rataB = new RationaleAddBean();
        rataB.Guardar(parameter);
    }


    /**
     * Web service operation
     */
    @WebMethod(operationName = "GuardarRationaleQaw")
    @Oneway
    public void GuardarRationaleQaw(@WebParam(name = "parameter") Rationaleqaw parameter)   
    {
        ratqB = new RationaleQawBean();
        ratqB.Guardar(parameter);
    }


    /**
     * Web service operation
     */
    @WebMethod(operationName = "ListarTactica")
    public List<Tactica> ListarTactica() 
    {
        tacB = new TacticaBean();
        return tacB.Listar();
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "CrearTactica")
    @Oneway
    public void CrearTactica(@WebParam(name = "parameter") Tactica parameter)  
    {
        tacB = new TacticaBean();
        tacB.Crear(parameter);
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "BuscarTactica")
    public Tactica BuscarTactica(@WebParam(name = "parameter") int parameter)  
    {
        tacB = new TacticaBean();
        return tacB.Buscar(parameter);
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "EliminarTactica")
    @Oneway
    public void EliminarTactica(@WebParam(name = "parameter") Tactica parameter)  
    {
        tacB = new TacticaBean();
        tacB.Eliminar(parameter);
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "ModificarTactica")
    @Oneway
    public void ModificarTactica(@WebParam(name = "parameter") Tactica parameter)  
    {
        tacB = new TacticaBean();
        tacB.Modificar(parameter);
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "ListarUsuarios")
    public List<Usuario> ListarUsuarios() 
    {
        usuB = new UsuarioBean();
        return usuB.Listar();
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "CrearUsuarios")
    @Oneway
    public void CrearUsuarios(@WebParam(name = "parameter") Usuario parameter) 
    {
        usuB = new UsuarioBean();
        usuB.Crear(parameter);
    }


    /**
     * Web service operation
     */
    @WebMethod(operationName = "EliminarUsuario")
    @Oneway
    public void EliminarUsuario(@WebParam(name = "parameter") Usuario parameter) 
    {
        usuB = new UsuarioBean();
        usuB.Eliminar(parameter);
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "ModificarUsuario")
    @Oneway
    public void ModificarUsuario(@WebParam(name = "parameter") Usuario parameter) 
    {
        usuB = new UsuarioBean();
        usuB.Modificar(parameter);
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "iniciarSesion")
    public Usuario iniciarSesion(@WebParam(name = "usuario") String usuario, @WebParam(name = "password") String password) {
        usuB = new UsuarioBean();
        return usuB.IniciarSesion(usuario, password);
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "ListarProyectos")
    public List<Proyecto> ListarProyectos(@WebParam(name = "parameter") String parameter) {
        proB = new ProyectoBean();
        usuB = new UsuarioBean();
        Usuario usu = usuB.Buscar(parameter);
        return proB.Listar(usu);
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "ObtenerRationaleQAW")
    public Rationaleqaw ObtenerRationaleQAW(@WebParam(name = "idpro") int idpro, @WebParam(name = "paso") String paso) {
        ratqB = new RationaleQawBean();
        proB = new ProyectoBean();
        Proyecto pro = proB.Buscar(idpro);
        return ratqB.Obtener(pro,paso);
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "ObtenerRationaleAdd")
    public Rationaleadd ObtenerRationaleAdd(@WebParam(name = "idpro") int idpro, @WebParam(name = "paso") String paso) {
        rataB = new RationaleAddBean();
        proB = new ProyectoBean();
        Proyecto pro = proB.Buscar(idpro);
        return rataB.Obtener(pro,paso);
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "BuscarUsuario")
    public Usuario BuscarUsuario(@WebParam(name = "parameter") String parameter) {
        usuB = new UsuarioBean();
        return usuB.Buscar(parameter);
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "BuscarProyecto")
    public Proyecto BuscarProyecto(@WebParam(name = "parameter") int parameter) {
        proB = new ProyectoBean();
        Proyecto pro = proB.Buscar(parameter);
        return pro;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "EliminarProyecto")
    public boolean EliminarProyecto(@WebParam(name = "proyecto") Proyecto proyecto, @WebParam(name = "usuario") int usuario) {
        proB = new ProyectoBean();
        return proB.Eliminar(proyecto, usuario);
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "ListarEscenario")
    public List<Escenario> ListarEscenario(@WebParam(name = "parameter") Proyecto parameter) {
        escB = new EscenarioBean();
        return escB.Listar(parameter);
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "adicionarProyectoUsuario")
    @Oneway
    public void adicionarProyectoUsuario(@WebParam(name = "proyecto") Proyecto proyecto, @WebParam(name = "usuario") Usuario usuario) 
    {
        usuB = new UsuarioBean();
        usuB.adicionarProyecto(proyecto, usuario);
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "ListarModulo")
    public List<Modulo> ListarModulo(@WebParam(name = "parameter") Proyecto parameter) 
    {
        modB = new ModuloBean();
        return modB.Listar(parameter);
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "BuscarModuloDescomposicion")
    public Modulo BuscarModuloDescomposicion(@WebParam(name = "idProy") Proyecto idProy) {
        //TODO write your implementation code here:
        modB = new ModuloBean();
        return modB.BuscarModDescomposicion(idProy);
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "ObtenerDriverArquitectonicos")
    public List<Escenario> ObtenerDriverArquitectonicos(@WebParam(name = "parameter") Proyecto parameter) {
        escB = new EscenarioBean();
        return escB.ListarEscenariosArquitectonicos(parameter);
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "ListarPreocupacionPorAtributo")
    public List<Preocupacion> ListarPreocupacionPorAtributo(@WebParam(name = "parameter") Atributocalidad parameter) {
        preB = new PreocupacionBean();
        return preB.ListarPorAtributo(parameter);
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "ListarTacticaPorPreocupacion")
    public List<Tactica> ListarTacticaPorPreocupacion(@WebParam(name = "parameter") Preocupacion parameter) {
        //TODO write your implementation code here:
        tacB = new TacticaBean();        
        return tacB.BuscarPorPreocupacion(parameter);
    }

    /**
     * Web service operation
     */
    /*
    @WebMethod(operationName = "CrearControlador")
    public Void CrearControlador(@WebParam(name = "parameter") Controlador parameter) {
        //TODO write your implementation code here:
        conB = new ControladorBean();
        conB.Crear(parameter);
        return null;
    }

    /**
     * Web service operation
     
    @WebMethod(operationName = "ModificarControlador")
    public Void ModificarControlador(@WebParam(name = "parameter") Controlador parameter) {
        //TODO write your implementation code here:
        conB = new ControladorBean();
        conB.Modificar(parameter);
        return null;
    }

    /**
     * Web service operation
     
    @WebMethod(operationName = "BuscarControlador")
    public Controlador BuscarControlador(@WebParam(name = "parameter") int parameter) {
        //TODO write your implementation code here:
        conB = new ControladorBean();        
        return conB.Buscar(parameter);
    }

    /**
     * Web service operation
     
    @WebMethod(operationName = "ListarControlador")
    public List<Controlador> ListarControlador(@WebParam(name = "parameter") Proyecto parameter) {
        //TODO write your implementation code here:
        conB = new ControladorBean();        
        return conB.Listar(parameter);
    }

    /**
     * Web service operation
     
    @WebMethod(operationName = "EliminarControlador")
    public Void EliminarControlador(@WebParam(name = "parameter") Controlador parameter) {
        //TODO write your implementation code here:
        conB = new ControladorBean();
        conB.Eliminar(parameter);
        return null;
    }

*/



}

