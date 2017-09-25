<%-- 
    Document   : qaw1
    Created on : 20/01/2017, 04:16:32 PM
    Author     : Prometheus
--%>

<%@page import="java.io.File"%>
<%@page import="java.util.List"%>
<%@page import="Servlets.GuardarArchivo"%>
<%@page import="Beans.ArchAssistantBean"%>
<%@page import="servicios.Rationaleqaw"%>
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
            <form name="qaw-1" action="QAW1">
                <h2 class="subtitle">QAW</h2>
                <h2 class="bienvenida"><jsp:useBean id="proyectoActual" scope="session" class="servicios.Proyecto" />
                    <jsp:getProperty name="proyectoActual" property="proNombre" /></h2>
                <table width="100%" border="0" class="tblCent">
                    <tbody>
                        <tr><% String avance = proyectoActual.getProAvance();
                            int pas = Integer.parseInt(avance.substring(3));

                            switch (pas) {
                                case 0:
                                    out.println("<td><a href='#' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                    break;
                                case 1:
                                    out.println("<td><a href='qaw0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                    out.println("<td><a href='qaw1.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                    break;
                                case 2:
                                    out.println("<td><a href='qaw0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                    out.println("<td><a href='qaw1.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                    out.println("<td><a href='qaw2.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                    break;
                                case 3:
                                    out.println("<td><a href='qaw0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                    out.println("<td><a href='qaw1.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                    out.println("<td><a href='qaw2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                    out.println("<td><a href='qaw3.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                    break;
                                case 4:
                                    out.println("<td><a href='qaw0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                    out.println("<td><a href='qaw1.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                    out.println("<td><a href='qaw2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                    out.println("<td><a href='qaw3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                    out.println("<td><a href='qaw4.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                    break;
                                case 5:
                                    out.println("<td><a href='qaw0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                    out.println("<td><a href='qaw1.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                    out.println("<td><a href='qaw2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                    out.println("<td><a href='qaw3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                    out.println("<td><a href='qaw4.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                    out.println("<td><a href='qaw5.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                    break;
                                case 6:
                                    out.println("<td><a href='qaw0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                    out.println("<td><a href='qaw1.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                    out.println("<td><a href='qaw2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                    out.println("<td><a href='qaw3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                    out.println("<td><a href='qaw4.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                    out.println("<td><a href='qaw5.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                    out.println("<td><a href='qaw6.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                    break;
                                case 7:
                                    out.println("<td><a href='qaw0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                    out.println("<td><a href='qaw1.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                    out.println("<td><a href='qaw2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                    out.println("<td><a href='qaw3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                    out.println("<td><a href='qaw4.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                    out.println("<td><a href='qaw5.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                    out.println("<td><a href='qaw6.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                    out.println("<td><a href='qaw7.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                    break;
                                case 8:
                                    out.println("<td><a href='qaw0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                    out.println("<td><a href='qaw1.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                    out.println("<td><a href='qaw2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                    out.println("<td><a href='qaw3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                    out.println("<td><a href='qaw4.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                    out.println("<td><a href='qaw5.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                    out.println("<td><a href='qaw6.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                    out.println("<td><a href='qaw7.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                    out.println("<td><a href='qaw8.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                    break;
                            }
                            %></tr>
                    </tbody>
                </table>
                <h2 class="page-header">Presentación de QAW e introducciones:</h2>
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="col-lg-3 col-md-2"></div>

                    <div class="col-lg-6 col-md-8 col-sm-12">

                        En este paso, se explica detalladamente el propósito y funcionalidad de QAW
                        <div  id="descqaw1" class="collapse">
                            dando a conocer cada uno de los pasos de manera clara a los involucrados, además 
                            cada uno de ellos se presentará a sí mismo indicando su rol en la organización y su 
                            relación con el sistema a desarrollar.

                        </div>
                        <u><input readonly="true" class="textColl" style="border-width:0; color:blue; text-decoration: underline;" data-toggle="collapse" data-target="#descqaw1" id="verDescPaso" value="ver más..."></u>
                    </div>

                    <div class="col-lg-3 col-md-2"></div>
                </div>
                <input type="text" hidden="hidden" id="txtRuta" value='<%out.print(proyectoActual.getProID().toString() + "/QAW1/");%>'/>
                <!--                <div class="col-lg-7 col-md-6 col-sm-12">
                                    <h2 class="page-header">Rationale:</h2>
                                    <textarea rows="5" cols="120" name="ratqaw1" class="form-control parrafo"><%
                                        session.setAttribute("pasoActual", "qaw1");
                                        /*                       ArchAssistantBean p = new ArchAssistantBean();
                                        Rationaleqaw ratq = p.RationaleQAW(proyectoActual.getProID(), "qaw1");
                                        if (ratq != null) {
                                            out.print(ratq.getRatQawDescripcion());
                                        }
                                         */                        %></textarea>
                                    <br/>
                                    <input type="submit" value="Guardar" name="btnQaw1Guardar" class="btn btn-primary"/>
                                </div>
                -->            </form>

            <!--            <div class="col-lg-5 col-md-6 col-sm-12">
                            <div>
                                <form name="qaw-1" action="QAW1" method="post"  enctype="multipart/form-data">
                                    <h2 class="page-header">Archivos:</h2>
                                    <table width="400" border="0" class="tblCent">
                                        <tr><td><input type="file" name="archivo" id="myfile" class="filestyle"/></td>
                                            <td><input type="submit" value="subir archivo" name="btnQawsubir" class="btn btn-primary"/></td></tr>
                                    </table>
                                </form>
                            </div>
                            <div class="divScroll">
                                <form name="qaw-1" action="QAW1"> 
            
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
                        out.print("<td class='alDer'>" + "<button type=\"submit\" value=\"Eliminar\" name=\"btnQawEliminar"
                                + archivo.getName() + "\" class=\"btn btn-primary\"/>  "
                                + "<span class=\"glyphicon glyphicon-trash\" aria-hidden=\"true\"></span></button>        ");
                        out.print("<button type=\"submit\" value=\"Descargar\" name=\"btnQawBajar"
                                + archivo.getName() + "\" class=\"btn btn-primary\"/>  "
                                + "<span class=\"glyphicon glyphicon-download-alt\" aria-hidden=\"true\">"
                                + "</span></button>" + "</td>");
                        out.print("</tr>");
                    }
                }
                 */%>
        </tbody>
    </table>
</form>
</div>
</div>
            -->
            <%@include file='rationaleQaw.jsp'%>            
            <form name="qaw-1" action="QAW1"> 
                <div class="col-lg-12 col-md-12 col-sm-12">    
                    <ul class="list-unstyled list-inline alCen">
                        <li><button type="submit" class="btn btn-lg btn-default prev-step" name="btnQaw1Anterior"><i class="fa fa-chevron-left"></i> Anterior</button></li>
                        <li><button type="submit" class="btn btn-lg btn-default" name="btnQawInicio">Cerrar Proyecto  <i class="fa fa-dot-circle-o"></i></button></li>
                        <li><button type="submit" class="btn btn-lg btn-info next-step" name="btnQaw1Continuar">Siguiente <i class="fa fa-chevron-right"></i></button></li>
                    </ul>
                </div> 
            </form>
        </div>
    </body>
</html>
