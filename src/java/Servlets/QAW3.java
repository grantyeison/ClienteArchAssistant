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
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import servicios.ArcAssistantService_Service;
import servicios.Proyecto;
import servicios.Rationaleqaw;

/**
 *
 * @author Prometheus
 */
@WebServlet(name = "QAW3", urlPatterns = {"/QAW3"})
public class QAW3 extends HttpServlet {

    //private final String UPLOAD_DIRECTORY = "C:\\Users\\Prometheus\\Documents\\NetBeansProjects\\ClienteArchAssistant\\web\\uploads\\";
    
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
        String guardar = null;
        String continuar = null;
        String regresar = null;
        ArchAssistantBean archB = new ArchAssistantBean();
        GuardarArchivo arch = new GuardarArchivo();
        Proyecto pro = (Proyecto) request.getSession().getAttribute("proyectoActual");
        guardar = request.getParameter("btnQaw3Guardar");
        continuar = request.getParameter("btnQaw3Continuar");
        regresar = request.getParameter("btnQaw3anterior");
        String canc = request.getParameter("btnQawInicio");
        if (canc != null)
        {
            response.sendRedirect("InicioUsuario.jsp");
        }
        if (guardar != null)
        {
            Rationaleqaw ratq = archB.RationaleQAW(pro.getProID(), "qaw3");
            
            if (ratq == null)
            {
                ratq = new Rationaleqaw();
                ratq.setTblProyectoProID(pro);
                ratq.setRatQawPaso("qaw3");
            
            }

            ratq.setRatQawDescripcion(request.getParameter("ratqaw3"));
            guardarRationaleQaw(ratq);
            pro.setProAvance("qaw3");
            modificarProyecto(pro);
            response.sendRedirect("qaw3.jsp");
        }
        if (continuar != null)
        {
            if (request.getParameter("ratqaw3")!= "")
            {
                response.sendRedirect("qaw4.jsp");
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
            response.sendRedirect("qaw2.jsp");
        }
        
/*        Rationaleqaw ratq = archB.RationaleQAW(pro.getProID(), "qaw3");
        if (ratq != null)
        {
            List<File> archivos = arch.listarArchivos(ratq.getRatQawArchivo());

            for (File archivo : archivos)
            {
                //String descargar = request.getParameter("btnQaw3Bajar"+archivo.getName());
                if (request.getParameter("btnQawBajar"+archivo.getName())!= null)
                {
                    arch.descargar(archivo.getAbsolutePath(), archivo.getName());
                    response.sendRedirect("qaw3.jsp");
                }

                if (request.getParameter("btnQawEliminar"+archivo.getName())!= null)
                {
                    arch.eliminarArchivo(archivo.getAbsolutePath());
                    response.sendRedirect("qaw3.jsp");
                }
            }
        }
        */
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
        Rationaleqaw ratq = archB.RationaleQAW(pro.getProID(), "qaw3");
                
        try 
        {
            DirectorioArchivo = arch.guardarArchivo(request,pro.getProID().toString() , "QAW3");
        } 
        catch (Exception ex) 
        {
            Logger.getLogger(QAW3.class.getName()).log(Level.SEVERE, null, ex);
        }
         
        
        if (ratq == null)
        {
            ratq = new Rationaleqaw();
            ratq.setTblProyectoProID(pro);
            ratq.setRatQawPaso("qaw3");
        
        }
        
        if (ratq.getRatQawDescripcion()== null)
        {
            ratq.setRatQawDescripcion("debes registrar el rationale en este espacio!!");
        }

        ratq.setRatQawArchivo(DirectorioArchivo);
        guardarRationaleQaw(ratq);
         
                
        response.sendRedirect("qaw3.jsp");
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

}
