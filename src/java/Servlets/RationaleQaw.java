/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Beans.ArchAssistantBean;
import com.sun.faces.renderkit.html_basic.HtmlResponseWriter;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.WebServiceRef;
import servicios.ArcAssistantService_Service;
import servicios.Modulo;
import servicios.Proyecto;
import servicios.Rationaleqaw;

/**
 *
 * @author GOMEZ
 */
@WebServlet(name = "Rationale", urlPatterns = {"/Rationale"})
public class RationaleQaw extends HttpServlet {

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
        String mensaje = request.getParameter("mensaje");
        ArchAssistantBean archB = new ArchAssistantBean();
        HttpSession ss = request.getSession();
        Proyecto proy = (Proyecto) ss.getAttribute("proyectoActual");
        String paso = (String) ss.getAttribute("pasoActual");
        //Modulo descMod = null;
        Rationaleqaw rata = null;
        String num = paso.substring(3, 4);
        /*if (Integer.parseInt(num) >= 2) {
            //descMod = (Modulo) request.getSession().getAttribute("padreActual");

            if (descMod == null) {
                descMod = archB.buscarModDescomposicion(proy);
                request.getSession().setAttribute("padreActual", descMod);
            }

            rata = archB.RationaleQAW(proy.getProID(), paso + "_" + descMod.getModId());
        } else {*/
            rata = archB.RationaleQAW(proy.getProID(), paso);
        //}
        if (mensaje != null) {
            if (mensaje.equals("guardar")) {
                //String nomArch = request.getParameter("nomarchivo");
                if (rata == null) {
                    rata = new Rationaleqaw();
                }
                response.setContentType("text/html;charset=UTF-8");
                try (PrintWriter out = response.getWriter()) {
                    rata.setRatQawDescripcion(request.getParameter("rata"));
                    rata.setTblProyectoProID(proy);
/*                    if (descMod == null) {
                        rata.setRatQawPaso(paso);
                    } else {
  */                      rata.setRatQawPaso(paso);
  //                  }
                    guardarRationaleQaw(rata);
                    proy.setProAvance(paso);
                    modificarProyecto(proy);
                    out.println("<div id='inner-message' class='alert alert-success alert-dismissable fade in'>"
                            + "<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>"
                            + "<strong>Guardado con exito!</strong> "
                            + "This alert box could indicate a successful or positive action.</div>");
                }
            } else {
                if (mensaje.equals("obtener")) {
                    response.setContentType("text/html;charset=UTF-8");
                    try (PrintWriter out = response.getWriter()) {
                        String Descp = rata.getRatQawDescripcion();
                        if (Descp == null) {
                            out.println("");
                        } else {
                            out.println(Descp);
                        }
                        out.println("-----");
                        GuardarArchivo arch = new GuardarArchivo();
                        List<String> archivos = null;
                        if (rata != null) {
                            archivos = arch.listarArchivos(rata.getRatQawArchivo(),rata.getRatQawPaso());
                        }
                        if (archivos != null) {
                            for (String archivo : archivos) {
                                out.print("<tr>");
                                out.print("<td>" + archivo + "</td>");
                                out.print("<td class='alIzq'> <button type='button' value='Eliminar' name='btnEliminar"
                                        + archivo + "' class='btn btn-primary download'>  "
                                        + "<span class='glyphicon glyphicon-trash' aria-hidden='true'></span></button>");
                                out.print("<button type='button' value='Descargar' name='btnBajar"
                                        + archivo + "' class='btn btn-primary download'> "
                                        + "<span class='glyphicon glyphicon-download-alt' aria-hidden='true'>"
                                        + "</span></button>" + "</td>");
                                out.print("</tr>");
                            }
                        }
                    }
                }
            }
            if (mensaje.equals("descargar")) {
                GuardarArchivo arch = new GuardarArchivo();
                if (rata != null) {
                    List<String> archivos = arch.listarArchivos(rata.getRatQawArchivo(),rata.getRatQawPaso());

                    for (String archivo : archivos) {
                        if (request.getParameter("btnQawBajar" + archivo) != null) {
                            arch.descargar(archivo, archivo);
                            //response.sendRedirect("add2.jsp");
                        }

                        if (request.getParameter("btnQawEliminar" + archivo) != null) {
                            arch.eliminarArchivo(archivo);
                            //response.sendRedirect("add2.jsp");
                        }
                    }
                }
            }
            if (mensaje.equals("archivoListar")) {
                try (PrintWriter out = response.getWriter()) {
                    /*out.println("<div id='inner-message' class='alert alert-success alert-dismissable fade in'>"
                        + "<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>"
                        + "<strong>Archivo subido con exito!</strong> </div>");
                     */
                }
            }
        } else {
            GuardarArchivo arch = new GuardarArchivo();
            Proyecto pro = (Proyecto) request.getSession().getAttribute("proyectoActual");
            String DirectorioArchivo = "";

            try {
/*                if (descMod != null) {
                    DirectorioArchivo = arch.guardarArchivo(request, pro.getProID().toString(), paso + "_" + descMod.getModId());
                } else {
  */                  DirectorioArchivo = arch.guardarArchivo(request, pro.getProID().toString(), paso);
  //              }
            } catch (Exception ex) {
                Logger.getLogger(ADD2.class.getName()).log(Level.SEVERE, null, ex);
            }

            if (rata == null) {
                rata = new Rationaleqaw();
            }

            rata.setTblProyectoProID(pro);
/*            if (descMod != null) {
                rata.setRatQawPaso(paso + "_" + descMod.getModId());
            } else {
*/                rata.setRatQawPaso(paso);
//            }

            if (rata.getRatQawDescripcion()== null) {
                rata.setRatQawDescripcion("debes registrar el rationale en este espacio!!");
            }
            rata.setRatQawArchivo(DirectorioArchivo);
            guardarRationaleQaw(rata);

            try (PrintWriter out = response.getWriter()) {
                arch = new GuardarArchivo();
                List<String> archivos = null;
                if (rata != null) {
                    archivos = arch.listarArchivos(rata.getRatQawArchivo(),rata.getRatQawPaso());
                }
                if (archivos != null) {
                    for (String archivo : archivos) {
                        out.print("<tr>");
                        out.print("<td>" + archivo + "</td>");
                        out.print("<td class='alIzq'> <button type='button' value='Eliminar' name='btnEliminar"
                                + archivo + "' class='btn btn-primary download'>  "
                                + "<span class='glyphicon glyphicon-trash' aria-hidden='true'></span></button>");
                        out.print("<button type='button' value='Descargar' name='btnBajar"
                                + archivo + "' class='btn btn-primary download'> "
                                + "<span class='glyphicon glyphicon-download-alt' aria-hidden='true'>"
                                + "</span></button>" + "</td>");
                        out.print("</tr>");
                    }
                }
            }
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


    private void modificarProyecto(servicios.Proyecto parameter) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        servicios.ArcAssistantService port = service.getArcAssistantServicePort();
        port.modificarProyecto(parameter);
    }

    private void guardarRationaleQaw(servicios.Rationaleqaw parameter) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        servicios.ArcAssistantService port = service.getArcAssistantServicePort();
        port.guardarRationaleQaw(parameter);
    }

}
