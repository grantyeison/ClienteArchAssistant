<%-- 
    Document   : qaw4
    Created on : 25/01/2017, 08:33:34 AM
    Author     : Prometheus
--%>

<%@page import="java.io.File"%>
<%@page import="Servlets.GuardarArchivo"%>
<%@page import="java.util.List"%>
<%@page import="servicios.Atributocalidad"%>
<%@page import="servicios.Rationaleqaw"%>
<%@page import="Beans.ArchAssistantBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ArchAssistant - QAW</title>
        <link rel="stylesheet" href="./css/bootstrap.min.css" />
        <link rel="stylesheet" href="./css/estilos.css" />
        <link rel="stylesheet" href="./css/editor.css" />
        <link rel="stylesheet" href="./css/font-awesome.min.css" />

        <script src="./js/jquery-3.2.1.js"></script>
        <script src="./js/bootstrap.min.js"></script>
        <script src="./js/editor.js"></script>
        <script src="./js/funciones.js"></script>
    </head>
    <body>
        <div class="col-lg-12 col-md-12 col-md-12">
            <%@include file='header.jsp'%> 
            <form name="qaw-4" action="QAW4">
                <h2 class="subtitle">QAW</h2>
                <h2 class="bienvenida"><jsp:useBean id="proyectoActual" scope="session" class="servicios.Proyecto" />
                    <jsp:getProperty name="proyectoActual" property="proNombre" /></h2>
                <table width="100%" border="0" class="tblCent">
                    <tbody>
                        <tr><% String avance = proyectoActual.getProAvance();
                            int pas = Integer.parseInt(avance.substring(3));

                            switch (pas) {
                                case 0:
                                    out.println("<td><a href='#' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                    break;
                                case 1:
                                    out.println("<td><a href='qaw0.jsp' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                    out.println("<td><a href='qaw1.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                    break;
                                case 2:
                                    out.println("<td><a href='qaw0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                    out.println("<td><a href='qaw1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                    out.println("<td><a href='qaw2.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                    break;
                                case 3:
                                    out.println("<td><a href='qaw0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                    out.println("<td><a href='qaw1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                    out.println("<td><a href='qaw2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                    out.println("<td><a href='qaw3.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                    break;
                                case 4:
                                    out.println("<td><a href='qaw0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                    out.println("<td><a href='qaw1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                    out.println("<td><a href='qaw2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                    out.println("<td><a href='qaw3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                    out.println("<td><a href='qaw4.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                    break;
                                case 5:
                                    out.println("<td><a href='qaw0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                    out.println("<td><a href='qaw1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                    out.println("<td><a href='qaw2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                    out.println("<td><a href='qaw3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                    out.println("<td><a href='qaw4.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                    out.println("<td><a href='qaw5.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                    break;
                                case 6:
                                    out.println("<td><a href='qaw0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                    out.println("<td><a href='qaw1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                    out.println("<td><a href='qaw2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                    out.println("<td><a href='qaw3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                    out.println("<td><a href='qaw4.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                    out.println("<td><a href='qaw5.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                    out.println("<td><a href='qaw6.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                    break;
                                case 7:
                                    out.println("<td><a href='qaw0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                    out.println("<td><a href='qaw1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                    out.println("<td><a href='qaw2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                    out.println("<td><a href='qaw3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                    out.println("<td><a href='qaw4.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                    out.println("<td><a href='qaw5.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                    out.println("<td><a href='qaw6.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                    out.println("<td><a href='qaw7.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                    break;
                                case 8:
                                    out.println("<td><a href='qaw0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                    out.println("<td><a href='qaw1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                    out.println("<td><a href='qaw2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                    out.println("<td><a href='qaw3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                    out.println("<td><a href='qaw4.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                    out.println("<td><a href='qaw5.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                    out.println("<td><a href='qaw6.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                    out.println("<td><a href='qaw7.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                    out.println("<td><a href='qaw8.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                    break;
                            }
                            %></tr>
                    </tbody>
                </table>
                <h2 class="page-header">Identificación de los drivers arquitecturales:</h2>
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="col-lg-3 col-md-2"></div>
                    <div class="col-lg-6 col-md-8 col-sm-12">

                        En este paso, los facilitadores dan a los presentes un tiempo de descanso durante el cual
                        <div  id="descqaw4" class="collapse">
                            consolidan las notas tomadas en los pasos 2 y 3, revisando las restricciones, atributos de calidad, drivers, y todo lo demás identificado por cada uno, luego, hacen una presentación de esta información a los stakeholders, pidiendo correcciones, adiciones o que se elimine lo que no sea necesario, con la finalidad de tener una lista de atributos directores en los cuales basarse para pasos posteriores, además, con el propósito de que todos en el taller tengan un conocimiento común sobre los drivers que se manejarán más adelante.
                        </div>
                        <input readonly="true" style="border-width:0; color:blue; text-decoration: underline;" data-toggle="collapse" data-target="#descqaw4" id="verDescPaso" value="ver más...">

                    </div>
                    <div class="col-lg-3 col-md-2"></div>
                </div>
                <h2 class="bienvenida">Controladores proyecto:</h2>
                <%
                    ArchAssistantBean p = new ArchAssistantBean();
                    Rationaleqaw ratq = p.RationaleQAW(proyectoActual.getProID(), "qaw4");
                    List<Atributocalidad> listaAtributos = p.ListarAtr();
                    List<Atributocalidad> atrEscogidos = p.ObtenerAtributosEscogidos(ratq);
                    out.println("<table border=\"0\" class=\"tblCentContent\">");
                    out.println("<tbody>");
                    Atributocalidad atr;
                    for (int i = 0; i <= listaAtributos.size(); i += 3) {
                        if (listaAtributos.size() > i) {
                            atr = listaAtributos.get(i);
                            out.println("<tr>");
                            out.println("<td class=\"alIzq\">");
                            out.println("<input type=\"checkbox\" name=\"chk" + atr.getAcID() + "\" ");
                            for (Atributocalidad atrEsc : atrEscogidos) {
                                if (atr.getAcID() == atrEsc.getAcID()) {
                                    out.println("checked");
                                }
                            }
                            out.println(">\t" + atr.getAcNombre());
                            out.println("<input readonly hidden='true' value ='" + atr.getAcDescripcion() + "' id=atrDesc'" + atr.getAcID() + "'/>");
                            out.println("</td>");
                        }

                        if (listaAtributos.size() > i + 1) {
                            atr = listaAtributos.get(i + 1);
                            out.println("<td class=\"alIzq\">");
                            out.println("<input type=\"checkbox\" name=\"chk" + atr.getAcID() + "\" ");
                            for (Atributocalidad atrEsc : atrEscogidos) {
                                if (atr.getAcID() == atrEsc.getAcID()) {
                                    out.println("checked");
                                }
                            }
                            out.println(">\t" + atr.getAcNombre());
                            out.println("<input readonly hidden='true' value ='" + atr.getAcDescripcion() + "' id=atrDesc'" + atr.getAcID() + "'/>");
                            out.println("</td>");
                        }

                        if (listaAtributos.size() > i + 2) {
                            atr = listaAtributos.get(i + 2);
                            out.println("<td class=\"alIzq\">");
                            out.println("<input type=\"checkbox\" class=\"margenS\" name=\"chk" + atr.getAcID() + "\" ");
                            for (Atributocalidad atrEsc : atrEscogidos) {
                                if (atr.getAcID() == atrEsc.getAcID()) {
                                    out.println("checked");
                                }
                            }
                            out.println(">\t" + atr.getAcNombre());
                            out.println("<input readonly hidden='true' value ='" + atr.getAcDescripcion() + "' id=atrDesc'" + atr.getAcID() + "'/>");
                            out.println("</td>");
                        }
                        out.println("</tr>");

                    }

                    out.println("</div>");
                    out.println("</tbody>");
                    out.println("</table>");
                %>
                <table width="100" border="0" class="tblCent">
                    <tbody>
                        <tr>
                            <td><input type="submit" name="btnqaw4GuardarSelec" value="Guardar Seleccionados" class="btn btn-primary"</td>
                            <td><input type="reset" value="Cancelar" class="btn btn-danger"/></td>
                        </tr>
                        <tr>
                            <td>Nombre:</td>
                            <td><input type="text" name="TxtAtribNombreNueAtri" class="form-control"/></td>
                        </tr>
                        <tr>
                            <td>Descripción:</td>
                            <td> <input type="text" name="TxtAtribDescripNueAtrib" class="form-control"/></td>
                        </tr>
                        <tr>
                            <td><input type="submit" name="BtnQaw4GuardarNuevoAtributo" value="Guardar" class="btn btn-primary"/></td>
                            <td><input type="reset" value="Cancelar" class="btn btn-danger"/></td>
                        </tr>
                    </tbody>
                </table>
                <input type="text" hidden="hidden" id="txtRuta" value='<%out.print(proyectoActual.getProID().toString() + "/QAW4/");%>'/>
                <!--
                                <div class="col-lg-7 col-md-6 col-sm-12">
                                    <h2 class="page-header">Rationale:</h2>
                                    <textarea rows="5" cols="120" name="ratqaw4" class="form-control parrafo"><%
                                        session.setAttribute("pasoActual", "qaw4");
                                        /*                        ratq = p.RationaleQAW(proyectoActual.getProID(), "qaw4");
                                        if (ratq != null) {
                                            int indiceAtribs = 0;
                                            String ratio = ratq.getRatQawDescripcion();
                                            if (ratio != null || ratio != "") {
                                                indiceAtribs = ratio.indexOf("~|~|") + 4;
                                            }
                                            out.print(ratio.substring(indiceAtribs));
                                        }
                                         */                        %></textarea>
                                    <br/>
                                    <input type="submit" value="Guardar" name="btnQaw4Guardar" class="btn btn-primary"/>
                
                                </div>
                -->            </form>

            <!--            <div class="col-lg-5 col-md-6 col-sm-12">
                            <div>
                                <h2 class="page-header">Archivos:</h2>
                                <form name="qaw-4" action="QAW4" method="post"  enctype="multipart/form-data">
                                    <table width="400" border="0" class="tblCent">
                                        <tr><td><input type="file" name="archivo" id="myfile" class="filestyle"/></td>
                                            <td><input type="submit" value="subir archivo" name="btnQawsubir" class="btn btn-primary"/></td></tr>
                                    </table>
                                </form>
                            </div>
                            <div class="divScroll">
                                <form name="qaw-4" action="QAW4"> 
            
                                    <table width="400" border="0" class="tblCentfull">
                                        <tbody>
            <%
 /*                                    GuardarArchivo arch = new GuardarArchivo();
                List<File> archivos = null;
                if (ratq != null) {
                    archivos = arch.listarArchivos(ratq.getRatQawArchivo());
                }
                if (archivos != null) {
                    for (File archivo : archivos) {
                        out.print("<tr>");
                        out.print("<td>" + archivo.getName() + "</td>");
                        out.print("<td class='alDer'>" + "<button type=\"submit\"  name=\"btnQawEliminar" + archivo.getName() + "\" class=\"btn btn-primary \">  <span class=\"glyphicon glyphicon-trash\" aria-hidden=\"true\"></span></button>        ");
                        out.print("<button type=\"submit\" value=\"Descargar\" name=\"btnQawBajar" + archivo.getName() + "\" class=\"btn btn-primary\"/>  <span class=\"glyphicon glyphicon-download-alt\" aria-hidden=\"true\"></span></button>" + "</td>");
                        out.print("</tr>");
                    }
                }
                 */%>
        </tbody>
    </table>
</form>
</div>
</div>
-->         <%@include file='rationaleQaw.jsp'%>  
            <form name="qaw-4" action="QAW4">   
                <div class="col-lg-12 col-md-12 col-sm-12">    
                    <ul class="list-unstyled list-inline alCen">
                        <li><button type="submit" class="btn btn-lg btn-default prev-step" name="btnQaw4anterior"><i class="fa fa-chevron-left"></i> Anterior</button></li>
                        <li><button type="submit" class="btn btn-lg btn-default" name="btnQawInicio">Cerrar Proyecto  <i class="fa fa-dot-circle-o"></i></button></li>
                        <li><button type="submit" class="btn btn-lg btn-info next-step" name="btnQaw4Continuar">Siguiente <i class="fa fa-chevron-right"></i></button></li>
                    </ul>
                </div> 
            </form>
        </div>
    </body>
</html>
