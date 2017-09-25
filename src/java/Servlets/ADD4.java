/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Beans.ArchAssistantBean;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.WebServiceRef;
import servicios.ArcAssistantService_Service;
import servicios.Modulo;
import servicios.Proyecto;
import servicios.Rationaleadd;

/**
 *
 * @author Prometheus
 */
@WebServlet(name = "ADD4", urlPatterns = {"/ADD4"})
public class ADD4 extends HttpServlet {

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
        String guardar = request.getParameter("btnAdd4Guardar");
        String continuar = request.getParameter("btnAdd4Continuar");
        String regresar = request.getParameter("btnAdd4anterior");
        String crearModulo = request.getParameter("btnCrearModulo");
        String canc = request.getParameter("btnQawInicio");
        if (canc != null)
        {
            response.sendRedirect("InicioUsuario.jsp");
        }
        if (guardar != null) {
            ArchAssistantBean archB = new ArchAssistantBean();
            Proyecto proy = (Proyecto) request.getSession().getAttribute("proyectoActual");
            Rationaleadd rata = archB.RationaleADD(proy.getProID(), "add4");
            if (rata == null) {
                rata = new Rationaleadd();
            }
            rata.setRatAddDescripcion(request.getParameter("ratadd4"));
            rata.setTblProyectoProID(proy);
            rata.setRatAddPaso("add4");
            guardarRationaleAdd(rata);
            proy.setProAvance("add4");
            modificarProyecto(proy);
            response.sendRedirect("add4.jsp");

        }
        if (continuar != null) {
            if (request.getParameter("ratadd4") != "") {
                response.sendRedirect("add5.jsp");
            } else {
                try (PrintWriter out = response.getWriter()) {
                    out.println("debe llenar e campo Rationale antes de contunuar");
                }
            }
        }
        if (regresar != null) {
            response.sendRedirect("add3.jsp");
        }
        if (crearModulo != null) {
            Proyecto proy = (Proyecto) request.getSession().getAttribute("proyectoActual");
            ArchAssistantBean archB = new ArchAssistantBean();

            Modulo nmod = new Modulo();
            String nomMod = request.getParameter("nombreMod");
            String descMod = request.getParameter("descMod");

            Modulo padreActual = (Modulo) request.getSession().getAttribute("padreActual");
            if (padreActual == null) {
                Modulo padre = archB.buscarModDescomposicion(proy);
                request.getSession().setAttribute("padreActual", padre);
                padreActual = padre;
            }

            nmod.setModNombre(nomMod);
            nmod.setModDescripcion(descMod);
            nmod.setModFinal("no");
            nmod.setTblModuloModId(padreActual);
            nmod.setTblProyectoProID(proy);
            archB.crearMod(nmod);
            response.sendRedirect("add2.jsp");
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

    private void modificarProyecto(servicios.Proyecto parameter) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        servicios.ArcAssistantService port = service.getArcAssistantServicePort();
        port.modificarProyecto(parameter);
    }

    private void guardarRationaleAdd(servicios.Rationaleadd parameter) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        servicios.ArcAssistantService port = service.getArcAssistantServicePort();
        port.guardarRationaleAdd(parameter);
    }

    private void crearModulo(servicios.Modulo parameter) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        servicios.ArcAssistantService port = service.getArcAssistantServicePort();
        port.crearModulo(parameter);
    }

    private Modulo buscarModulo(int parameter) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        servicios.ArcAssistantService port = service.getArcAssistantServicePort();
        return port.buscarModulo(parameter);
    }
}
