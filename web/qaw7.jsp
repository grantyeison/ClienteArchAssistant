<%-- 
    Document   : qaw7
    Created on : 25/01/2017, 08:34:12 AM
    Author     : Prometheus
--%>

<%@page import="java.io.File"%>
<%@page import="Servlets.GuardarArchivo"%>
<%@page import="servicios.Escenario"%>
<%@page import="java.util.List"%>
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
            <form name="qaw-7" action="QAW7">
                <h2 class="subtitle">QAW</h2>
                <h2 class="bienvenida"><jsp:useBean id="proyectoActual" scope="session" class="servicios.Proyecto" />
                    <jsp:getProperty name="proyectoActual" property="proNombre" /></h2>
                <table width="100%" border="0" class="tblCent">
                    <tbody>
                        <tr><% String avance = proyectoActual.getProAvance();
                            int pas = Integer.parseInt(avance.substring(3));

                            switch (pas) {
                                case 0:
                                    out.println("<td><a href='qaw0.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default  btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-primary  btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                    break;
                                case 1:
                                    out.println("<td><a href='qaw0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                    out.println("<td><a href='qaw1.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default  btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-primary  btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                    break;
                                case 2:
                                    out.println("<td><a href='qaw0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                    out.println("<td><a href='qaw1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                    out.println("<td><a href='qaw2.jsp' class='btn btn-success  btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-primary  btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                    break;
                                case 3:
                                    out.println("<td><a href='qaw0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                    out.println("<td><a href='qaw1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                    out.println("<td><a href='qaw2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                    out.println("<td><a href='qaw3.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-primary  btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                    break;
                                case 4:
                                    out.println("<td><a href='qaw0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                    out.println("<td><a href='qaw1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                    out.println("<td><a href='qaw2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                    out.println("<td><a href='qaw3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                    out.println("<td><a href='qaw4.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-primary  btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                    break;
                                case 5:
                                    out.println("<td><a href='qaw0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                    out.println("<td><a href='qaw1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                    out.println("<td><a href='qaw2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                    out.println("<td><a href='qaw3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                    out.println("<td><a href='qaw4.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                    out.println("<td><a href='qaw5.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-primary  btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                    break;
                                case 6:
                                    out.println("<td><a href='qaw0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                    out.println("<td><a href='qaw1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                    out.println("<td><a href='qaw2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                    out.println("<td><a href='qaw3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                    out.println("<td><a href='qaw4.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                    out.println("<td><a href='qaw5.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                    break;
                                case 7:
                                    out.println("<td><a href='qaw0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                    out.println("<td><a href='qaw1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                    out.println("<td><a href='qaw2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                    out.println("<td><a href='qaw3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                    out.println("<td><a href='qaw4.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                    out.println("<td><a href='qaw5.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                    out.println("<td><a href='qaw6.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                    break;
                                case 8:
                                    out.println("<td><a href='qaw0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                    out.println("<td><a href='qaw1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                    out.println("<td><a href='qaw2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                    out.println("<td><a href='qaw3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                    out.println("<td><a href='qaw4.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                    out.println("<td><a href='qaw5.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                    out.println("<td><a href='qaw6.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                    out.println("<td><a href='qaw7.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                    out.println("<td><a href='qaw8.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                    break;
                            }
                            %></tr>
                    </tbody>
                </table>
                <h2 class="page-header">Priorización de los escenarios:</h2>
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="col-lg-3 col-md-2"></div>
                    <div class="col-lg-6 col-md-8 col-sm-12">
                        Una vez estén los escenarios definitivos a usar en el sistema, los stakeholders realizarán una
                        <div  id="descqaw7" class="collapse">
                            votación para organizarlos por su nivel de importancia; se asigna una cantidad de votos a cada participante igual a un tercio de la cantidad de escenarios que haya y se redondea al número par superior o igual, de este modo se podrá hacer dos rondas de votaciones de modo que cada participante indique en la ronda inicial con la mitad de sus votos los escenarios más importantes y luego nuevamente en la segunda ronda, una persona puede votar en ambas rondas por los mismos escenarios.
                        </div>
                        <input readonly="true" style="border-width:0; color:blue; text-decoration: underline;" data-toggle="collapse" data-target="#descqaw7" id="verDescPaso" value="ver más...">
                    </div>
                    <div class="col-lg-3 col-md-2"></div>
                </div>

                <h2 class="page-header">Escenarios de calidad:</h2>

                <table width="100%" border="3" class="tblCentContent">
                    <tbody>
                        <tr>
                            <th scope="col" class="alCen">Nombre</th>
                            <th scope="col" class="alCen">Estímulo</th>
                            <th scope="col" class="alCen">ambiente</th>
                            <th scope="col" class="alCen">Respuesta</th>
                            <th scope="col" class="alCen">Votos</th>
                        </tr>
                        <%
                            ArchAssistantBean archB = new ArchAssistantBean();
                            List<Escenario> listaEsc = archB.ListEscenarios(proyectoActual,"qaw6");
                            for (Escenario esce : listaEsc) {
                                out.println("<tr>");
                                out.println("<td>");
                                out.println(esce.getEscNombre());
                                out.println("</td>");
                                out.println("<td>");
                                out.println(esce.getEscEstimulo());
                                out.println("</td>");
                                out.println("<td>");
                                out.println(esce.getEscAmbiente());
                                out.println("</td>");
                                out.println("<td>");
                                out.println(esce.getEscRespuesta());
                                out.println("</td>");
                                out.println("<td>");
                                if (esce.getEscPrioridad() != null) {
                                    out.println(esce.getEscPrioridad());
                                } else {
                                    out.println(0);
                                }
                                out.println("<button type=\"submit\" value=\"votar\" name=\"btnQaw7Prioridad" + esce.getEscID() + "\" class=\"btn btn-primary\" >  <span class=\"glyphicon glyphicon-thumbs-up\" aria-hidden=\"true\"></span></button></td>");
                                out.println("</tr>");
                            }
                        %>
                    </tbody>
                </table>
                <input type="text" hidden="hidden" id="txtRuta" value='<%out.print(proyectoActual.getProID().toString() + "/QAW7/");%>'/>

                <!--                <div class="col-lg-7 col-md-6 col-sm-12">
                                    <h2 class="page-header">Rationale:</h2>
                                    <textarea rows="5" cols="120" name="ratqaw7" class="form-control parrafo"><%
                                        session.setAttribute("pasoActual", "qaw7");
                                        /*                        ArchAssistantBean p = new ArchAssistantBean();
                                        Rationaleqaw ratq = p.RationaleQAW(proyectoActual.getProID(), "qaw7");
                                        if (ratq != null) {
                                            out.print(ratq.getRatQawDescripcion());
                                        }
                                         */%></textarea>
                                    <br/>
                                    <input type="submit" value="Guardar" name="btnQaw7Guardar" class="btn btn-primary"/>
                                </div>
                -->            </form>
                <%@include file='rationaleQaw.jsp'%>  
            <!--            <div class="col-lg-5 col-md-6 col-sm-12">
                            <div>
                                <h2 class="page-header">Archivos:</h2>
                                <form name="qaw-7" action="QAW7" method="post" enctype="multipart/form-data">
                                    <table width="400" border="0" class="tblCent">
                                        <tr><td><input type="file" name="archivo" id="myfile"/></td>
                                            <td><input type="submit" value="subir archivo" name="btnQawsubir" class="btn btn-primary"/></td></tr>
                                    </table>
                                </form>
                            </div>
                            <div class="divScroll">
                                <form name="qaw-7" action="QAW7"> 
            
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
                        out.print("<td class='alDer'>"+"<button type=\"submit\"  name=\"btnQawEliminar"+archivo.getName()+"\" class=\"btn btn-primary \">  <span class=\"glyphicon glyphicon-trash\" aria-hidden=\"true\"></span></button>        ");
                        out.print("<button type=\"submit\" value=\"Descargar\" name=\"btnQawBajar"+archivo.getName()+"\" class=\"btn btn-primary\"/>  <span class=\"glyphicon glyphicon-download-alt\" aria-hidden=\"true\"></span></button>"+"</td>");
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
            <div class="col-lg-12 col-md-12 col-sm-12">
                <form name="qaw-7" action="QAW7">   
                    <div class="col-lg-12 col-md-12 col-sm-12">    
                        <ul class="list-unstyled list-inline alCen">
                            <li><button type="submit" class="btn btn-lg btn-default prev-step" name="btnQaw7anterior"><i class="fa fa-chevron-left"></i> Anterior</button></li>
                            <li><button type="submit" class="btn btn-lg btn-default" name="btnQawInicio">Cerrar Proyecto  <i class="fa fa-dot-circle-o"></i></button></li>
                            <li><button type="submit" class="btn btn-lg btn-info next-step" name="btnQaw7Continuar">Siguiente <i class="fa fa-chevron-right"></i></button></li>
                        </ul>
                    </div> 
                </form>
            </div>
        </div>
    </body>
</html>
