<%-- 
    Document   : add7
    Created on : 25/01/2017, 12:30:55 PM
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
        <form name="add-7" action="ADD7">
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
                      <td><a href="ADD5.html"><h3>Paso 5</h3></a></td>
                      <td><a href="ADD6.html"><h3>Paso 6</h3></a></td>
                      <td><h1>Paso 7</h1></td>
                      <td><h3>Paso 8</h3></td>
                    </tr>
                  </tbody>
                </table>
                <h2>Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados:</h2>
                <p align="justify">
                    Verificar que la descomposición de elementos cumple hasta ahora con los requerimientos funcionales, atributos de calidad y restricciones de diseño, y se preparan los elementos hijos para su tratamiento en pasos posteriores.
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

                <!-- las responsabilidades que luego se convierten en restricciones vienen dadas por los escenarios asociados a cada módulo -->

                 <p>En este punto, los Submódulos pasan a convertirse en módulos para su posterior descomposición.</p>

            <h2>Rationale:</h2>
            <textarea rows="5" cols="120" name="ratadd7">
                <%
                    ArchAssistantBean p = new ArchAssistantBean();
                    Rationaleadd rata = p.RationaleADD(proyectoActual.getProID(),"add7");
                    if (rata != null)
                    {
                        out.print(rata.getRatAddDescripcion());
                    }
                %>
            </textarea>
            <table width="100" border="0">
              <tbody>
                <tr>
                    <td><input type="submit" value="Guardar" name="btnAdd7Guardar"/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Regresar" name="btnAdd7anterior"/></td>
                    <td class="alDer"><input type="submit" value="Cerrar Proyecto" name="btnQawInicio" class="btn btn-primary btn-lg"/></td>
                        <td><input type="submit" value="Continuar" name="btnAdd7Continuar"/></td>
                </tr>
              </tbody>
            </table>
        </form>
    </body>
</html>
