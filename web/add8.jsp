<%-- 
    Document   : add8
    Created on : 25/01/2017, 12:31:04 PM
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
        <form name="add-8" action="ADD8">
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
                      <td><a href="ADD7.html"><h3>Paso 7</h3></a></td>
                      <td><h1>Paso 8</h1></td>
                    </tr>
                  </tbody>
                </table>
                <h2>Repetir los pasos 2 al 7 para el siguiente elemento a descomponer:</h2>
                <p align="justify">
                    A esta altura, se tiene un elemento padre descompuesto en hijos, y cada uno de estos tiene asignado una descripción de interfaces, atributos de calidad, requerimientos funcionales y restricciones de diseño; por lo tanto, cada hijo está preparado para ser descompuesto como un elemento padre siguiendo los pasos anteriormente descritos.
                    </p>
            <h2>Rationale:</h2>
            <textarea rows="5" cols="120" name="ratadd8">
                <%
                    ArchAssistantBean p = new ArchAssistantBean();
                    Rationaleadd rata = p.RationaleADD(proyectoActual.getProID(),"add8");
                    if (rata != null)
                    {
                        out.print(rata.getRatAddDescripcion());
                    }
                %>
            </textarea>
            <table width="100" border="0">
              <tbody>
                <tr>
                    <td><input type="submit" value="Guardar" name="btnAdd8Guardar"/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Regresar" name="btnAdd8anterior"/></td>
                    <td class="alDer"><input type="submit" value="Cerrar Proyecto" name="btnQawInicio" class="btn btn-primary btn-lg"/></td>
                        <td><input type="submit" value="Continuar" name="btnAdd8Continuar"/></td>
                    <td><input type="submit" value="Finalizar" name="btnAdd8Finalizar"/></td>
                </tr>
              </tbody>
            </table>
        </form>
    </body>
</html>
