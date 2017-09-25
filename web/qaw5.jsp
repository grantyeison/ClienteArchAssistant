<%-- 
    Document   : qaw5
    Created on : 25/01/2017, 08:33:48 AM
    Author     : Prometheus
--%>

<%@page import="java.io.File"%>
<%@page import="Servlets.GuardarArchivo"%>
<%@page import="java.util.LinkedList"%>
<%@page import="servicios.Atributocalidad"%>
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
            <form name="qaw-5" action="QAW5">
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
                                    out.println("<td><a href='#' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                    break;
                                case 1:
                                    out.println("<td><a href='qaw0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                    out.println("<td><a href='qaw1.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default  btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                    break;
                                case 2:
                                    out.println("<td><a href='qaw0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                    out.println("<td><a href='qaw1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                    out.println("<td><a href='qaw2.jsp' class='btn btn-success  btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                    break;
                                case 3:
                                    out.println("<td><a href='qaw0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                    out.println("<td><a href='qaw1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                    out.println("<td><a href='qaw2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                    out.println("<td><a href='qaw3.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                    break;
                                case 4:
                                    out.println("<td><a href='qaw0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                    out.println("<td><a href='qaw1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                    out.println("<td><a href='qaw2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                    out.println("<td><a href='qaw3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                    out.println("<td><a href='qaw4.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                    break;
                                case 5:
                                    out.println("<td><a href='qaw0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                    out.println("<td><a href='qaw1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                    out.println("<td><a href='qaw2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                    out.println("<td><a href='qaw3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                    out.println("<td><a href='qaw4.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                    break;
                                case 6:
                                    out.println("<td><a href='qaw0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                    out.println("<td><a href='qaw1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                    out.println("<td><a href='qaw2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                    out.println("<td><a href='qaw3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                    out.println("<td><a href='qaw4.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                    out.println("<td><a href='qaw5.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                    out.println("<td><a href='qaw6.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                    break;
                                case 7:
                                    out.println("<td><a href='qaw0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                    out.println("<td><a href='qaw1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                    out.println("<td><a href='qaw2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                    out.println("<td><a href='qaw3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                    out.println("<td><a href='qaw4.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                    out.println("<td><a href='qaw5.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                    out.println("<td><a href='qaw6.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                    out.println("<td><a href='qaw7.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                    out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                    break;
                                case 8:
                                    out.println("<td><a href='qaw0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                    out.println("<td><a href='qaw1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                    out.println("<td><a href='qaw2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                    out.println("<td><a href='qaw3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                    out.println("<td><a href='qaw4.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                    out.println("<td><a href='qaw5.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                    out.println("<td><a href='qaw6.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                    out.println("<td><a href='qaw7.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                    out.println("<td><a href='qaw8.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                    break;
                            }
                            %></tr>
                    </tbody>
                </table>
                <h2 class="page-header">Lluvia de ideas de escenarios:</h2>
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="col-lg-3 col-md-2"></div>
                    <div class="col-lg-6 col-md-8 col-sm-12">
                        Una vez hecha la presentación de los atributos directores o drivers del sistema, 
                        <div  id="descqaw5" class="collapse">
                            el o los facilitadores guiarán a los stakeholders en una lluvia de ideas en modo round-robin en la que cada uno generará un escenario dependiendo de sus funciones e intereses en el sistema, 
                            cada escenario debe constar de un estímulo, un ambiente y una respuesta, se espera que cada stakeholder genere al menos dos escenarios; hay que tener en cuenta que este paso es el corazón del proceso QAW por lo tanto hay que ser muy cuidadosos.
                        </div>
                        <input readonly="true" style="border-width:0; color:blue; text-decoration: underline;" data-toggle="collapse" data-target="#descqaw5" id="verDescPaso" value="ver más...">

                    </div>

                    <div class="col-lg-3 col-md-2"></div>
                </div>

                <h2 class="bienvenida page-header">Escenarios:</h2>
                <div class="col-lg-6 col-md-12 col-sm-12">
                    <select name="slcAtributo">
                        <%
                            ArchAssistantBean p = new ArchAssistantBean();

                            Rationaleqaw ratq4 = p.RationaleQAW(proyectoActual.getProID(), "qaw4");
                            Atributocalidad atrActual = (Atributocalidad) session.getAttribute("AtributoActual");
                            List<Atributocalidad> listaAtributos = p.ObtenerAtributosEscogidos(ratq4);

                            for (Atributocalidad atr : listaAtributos) {
                                out.println("<option value=\"" + atr.getAcID() + "\" ");
                                if (atrActual != null) {
                                    if (atrActual.getAcID() == atr.getAcID()) {
                                        out.println("selected=\"selected\"");
                                    }
                                }

                                out.println(">" + atr.getAcNombre() + "</option>");
                            }
                            session.setAttribute("sigAtr", 0);
                        %>
                    </select>
                    <input type="submit" name="btnQaw5AtriSelecc" value="Seleccionar" class="btn btn-primary"/>

                    <table width="100" border="0" class="tblCentContent">
                        <tbody>
                            <tr>
                                <td>Nombre:</td>
                                <td><input type="text" name="txtqaw5Nombre" class="form-control"/></td>
                            </tr>
                            <tr>
                                <td>Estímulo:</td>
                                <td><input type="text" name="txtqaw5Estimulo" class="form-control"/></td>
                            </tr>
                            <tr>
                                <td>Ambiente:</td>
                                <td><input type="text" name="txtqaw5Ambiente" class="form-control"/></td>
                            </tr>
                            <tr>
                                <td>Respuesta:</td>
                                <td><input type="text" name="txtqaw5Respuesta" class="form-control"/></td>
                            </tr>
                            <tr>
                                <td><input type="submit" value="Agregar" name="btnqaw5GuardarEscenario" class="btn btn-primary"/></td>
                                <td><input type="reset" value="Cancelar" class="btn btn-danger"/></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="col-lg-6 col-md-12 col-sm-12">
                    <table width="100%" border="3" class="tblCentfull">
                        <tbody>
                            <tr>
                                <th scope="col">Nombre</th>
                                <th scope="col">Estímulo</th>
                                <th scope="col">Ambiente</th>
                                <th scope="col">Respuesta</th>
                            </tr>
                            <%
                                ArchAssistantBean archB = new ArchAssistantBean();
                                List<Escenario> listaEsc = archB.ListEscenarios(proyectoActual,"qaw5");

                                if (atrActual != null) {
                                    for (Escenario esce : listaEsc) {
                                        System.out.println("escenarios " + esce.getTblAtributoCalidadacID());
                                        if (esce.getTblAtributoCalidadacID().getAcID() == atrActual.getAcID()) {
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
                                            out.println("</tr>");
                                        }

                                    }
                                }

                            %>
                        </tbody>
                    </table>
                </div>
                <input type="text" hidden="hidden" id="txtRuta" value='<%out.print(proyectoActual.getProID().toString() + "/QAW5/");%>'/>

                <!--                <div class="col-lg-7 col-md-6 col-sm-12">
                                    <h2 class="page-header">Rationale:</h2>
                                    <textarea rows="5" cols="120" name="ratqaw5" class="form-control parrafo"><%
                                        session.setAttribute("pasoActual", "qaw5");
                                        /*                        p = new ArchAssistantBean();
                                        Rationaleqaw ratq = p.RationaleQAW(proyectoActual.getProID(), "qaw5");
                                        System.out.println("rationale :" + ratq);
                                        if (ratq != null) {
                                            String ratio = ratq.getRatQawDescripcion();
                                            if (ratio != null) {
                                                out.print(ratio);
                                            }
                                        }
                                         */                        %></textarea>
                                    <br/>
                                    <input type="submit" value="Guardar" name="btnQaw5Guardar"  class="btn btn-primary"/>
                
                                </div>
                -->            </form>

            <!--            <div class="col-lg-5 col-md-6 col-sm-12">
                            <div>
                                <h2 class="page-header">Archivos:</h2>
            
                                <form name="qaw-5" action="QAW5" method="post" enctype="multipart/form-data">
                                    <table width="400" border="0" class="tblCent">
                                        <tr><td><input type="file" name="archivo" id="myfile"/></td>
                                            <td><input type="submit" value="subir archivo" name="btnQawsubir" class="btn btn-primary"/></td></tr>
                                    </table>
                                </form>
                            </div>
                            <div class="divScroll">
                                <form name="qaw-5" action="QAW5"> 
                                    <table width="400" border="0" class="tblCentfull">
                                        <tbody>
            <%
 /*                                   GuardarArchivo arch = new GuardarArchivo();
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
-->     </div>
        <%@include file='rationaleQaw.jsp'%>  
        <form name="qaw-5" action="QAW5">    

            <div class="col-lg-12 col-md-12 col-sm-12">    
                <ul class="list-unstyled list-inline alCen">
                    <li><button type="submit" class="btn btn-lg btn-default prev-step" name="btnQaw5anterior"><i class="fa fa-chevron-left"></i> Anterior</button></li>
                    <li><button type="submit" class="btn btn-lg btn-default" name="btnQawInicio">Cerrar Proyecto  <i class="fa fa-dot-circle-o"></i></button></li>
                    <li><button type="submit" class="btn btn-lg btn-info next-step" name="btnQaw5Continuar">Siguiente <i class="fa fa-chevron-right"></i></button></li>
                </ul>
            </div> 
        </table>
    </form>
</div>
</body>
</html>
