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
import javax.servlet.http.HttpSession;
import javax.xml.ws.WebServiceRef;
import servicios.ArcAssistantService_Service;
import servicios.Proyecto;
import servicios.Rationaleqaw;
import servicios.Usuario;

/**
 *
 * @author Prometheus
 */
@WebServlet(name = "GuardarProyecto", urlPatterns = {"/GuardarProyecto"})
public class GuardarProyecto extends HttpServlet {

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
        HttpSession sesion = request.getSession();
        
        if (request.getParameter("btnGuardarProyecto") != null)
        {
            Usuario usu = (Usuario)sesion.getAttribute("validUsuario");
            Proyecto pro = new Proyecto();
            pro.setProNombre(request.getParameter("txtNombreProyecto"));
            pro.setProDescripcion(request.getParameter("txtDescripcionProyecto"));
            pro.setProAvance("qaw0");
            pro.setTblUsuarioidUsuario(usu);
            crearProyecto(pro);
            adicionarProyectoUsuario(pro, usu);
            response.sendRedirect("InicioUsuario.jsp");
        }
        if (request.getParameter("btnCancelar") != null)
        {
            response.sendRedirect("InicioUsuario.jsp");
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
        
        ArchAssistantBean arch = new ArchAssistantBean();
        String archivos = request.getParameter("archivos");
        Proyecto proy = (Proyecto) request.getSession().getAttribute("proyectoActual");
        if (proy != null)
        {
            String paso = (String) request.getSession().getAttribute("pasoActual");
            Rationaleqaw ratio = arch.RationaleQAW(proy.getProID(), paso);
            if (ratio != null)
            {
                if (paso.equals("qaw4"))
                {
                    if (ratio != null)
                    {
                        String archis = ratio.getRatQawArchivo();
                        int indice = archis.indexOf("|~|");
                        String datos = archis;
                        if (indice >= 0)
                        {
                            datos = archis.substring(0,indice);
                        }
                        ratio.setRatQawArchivo(datos+"|~|"+archivos);
                    }
                }
                else
                {
                    ratio.setRatQawArchivo(archivos);
                }
                guardarRationaleQaw(ratio);
                System.out.println(ratio.getRatQawArchivo());
            }
        }
        
        PrintWriter out = response.getWriter();
        out.println("terminado");
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

    private void crearProyecto(servicios.Proyecto parameter) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        servicios.ArcAssistantService port = service.getArcAssistantServicePort();
        port.crearProyecto(parameter);
    }

    private Usuario buscarUsuario(java.lang.String parameter) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        servicios.ArcAssistantService port = service.getArcAssistantServicePort();
        return port.buscarUsuario(parameter);
    }

    private void adicionarProyectoUsuario(servicios.Proyecto proyecto, servicios.Usuario usuario) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        servicios.ArcAssistantService port = service.getArcAssistantServicePort();
        port.adicionarProyectoUsuario(proyecto, usuario);
    }

    private void guardarRationaleQaw(servicios.Rationaleqaw parameter) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        servicios.ArcAssistantService port = service.getArcAssistantServicePort();
        port.guardarRationaleQaw(parameter);
    }

}
