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
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.WebServiceRef;
import servicios.ArcAssistantService_Service;
import servicios.Escenario;
import servicios.Proyecto;
import servicios.Rationaleqaw;

/**
 *
 * @author Prometheus
 */
@WebServlet(name = "QAW6", urlPatterns = {"/QAW6"})
public class QAW6 extends HttpServlet {

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
        String guardar = request.getParameter("btnQaw6Guardar");
        String continuar = request.getParameter("btnQaw6Continuar");
        String regresar = request.getParameter("btnQaw6anterior");
        String SeleccionarEsc = request.getParameter("btnQaw6SeleccionarEscenario");
        String EliminarEsc = request.getParameter("btnQaw6EliminarEscenario");
        String siguienteAtr = request.getParameter("btnQaw6SiguienteAtributo");
        String codigoEscenario;
        String canc = request.getParameter("btnQawInicio");
        if (canc != null)
        {
            response.sendRedirect("InicioUsuario.jsp");
        }
        if (siguienteAtr != null)
        {
            request.getSession().setAttribute("sigAtr", 1);
            response.sendRedirect("qaw6.jsp");
        }
        
        if(SeleccionarEsc != null)
        {
            codigoEscenario = request.getParameter("txtQaw6CodigoSeleccionar");
            Escenario esc = null;
            if (!codigoEscenario.equals(""))
            {
                esc = buscarEscenario(Integer.parseInt(codigoEscenario));
            }
            if (esc == null)
            {
                esc = new Escenario();
            }
            request.getSession().setAttribute("escenarioActual", esc);
            request.getSession().setAttribute("refinar", 0);
            request.getSession().setAttribute("sigAtr", 0);
            response.sendRedirect("modificarEscenario.jsp");
        }
        if(EliminarEsc != null)
        {
            codigoEscenario = request.getParameter("txtQaw6CodigoSeleccionar");
            Escenario esc = buscarEscenario(Integer.parseInt(codigoEscenario));
            if (esc != null)
            {
                eliminarEscenario(esc);
                request.getSession().setAttribute("sigAtr", 0);
                response.sendRedirect("qaw6.jsp");
            }
            else
            {
                response.getOutputStream().print("debe ingresar un codigo valido en el campo");
            }
        }
        
        if (guardar != null)
        {
            ArchAssistantBean archB = new ArchAssistantBean();
            Proyecto proy = (Proyecto)request.getSession().getAttribute("proyectoActual");
            Rationaleqaw ratq = archB.RationaleQAW(proy.getProID(), "qaw6");
            if (ratq == null)
            {
                ratq = new Rationaleqaw();
            }
            ratq.setRatQawDescripcion(request.getParameter("ratqaw6"));
            ratq.setTblProyectoProID(proy);
            ratq.setRatQawPaso("qaw6");
            guardarRationaleQaw(ratq);
            proy.setProAvance("qaw6");
            modificarProyecto(proy);
            request.getSession().setAttribute("sigAtr", 0);
            response.sendRedirect("qaw6.jsp");
        }
        if (continuar != null)
        {
            if (request.getParameter("ratqaw6")!= "")
            {
                response.sendRedirect("qaw7.jsp");
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
            response.sendRedirect("qaw5.jsp");
        }
        
/*        ArchAssistantBean archB = new ArchAssistantBean();
        GuardarArchivo arch = new GuardarArchivo();
        Proyecto pro = (Proyecto) request.getSession().getAttribute("proyectoActual");
        Rationaleqaw ratq = archB.RationaleQAW(pro.getProID(), "qaw6");
        if (ratq != null)
        {
            List<File> archivos = arch.listarArchivos(ratq.getRatQawArchivo());

            for (File archivo : archivos)
            {
                //String descargar = request.getParameter("btnQaw3Bajar"+archivo.getName());
                if (request.getParameter("btnQawBajar"+archivo.getName())!= null)
                {
                    request.getSession().setAttribute("sigAtr", 0);
                    arch.descargar(archivo.getAbsolutePath(), archivo.getName());
                    response.sendRedirect("qaw6.jsp");
                }

                if (request.getParameter("btnQawEliminar"+archivo.getName())!= null)
                {
                    request.getSession().setAttribute("sigAtr", 0);
                    arch.eliminarArchivo(archivo.getAbsolutePath());
                    response.sendRedirect("qaw6.jsp");
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
        Rationaleqaw ratq = archB.RationaleQAW(pro.getProID(), "qaw6");
                
        request.getSession().setAttribute("sigAtr", 0);
        
        try 
        {
            DirectorioArchivo = arch.guardarArchivo(request,pro.getProID().toString() , "QAW6");
        } 
        catch (Exception ex) 
        {
            Logger.getLogger(QAW6.class.getName()).log(Level.SEVERE, null, ex);
        }
         
        
        if (ratq == null)
        {
            ratq = new Rationaleqaw();
            ratq.setTblProyectoProID(pro);
            ratq.setRatQawPaso("qaw6");
        
        }
        
        if (ratq.getRatQawDescripcion()== null)
        {
            ratq.setRatQawDescripcion("debes registrar el rationale en este espacio!!");
        }

        ratq.setRatQawArchivo(DirectorioArchivo);
        guardarRationaleQaw(ratq);
         
                
        response.sendRedirect("qaw6.jsp");
        
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

    private Escenario buscarEscenario(int parameter) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        servicios.ArcAssistantService port = service.getArcAssistantServicePort();
        return port.buscarEscenario(parameter);
    }

    private void eliminarEscenario(servicios.Escenario parameter) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        servicios.ArcAssistantService port = service.getArcAssistantServicePort();
        port.eliminarEscenario(parameter);
    }

}
