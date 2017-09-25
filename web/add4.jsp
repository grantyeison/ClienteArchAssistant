<%-- 
    Document   : add4
    Created on : 25/01/2017, 12:30:27 PM
    Author     : Prometheus
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="javafx.beans.binding.ListBinding"%>
<%@page import="servicios.Preocupacion"%>
<%@page import="servicios.Atributocalidad"%>
<%@page import="servicios.Escenario"%>
<%@page import="servicios.Patron"%>
<%@page import="servicios.Tactica"%>
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
        <form name="add-4" action="ADD4">
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
                        <td><h1>Paso 4</h1></td>
                        <td><h3>Paso 5</h3></td>
                        <td><h3>Paso 6</h3></td>
                        <td><h3>Paso 7</h3></td>
                        <td><h3>Paso 8</h3></td>
                    </tr>
                </tbody>
            </table>
            <h2>Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales:</h2>
            <p align="justify">
                A esta altura, se debe escoger los principales elementos que aparecerán en la arquitectura y las relaciones entre ellos; para determinar estos elementos se debe tener en cuenta las restricciones y los requerimientos que son candidatos a drivers.
            </p>

            <h2>Tácticas:</h2>
            <!-- las tácticas listadas corresponde únicamente a las que satisfagan los drivers del escenario escogido -->
            <table width="100%" border="3">
                <tbody>
                    <tr>
                        <th scope="col">Código</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Descripción</th>
                        <th scope="col">Seleccionar</th>
                    </tr>
                    <%ArchAssistantBean archB = new ArchAssistantBean();
                        List<Escenario> listaEsc = archB.ListarCandidatosDriver(proyectoActual);
                        ArrayList<Preocupacion> listaPre = new ArrayList<Preocupacion>();
                        for(Escenario esc : listaEsc){
                            Atributocalidad atr = esc.getTblAtributoCalidadacID();
                            listaPre.add((Preocupacion)archB.ListarPreocupacionPorAtri(atr));                            
                        }
                        for(Preocupacion p: listaPre){
                            List<Tactica> listaTac = archB.ListarTacticaPorPreo(p);
                            
                            for (Tactica tac : listaTac) {
                            out.println("<tr>");
                            out.println("<td>");                            
                            out.println("<input  type = 'checkbox' name = 'tacticaSel' onchange='SeleccionPadre()' value = '" + tac.getTacID()+ "'/>");
                            //out.println(mod.getModId());
                            out.println("</td>");
                            out.println("<td>");
                            out.println(tac.getTacNombre());
                            out.println("</td>");
                            out.println("<td>");
                            out.println(tac.getTacDescripcion());
                            out.println("</td>");
                            //out.println("<td>");
                            //out.println(mod.getModFinal());
                            //out.println("</td>");
                            out.println("</tr>");
                            }                            
                        }%>
                </tbody>
            </table>

            <h2>Patrones:</h2>
            <!-- Los patrones listados corresponden únicamente los que asociados a las tácticas seleccionadas en la tabla anterior -->
            <table width="100%" border="3">
                <tbody>
                    <tr>
                        <th scope="col">Código</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Descripción</th>
                        <th scope="col">Seleccionar</th>
                    </tr>                    
                    <%
                        archB = new ArchAssistantBean();
                        List<Patron> listaPat = archB.ListarPatronesT();

                        for (Patron pat : listaPat) {
                            out.println("<tr>");
                            out.println("<td>");                            
                            out.println("<input  type = 'checkbox' name = 'tacticaSel' onchange='SeleccionPadre()' value = '" + pat.getPatID()+ "'/>");
                            //out.println(mod.getModId());
                            out.println("</td>");
                            out.println("<td>");
                            out.println(pat.getPatNombre());
                            out.println("</td>");
                            out.println("<td>");
                            out.println(pat.getPatDescripcion());
                            out.println("</td>");
                            //out.println("<td>");
                            //out.println(mod.getModFinal());
                            //out.println("</td>");
                            out.println("</tr>");
                        }%>
                </tbody>
            </table>

            <h2>Submódulos del sistema:</h2>
            <p>En este momento se debe aplicar los patrones seleccionados, tras ésto, el módulo seleccionado anteriormente se 
                dividirá en submódulos, por favor lístelos en la siguiente tabla:</p>
            <table width="100%" border="3">
                <tbody>
                    <tr>
                        <th scope="col">Código</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Descripción</th>
                        <th scope="col">Final</th>
                    </tr>
                </tbody>
            </table>

            <fieldset>
                <legend>Datos del nuevo modulo</legend>
                <div class="uk-form-row">
                    <input type="text" name="nombreMod" value="" placeholder="Nombre modulo" class="uk-form-help-inline" />                        
                </div>                   

                <div class="uk-form-row">
                    <textarea name="descMod" value="" placeholder="Descripcion Modulo" class="uk-form-help-inline"></textarea>
                </div>

                <div class="uk-form-row">
                    <input type="submit" name="btnCrearModulo" value="Crear"/>
                </div>

            </fieldset>
            <h2>Rationale:</h2>
            <textarea rows="5" cols="120" name="ratadd4">
                <%
                    ArchAssistantBean p = new ArchAssistantBean();
                    Rationaleadd rata = p.RationaleADD(proyectoActual.getProID(), "add4");
                    if (rata != null) {
                        out.print(rata.getRatAddDescripcion());
                    }
                %>
            </textarea>
            <table width="100" border="0">
                <tbody>
                    <tr>
                        <td><input type="submit" value="Guardar" name="btnAdd4Guardar"/></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Regresar" name="btnAdd4anterior"/></td>
                        <td class="alDer"><input type="submit" value="Cerrar Proyecto" name="btnQawInicio" class="btn btn-primary btn-lg"/></td>
                        <td><input type="submit" value="Continuar" name="btnAdd4Continuar"/></td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>
