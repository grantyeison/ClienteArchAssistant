<%-- 
    Document   : add1
    Created on : 25/01/2017, 12:10:18 PM
    Author     : Prometheus
--%>

<%@page import="servicios.Escenario"%>
<%@page import="java.util.List"%>
<%@page import="servicios.Rationaleadd"%>
<%@page import="Beans.ArchAssistantBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ArchAssistant - ADD</title>
    </head>
    <body>
        <script> 
            function seleccionarArchivo(elemento)
            {                
                var file = elemento.files[0];
                var objHidden = document.formulario.nomarchivo;
                objHidden.value = file.name;
                alert("archivo seleccionado " +objHidden.value());
            }
        </script>
        <form name="add-1" action="ADD1" enctype="multipart/form-data" method="POST">
            <h1 align="center">ArchAssistant</h1>
            <h2 align="center">ADD</h2>
            <h2 align="center"><jsp:useBean id="proyectoActual" scope="session" class="servicios.Proyecto" />
            <jsp:getProperty name="proyectoActual" property="proNombre" /></h2>
            <table width="100%" border="0" align="center">
                <tbody>
                  <tr>
                    <td><h1>Paso 1</h1></td>
                    <td><h3>Paso 2</h3></td>
                    <td><h3>Paso 3</h3></td>
                    <td><h3>Paso 4</h3></td>
                    <td><h3>Paso 5</h3></td>
                    <td><h3>Paso 6</h3></td>
                    <td><h3>Paso 7</h3></td>
                    <td><h3>Paso 8</h3></td>
                  </tr>
                </tbody>
            </table>
            <h2>Confirmar que hay suficiente información de los requerimientos:</h2>
            <p align="justify">
                Para iniciar el proceso de ejecutar el método ADD se requiere la lista de requerimientos priorizada por los Stakeholders (interesados), en caso de no estar organizada, ésta se devolverá para que se haga el proceso pertinente.
            </p>

                <h2>Escenarios priorizados:</h2>
            <table width="100%" border="3">
              <tbody>
                <tr>
                  <th scope="col">Código</th>
                  <th scope="col">Nombre</th>
                  <th scope="col">Estímulo</th>
                  <th scope="col">Fuente</th>
                  <th scope="col">Ambiente</th>
                  <th scope="col">Artefacto</th>
                  <th scope="col">Respuesta</th>
                  <th scope="col">Medida</th>
                  <th scope="col">Prioridad</th>
                </tr>
                <%
                    ArchAssistantBean archB = new ArchAssistantBean();
                    List<Escenario> listaEsc = archB.ListEscenarios(proyectoActual);
                    for (Escenario esce : listaEsc)
                    {
                        if (esce.getEscPrioridad()!=null && esce.getEscPrioridad()>0){                            
                            /*
                            out.println("<tr>");
                            out.println("<td>");
                            out.println(esce.getEscID());
                            out.println("</td>");
                            */
                            out.println("<td>");
                            out.println(esce.getEscNombre());
                            out.println("</td>");
                            out.println("<td>");
                            out.println(esce.getEscEstimulo());
                            out.println("</td>");
                            if (esce.getEscFuente() != null) {
                                out.println("<td>");
                                out.println(esce.getEscFuente());
                                out.println("</td>");
                            } else {
                                out.println("<td>&nbsp;</td>");
                            }
                            out.println("<td>" + esce.getEscAmbiente());
                            out.println("</td>");
                            if (esce.getEscArtefacto() != null) {
                                out.println("<td>");
                                out.println(esce.getEscArtefacto());
                                out.println("</td>");
                            } else {
                                out.println("<td>&nbsp;</td>");
                            }
                            out.println("<td>" + esce.getEscRespuesta());
                            out.println("</td>");
                            if (esce.getEscMedidaRespuesta() != null) {
                                out.println("<td>");
                                out.println(esce.getEscMedidaRespuesta());
                                out.println("</td>");
                            } else {
                                out.println("<td>&nbsp;</td>");
                            }
                            out.println("<td>");
                            if (esce.getEscPrioridad() != null) {
                                out.println(esce.getEscPrioridad());
                            } else {
                                out.println(0);
                            }
                            out.println("</td>");
                            out.println("</tr>");
                        }                        
                        else{

                                
                        }
                    }
                %>
              </tbody>
           </table>
            <h2>Rationale:</h2>
            <textarea rows="5" cols="100" name="ratadd1"><%
                ArchAssistantBean p = new ArchAssistantBean();
                    Rationaleadd rata = p.RationaleADD(proyectoActual.getProID(),"add1");
                    if (rata != null)
                    {
                        out.print(rata.getRatAddDescripcion());
                    }%>
            </textarea>  
            <div>
                <table width="100" border="0">
                    <tbody>
                        <tr>
                            <input type="file" name="archivo" onchange="seleccionarArchivo(this) "/>
                        </tr>
                        <tr>
                            <td><input type="submit" value="Guardar" name="btnAdd1Guardar"/></td>
                            <td>
                                <td class="alDer"><input type="submit" value="Cerrar Proyecto" name="btnQawInicio" class="btn btn-primary btn-lg"/></td>
                        <input type="submit" value="Continuar" name="btnAdd1Continuar"/>
                                <input type="hidden" name="nomarchivo" value="" />
                            </td>
                            
                        </tr>
                    </tbody>
                </table>            
            </div>
        </form>
    </body>
</html>
