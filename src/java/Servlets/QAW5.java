/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Beans.ArchAssistantBean;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.WebServiceRef;
import servicios.ArcAssistantService_Service;
import servicios.Atributocalidad;
import servicios.Escenario;
import servicios.Modulo;
import servicios.Proyecto;
import servicios.Rationaleqaw;

/**
 *
 * @author Prometheus
 */
@WebServlet(name = "QAW5", urlPatterns = {"/QAW5"})
public class QAW5 extends HttpServlet {

    @WebServiceRef(wsdlLocation = "WEB-INF/wsdl/localhost_8080/ArchAssistant/ArcAssistantService.wsdl")
    private ArcAssistantService_Service service;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String guardar = request.getParameter("btnQaw5Guardar");
        String continuar = request.getParameter("btnQaw5Continuar");
        String regresar = request.getParameter("btnQaw5anterior");
        String guardarEsc = request.getParameter("btnqaw5GuardarEscenario");
        String Atributo = request.getParameter("btnQaw5AtriSelecc");
        String seleccionado = request.getParameter("slcAtributo");
        HttpSession sesion = request.getSession();
        Atributocalidad actual = null;
        String canc = request.getParameter("btnQawInicio");
        if (canc != null)
        {
            response.sendRedirect("InicioUsuario.jsp");
        }
        if (seleccionado != null)
        {
            actual = buscarAtributo(Integer.parseInt(seleccionado));
        } 
        sesion.setAttribute("AtributoActual", actual); 
        ArchAssistantBean archB = new ArchAssistantBean();
        GuardarArchivo arch = new GuardarArchivo();
        Proyecto proy = (Proyecto) request.getSession().getAttribute("proyectoActual");
        
        if (Atributo != null)
        {
            System.out.println("atributo seleccionado"+seleccionado);
            //List<Atributocalidad> listaAtributos;
            //ArchAssistantBean p = new ArchAssistantBean();
            //listaAtributos = p.ListarAtr();
            actual = buscarAtributo(Integer.parseInt(seleccionado)); 
            /*for (Atributocalidad atr : listaAtributos)
            {
                if (atr.getAcID() == Integer.parseInt(seleccionado))
                    actual = atr;
            }*/
            sesion.setAttribute("AtributoActual", actual);
            
            response.sendRedirect("qaw5.jsp");
        }
        
        
        if (guardarEsc != null)
        {
            Escenario esc = new Escenario();
            Atributocalidad atr = (Atributocalidad)request.getSession().getAttribute("AtributoActual");
            
            if (atr != null)
            {
                Modulo mod = buscarModulo(1);
                esc.setEscPrioridad(0);
                esc.setEscAmbiente(request.getParameter("txtqaw5Ambiente"));
                esc.setEscEstimulo(request.getParameter("txtqaw5Estimulo"));
                esc.setEscRespuesta(request.getParameter("txtqaw5Respuesta"));
                esc.setEscNombre(request.getParameter("txtqaw5Nombre"));
                esc.setEscEstado("creado");
                esc.setTblAtributoCalidadacID(atr);
                esc.setTblModuloModId(mod);
                esc.setTblProyectoProID(proy);
                crearEscenario(esc);
            }
            response.sendRedirect("qaw5.jsp");
            
            
        }
        
        if (guardar != null)
        {
            Rationaleqaw ratq = archB.RationaleQAW(proy.getProID(), "qaw5");
            if (ratq == null)
            {
                ratq = new Rationaleqaw();
            }
            ratq.setRatQawDescripcion(request.getParameter("ratqaw5"));
            ratq.setTblProyectoProID(proy);
            ratq.setRatQawPaso("qaw5");
            guardarRationaleQaw(ratq);
            proy.setProAvance("qaw5");
            modificarProyecto(proy);
            response.sendRedirect("qaw5.jsp");
        }
        if (continuar != null)
        {
            request.getSession().removeAttribute("AtributoActual");
            if (request.getParameter("ratqaw5")!= "")
            {
                response.sendRedirect("qaw6.jsp");
            }
            else
            {
                try (PrintWriter out = response.getWriter()) {
                    out.println("debe llenar e campo Rationale antes de contunuar");
                }
            }
        }
        if (regresar != null)
        {
            response.sendRedirect("qaw4.jsp");
        }
        
        
/*        Rationaleqaw ratq = archB.RationaleQAW(proy.getProID(), "qaw5");
        
        if (ratq != null)
        {
            List<File> archivos = arch.listarArchivos(ratq.getRatQawArchivo());

            for (File archivo : archivos)
            {
                //String descargar = request.getParameter("btnQaw3Bajar"+archivo.getName());
                if (request.getParameter("btnQawBajar"+archivo.getName())!= null)
                {
                    arch.descargar(archivo.getAbsolutePath(), archivo.getName());
                    response.sendRedirect("qaw5.jsp");
                }

                if (request.getParameter("btnQawEliminar"+archivo.getName())!= null)
                {
                    arch.eliminarArchivo(archivo.getAbsolutePath());
                    response.sendRedirect("qaw5.jsp");
                }
            }
        }*/
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        GuardarArchivo arch = new GuardarArchivo();
        Proyecto pro = (Proyecto) request.getSession().getAttribute("proyectoActual");
        String DirectorioArchivo = "";
        ArchAssistantBean archB = new ArchAssistantBean();
        Rationaleqaw ratq = archB.RationaleQAW(pro.getProID(), "qaw5");
                
        try 
        {
            DirectorioArchivo = arch.guardarArchivo(request,pro.getProID().toString() , "QAW5");
        } 
        catch (Exception ex) 
        {
            Logger.getLogger(QAW5.class.getName()).log(Level.SEVERE, null, ex);
        }
         
        
        if (ratq == null)
        {
            ratq = new Rationaleqaw();
            ratq.setTblProyectoProID(pro);
            ratq.setRatQawPaso("qaw5");
        
        }
        if (ratq.getRatQawDescripcion()== null)
        {
            ratq.setRatQawDescripcion("debes registrar el rationale en este espacio!!");
        }
        ratq.setRatQawArchivo(DirectorioArchivo);
        guardarRationaleQaw(ratq);
         
                
        response.sendRedirect("qaw5.jsp");
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void guardarRationaleQaw(servicios.Rationaleqaw parameter) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        servicios.ArcAssistantService port = service.getArcAssistantServicePort();
        port.guardarRationaleQaw(parameter);
    }

    private void modificarProyecto(servicios.Proyecto parameter) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        servicios.ArcAssistantService port = service.getArcAssistantServicePort();
        port.modificarProyecto(parameter);
    }

    private void crearEscenario(servicios.Escenario parameter) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        servicios.ArcAssistantService port = service.getArcAssistantServicePort();
        port.crearEscenario(parameter);
    }

    private Atributocalidad buscarAtributo(int parameter) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        servicios.ArcAssistantService port = service.getArcAssistantServicePort();
        return port.buscarAtributo(parameter);
    }

    private Modulo buscarModulo(int parameter) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        servicios.ArcAssistantService port = service.getArcAssistantServicePort();
        return port.buscarModulo(parameter);
    }

}
