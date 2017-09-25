/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.WebServiceRef;
import servicios.ArcAssistantService_Service;
import servicios.Atributocalidad;
import servicios.Escenario;
import servicios.Modulo;
import servicios.Proyecto;

/**
 *
 * @author Prometheus
 */
@WebServlet(name = "ActualizarEscenario", urlPatterns = {"/ActualizarEscenario"})
public class ActualizarEscenario extends HttpServlet {

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
        String guardar = request.getParameter("btnQawGuardarEscenario");
        int ref = Integer.parseInt(request.getSession().getAttribute("refinar").toString());
        
        if (guardar != null)
        {
            
            if (ref == 1)
            {
                Escenario esc = (Escenario) request.getSession().getAttribute("escenarioActual");
                esc.setEscAmbiente(request.getParameter("txtQawAmbiente"));
                esc.setEscEstimulo(request.getParameter("txtQawEstimulo"));
                esc.setEscRespuesta(request.getParameter("txtQawRespuesta"));
                esc.setEscNombre(request.getParameter("txtQawNombre"));

                esc.setTblModuloModId(buscarModulo(1));
                esc.setTblAtributoCalidadacID((Atributocalidad) request.getSession().getAttribute("AtributoActual"));
                esc.setTblProyectoProID((Proyecto) request.getSession().getAttribute("proyectoActual"));
                esc.setEscFuente(request.getParameter("txtQawFuente"));
                
            
                esc.setEscArtefacto(request.getParameter("txtQawArtefacto"));
                esc.setEscMedidaRespuesta(request.getParameter("txtQawMedida"));
                esc.setEscEstado("refinado");
                
                modificarEscenario(esc);
            }
            else
            {
                Escenario esc2 = (Escenario) request.getSession().getAttribute("escenarioActual");
                Escenario esc = new Escenario();
                esc.setEscAmbiente(request.getParameter("txtQawAmbiente"));
                esc.setEscEstimulo(request.getParameter("txtQawEstimulo"));
                esc.setEscRespuesta(request.getParameter("txtQawRespuesta"));
                esc.setEscNombre(request.getParameter("txtQawNombre"));

                esc.setTblModuloModId(buscarModulo(1));
                esc.setTblAtributoCalidadacID((Atributocalidad) request.getSession().getAttribute("AtributoActual"));
                esc.setTblProyectoProID((Proyecto) request.getSession().getAttribute("proyectoActual"));
                esc.setEscFuente(request.getParameter("txtQawFuente"));
                
                if (esc2.getEscID() != null)
                {
                    
                    esc2.setEscEstado("reemplazado");
                    modificarEscenario(esc2);
                    esc.setEscEstado("modificado");
                    crearEscenario(esc);
                }
                else
                {
                    esc.setEscEstado("creado");
                    crearEscenario(esc);
                }
            }
            if (ref == 1)
            {
                response.sendRedirect("qaw8.jsp");
            }
            else
            {
                response.sendRedirect("qaw6.jsp");
            }
        }
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

    private void crearEscenario(servicios.Escenario parameter) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        servicios.ArcAssistantService port = service.getArcAssistantServicePort();
        port.crearEscenario(parameter);
    }

    private void modificarEscenario(servicios.Escenario parameter) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        servicios.ArcAssistantService port = service.getArcAssistantServicePort();
        port.modificarEscenario(parameter);
    }

    private Modulo buscarModulo(int parameter) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        servicios.ArcAssistantService port = service.getArcAssistantServicePort();
        return port.buscarModulo(parameter);
    }

}
