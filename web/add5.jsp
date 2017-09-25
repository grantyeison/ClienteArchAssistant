<%-- 
    Document   : add5
    Created on : 25/01/2017, 12:30:37 PM
    Author     : Prometheus
--%>

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
        <form name="add-5" action="ADD5">
            <h1 align="center">ArchAssistant</h1>
            <h2 align="center">ADD</h2>
            <h2 align="center"><jsp:useBean id="proyectoActual" scope="session" class="servicios.Proyecto" />
            <jsp:getProperty name="proyectoActual" property="proNombre" /></h2>
            <table width="100%" border="0" align="center">
                <tbody>
                    <tr>
                      <td><a href="ADD1.html"><h3>Paso 1</h3></a></td>
                      <td><a href="ADD2.html"><h3>Paso 2</h3></a></td>
                      <td><a href="ADD3.html"><h3>Paso 3</h3></a></td>
                      <td><a href="ADD4.html"><h3>Paso 4</h3></a></td>
                      <td><h1>Paso 5</h1></td>
                      <td><h3>Paso 6</h3></td>
                      <td><h3>Paso 7</h3></td>
                      <td><h3>Paso 8</h3></td>
                    </tr>
                  </tbody>
                </table>
                <h2>Instanciar elementos arquitecturales y asignar responsabilidades:</h2>
                <p align="justify">
                    Cada uno de los elementos que surgieron del paso anterior es instanciado y le son asignadas responsabilidades dependiendo de su tipo, éstas responsabilidades surgen de los requerimientos funcionales asociados a los candidatos a drivers y al elemento padre, al finalizar este paso se tiene una secuencia de responsabilidades dentro de los elementos hijos.
                </p>
                <h2>Submódulos del sistema:</h2>

                  <table width="100%" border="3">
                  <tbody>
                    <tr>
                      <th scope="col">Código</th>
                      <th scope="col">Nombre</th>
                      <th scope="col">Descripción</th>
                      <th scope="col">Final</th>

                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                     </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                  </tbody>
                </table>
                <h2>Escenarios</h2>
                <table width="100%" border="3">
                  <tbody>
                    <tr>
                      <th scope="col">Código</th>
                      <th scope="col">Estímulo</th>
                      <th scope="col">Fuente</th>
                      <th scope="col">Ambiente</th>
                      <th scope="col">Artefacto</th>
                      <th scope="col">Respuesta</th>
                      <th scope="col">Medida</th>
                      <th scope="col">Submódulo</th>

                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                     </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                  </tbody>
               </table>

                    <!-- se debe hacer una validación para comprobar que todos los escenarios han sido asignados a los nuevos módulos hijos  -->

            <h2>Rationale:</h2>
            <textarea rows="5" cols="120" name="ratadd5">
                <%
                    ArchAssistantBean p = new ArchAssistantBean();
                    Rationaleadd rata = p.RationaleADD(proyectoActual.getProID(),"add5");
                    if (rata != null)
                    {
                        out.print(rata.getRatAddDescripcion());
                    }
                %>
            </textarea>
            <table width="100" border="0">
              <tbody>
                <tr>
                    <td><input type="submit" value="Guardar" name="btnAdd5Guardar"/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Regresar" name="btnAdd5anterior"/></td>
                    <td class="alDer"><input type="submit" value="Cerrar Proyecto" name="btnQawInicio" class="btn btn-primary btn-lg"/></td>
                        <td><input type="submit" value="Continuar" name="btnAdd5Continuar"/></td>
                </tr>
              </tbody>
            </table>
        </form>
    </body>
</html>
