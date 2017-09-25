/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Beans.ArchAssistantBean;
import com.itextpdf.text.DocumentException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.WebServiceRef;
import servicios.ArcAssistantService_Service;
import servicios.Proyecto;
import servicios.Rationaleqaw;
import servicios.Usuario;

/**
 *
 * @author Prometheus
 */
@WebServlet(name = "GestionarProyectos", urlPatterns = {"/GestionarProyectos"})
public class GestionarProyectos extends HttpServlet {

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
        String crear, eliminar, seleccionar;
        crear = request.getParameter("btnCrearProyecto");
        eliminar = request.getParameter("btnEliminarProyecto");
        //seleccionar = request.getParameter("txtIdProyecto");
                
        if (crear != null)
        {
            response.sendRedirect("crearProyecto.jsp");
        }
        
        List<Proyecto> lista;
        ArchAssistantBean p = new ArchAssistantBean();
        Usuario usu = (Usuario) request.getSession().getAttribute("validUsuario");
        lista = p.Listar(usu.getUsuUsuario());
        for (Proyecto proy : lista)
        {
            if (request.getParameter("btnSeleccionarProyecto"+proy.getProID()) != null)
            {
                request.getSession().setAttribute("proyectoActual", proy);
                if (proy.getProAvance().equals("qaw8"))
                {
                    //response.sendRedirect("add0.jsp");
                }
                else
                {
                    response.sendRedirect(proy.getProAvance()+".jsp");
                }
            }
            if (request.getParameter("btnEliminarProyecto"+proy.getProID()) != null)
            {
                //Proyecto pro = buscarProyecto(Integer.parseInt(request.getParameter("txtIdProyecto")));
                
                if (usu.getIdUsuario() == proy.getTblUsuarioidUsuario().getIdUsuario())
                {
                    boolean elim = eliminarProyecto(proy, usu.getIdUsuario());
                    //si se elimina, que muestre un mensaje diciendo que la eliminación ha sido un éxito
                }
                response.sendRedirect("InicioUsuario.jsp");
            }
            if (request.getParameter("btnGenerarReporte"+proy.getProID()) != null)
            {
                try 
                {
                    p.GenerarReporteQAW(proy);
                    response.sendRedirect("InicioUsuario.jsp");
                } 
                catch (FileNotFoundException ex) {
                    Logger.getLogger(GestionarProyectos.class.getName()).log(Level.SEVERE, null, ex);
                } catch (DocumentException ex) {
                    Logger.getLogger(GestionarProyectos.class.getName()).log(Level.SEVERE, null, ex);
                }
                
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
        
        request.getSession().invalidate();
        response.sendRedirect("index.jsp");
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


    

    private Proyecto buscarProyecto(int parameter) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        servicios.ArcAssistantService port = service.getArcAssistantServicePort();
        return port.buscarProyecto(parameter);
    }

    private boolean eliminarProyecto(servicios.Proyecto proyecto, int usuario) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        servicios.ArcAssistantService port = service.getArcAssistantServicePort();
        return port.eliminarProyecto(proyecto, usuario);
    }

    private void guardarRationaleQaw(servicios.Rationaleqaw parameter) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        servicios.ArcAssistantService port = service.getArcAssistantServicePort();
        port.guardarRationaleQaw(parameter);
    }

    

}
