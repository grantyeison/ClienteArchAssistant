<%-- 
    Document   : qaw0
    Created on : 20/01/2017, 03:43:34 PM
    Author     : Prometheus
--%>

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
            <form name="qaw-0" action="QAW0">
            <h2 align="center" class="bienvenida">QAW</h2>
            <h2 align="center" class="bienvenida"><jsp:useBean id="proyectoActual" scope="session" class="servicios.Proyecto" />
                <jsp:getProperty name="proyectoActual" property="proNombre" /></h2>
                <table width="100%" border="0" class="tblCent">
                    <tbody>
                        <tr>
                            <% String avance = proyectoActual.getProAvance();
                                int pas = Integer.parseInt(avance.substring(3));

                                switch (pas) {
                                    case 0:
                                        out.println("<td><a href='#' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                        break;
                                    case 1:
                                        out.println("<td><a href='qaw0.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='qaw1.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                        break;
                                    case 2:
                                        out.println("<td><a href='qaw0.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='qaw1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                        out.println("<td><a href='qaw2.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                        break;
                                    case 3:
                                        out.println("<td><a href='qaw0.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='qaw1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                        out.println("<td><a href='qaw2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                        out.println("<td><a href='qaw3.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                        break;
                                    case 4:
                                        out.println("<td><a href='qaw0.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='qaw1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                        out.println("<td><a href='qaw2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                        out.println("<td><a href='qaw3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                        out.println("<td><a href='qaw4.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                        break;
                                    case 5:
                                        out.println("<td><a href='qaw0.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='qaw1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                        out.println("<td><a href='qaw2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                        out.println("<td><a href='qaw3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                        out.println("<td><a href='qaw4.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='qaw5.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                        break;
                                    case 6:
                                        out.println("<td><a href='qaw0.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='qaw1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                        out.println("<td><a href='qaw2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                        out.println("<td><a href='qaw3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                        out.println("<td><a href='qaw4.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='qaw5.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                        out.println("<td><a href='qaw6.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                        break;
                                    case 7:
                                        out.println("<td><a href='qaw0.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='qaw1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
                                        out.println("<td><a href='qaw2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del negocio o misión del sistema a desarrollar'><h1>2</h1></a></td>");
                                        out.println("<td><a href='qaw3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación del plan arquitectural'><h1>3</h1></a></td>");
                                        out.println("<td><a href='qaw4.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Identificación de los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='qaw5.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Lluvia de ideas de escenarios'><h1>5</h1></a></td>");
                                        out.println("<td><a href='qaw6.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Consolidación de escenarios'><h1>6</h1></a></td>");
                                        out.println("<td><a href='qaw7.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Priorización de los escenarios'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Refinamiento de los escenarios'><h1>8</h1></a></td>");
                                        break;
                                    case 8:
                                        out.println("<td><a href='qaw0.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='¿Que es QAW?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='qaw1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Presentación de QAW e introducciones'><h1>1</h1></a></td>");
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
                <h2 class="page-header">Que es QAW?</h2>

                <p class="col-lg-5 col-md-9 col-sm-12 parrafo">
                    QAW o Taller de Atributos de Calidad en español es un método optimizado que involucra 
                    a los stakeholders del sistema es decir, los usuarios, instaladores, administradores 
                    (de la base de datos, de redes, de escritorios de ayuda, etc.), arquitectos, compradores, 
                    ingenieros de software o de sistemas, y otros; a principios del ciclo de vida del proyecto 
                    para descubrir los atributos conductores (Drivers) de calidad del sistema software. QAW 
                    permite identificar los atributos de calidad más importantes y los escenarios asociados con 
                    ellos además de aclarar los requisitos del sistema antes de que se haya creado la arquitectura 
                    del software. El método QAW es usado para generar, priorizar y refinar los requerimientos de 
                    atributos de calidad de software en forma de escenarios. Los resultados de QAW están sujetos 
                    a un proceso de análisis y planificación para determinar medidas adicionales, tales como la 
                    aplicación del método ADD[14].
                    En [15] se puede apreciar que el propósito principal de QAW es que los arquitectos, desarrolladores, 
                    usuarios, sponsors, y demás interesados, alcancen una apreciación común de lo que será el producto 
                    final mediante los escenarios; éstos serán la herramienta usada para consolidar todo lo que se 
                    espera que haga el producto final en términos claros y sencillos para todos los stakeholders.
                    En la Figura 1. Se presenta las entradas, salidas, y participantes de QAW. Este gráfico se basa 
                    en una notación funcional [IEEE 98] donde los insumos fluyen por la izquierda, salidas fluyen 
                    hacia la derecha, y los participantes del método se indican desde abajo[14][15]. </p>

                <img src="img/qaw.png" class="img-rounded"/>

                <p class="col-lg-5 col-md-9 col-sm-12 parrafo">
                    Figura I. Entradas, salidas y participantes QAW
                    Para este proceso debe haber al menos 5 stakeholders presentes pero no más de 30 por un solo taller, 
                    es importante tener en cuenta que todos los participantes del QAW deben estar enfocados y 
                    comprometidos con el proceso que se realizará, ellos también pueden hacer las preguntas que quieran 
                    en el momento que quieran ya que es imperativo que comprendan muy bien lo que se espera hacer de la 
                    forma más clara posible, el o los facilitadores pueden interrumpir las discusiones en cualquier 
                    momento que consideren apropiado si éstas no están aportando al taller ya que en ocasiones se suele 
                    divagar cuando se realizan este tipo de actividades, todo con el propósito de aprovechar el tiempo 
                    al máximo ya que el QAW es un proceso demandante[15].
                </p>
                <div class="col-lg-12 col-md-12 col-sm-12">    
                    <ul class="list-unstyled list-inline alCen">
                        <li><button type="submit" class="btn btn-lg btn-default" name="btnQawInicio">Cerrar Proyecto  <i class="fa fa-dot-circle-o"></i></button></li>
                        <li><button type="submit" class="btn btn-lg btn-info next-step" name="btnQaw0Continuar">Siguiente <i class="fa fa-chevron-right"></i></button></li>
                    </ul>
                </div>     
            </form>
        </div>
    </body>
</html>
