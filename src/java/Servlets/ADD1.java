/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Beans.ArchAssistantBean;
import com.sun.jndi.toolkit.url.UrlUtil;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.net.URL;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.xml.ws.WebServiceRef;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import servicios.ArcAssistantService_Service;
import servicios.Proyecto;
import servicios.Rationaleadd;

/**
 *
 * @author Prometheus
 */
@WebServlet(name = "ADD1", urlPatterns = {"/ADD1"})
@MultipartConfig
public class ADD1 extends HttpServlet {

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
            throws ServletException, IOException, FileUploadException {
        response.setContentType("text/html;charset=UTF-8");
        
        
        String guardar = null;// = request.getParameter("btnAdd1Guardar");
        String continuar = null;// = request.getParameter("btnAdd1Continuar");
        
        String nomArch = null;
        String ratAdd = "";
        File fichero = null;
        String canc = request.getParameter("btnQawInicio");
        if (canc != null)
        {
            response.sendRedirect("InicioUsuario.jsp");
        }        
        /*FileItemFactory es una interfaz para crear FileItem*/
        FileItemFactory factory = new DiskFileItemFactory();
        /*ServletFileUpload esta clase convierte los input file a FileItem*/
        ServletFileUpload upload = new ServletFileUpload(factory);
        /*sacando los FileItem del ServletFileUpload en una lista */
        // req es la HttpServletRequest que recibimos del formulario.
        // Los items obtenidos serán cada uno de los campos del formulario,
        // tanto campos normales como ficheros subidos.
        List items = upload.parseRequest(request);

        // Se recorren todos los items, que son de tipo FileItem
        for (Object item : items) {
            /*FileItem representa un archivo en memoria que puede ser pasado al disco duro*/
            FileItem uploaded = (FileItem) item;
            /*item.isFormField() false=input file; true=text field*/
            // Hay que comprobar si es un campo de formulario. Si no lo es, se guarda el fichero
            // subido donde nos interese
            if (!uploaded.isFormField()) {
                /*cual sera la ruta al archivo en el servidor*/
                // No es campo de formulario, guardamos el fichero en algún sitio
                fichero = new File("C:\\Users\\GOMEZ\\Desktop\\ClienteArchAssistant\\archivosSubidos\\", uploaded.getName());
                try {
                    /*y lo escribimos en el servido*/
                    uploaded.write(fichero);
                } catch (Exception ex) {
                    Logger.getLogger(ADD1.class.getName()).log(Level.SEVERE, null, ex);
                }
            } else {
                // es un campo de formulario, podemos obtener clave y valor
                String key = uploaded.getFieldName();
                String valor = uploaded.getString();
                
                if(key.equals("btnAdd1Guardar")){
                    guardar = valor;
                }
                if(key.equals("btnAdd1Continuar")){
                    continuar = valor;
                }
                if(key.equals("nomarchivo")){
                    nomArch = valor;
                }  
                if(key.equals("ratadd1")){
                    ratAdd = valor;
                }  
            }
        }
        
        if (guardar != null)
        {
            ArchAssistantBean archB = new ArchAssistantBean();
            Proyecto proy = (Proyecto)request.getSession().getAttribute("proyectoActual");
            Rationaleadd rata = archB.RationaleADD(proy.getProID(), "add1");
            //String nomArch = request.getParameter("nomarchivo");
            if (rata == null)
            { 
                rata = new Rationaleadd();
            }            
            if(nomArch!=null){
                rata.setRatAddDescripcion(ratAdd+"@"+nomArch);
                
                PrintWriter out = response.getWriter();
                /*
                Part arch = request.getPart("archivo");
                
                URL url= this.getClass().getResource("add.jsp"); 
                try (InputStream is = arch.getInputStream()) {
                    File f = new File("D:\\ArchivosSubidos\\" + nomArch);
                    FileOutputStream ous = new FileOutputStream(f);                    
                    int dato = is.read();                    
                    while (dato != -1) {
                        ous.write(dato);
                        dato = is.read();
                    }
                    
                    ous.close();
                
                }*/
            }else{
                rata.setRatAddDescripcion(ratAdd);
            }
            rata.setTblProyectoProID(proy);
            rata.setRatAddPaso("add1");
            rata.setRatAddArchivo(fichero.getAbsolutePath().toString());
            guardarRationaleAdd(rata);
            proy.setProAvance("add1");
            modificarProyecto(proy);
            response.sendRedirect("add1.jsp");
        }
        if (continuar != null)
        {
            if (ratAdd!= "")
            {
                response.sendRedirect("add2.jsp");
            }
            else
            {
                try (PrintWriter out = response.getWriter()) {
                    out.println("debe llenar e campo Rationale antes de contunuar");
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
        try {
            processRequest(request, response);
        } catch (FileUploadException ex) {
            Logger.getLogger(ADD1.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (FileUploadException ex) {
            Logger.getLogger(ADD1.class.getName()).log(Level.SEVERE, null, ex);
        }
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

    private void guardarRationaleAdd(servicios.Rationaleadd parameter) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        servicios.ArcAssistantService port = service.getArcAssistantServicePort();
        port.guardarRationaleAdd(parameter);
    }

    private void modificarProyecto(servicios.Proyecto parameter) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        servicios.ArcAssistantService port = service.getArcAssistantServicePort();
        port.modificarProyecto(parameter);
    }

}
