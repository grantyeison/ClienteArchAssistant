<%-- 
    Document   : crearProyecto
    Created on : 29/12/2016, 07:16:41 PM
    Author     : Prometheus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ArchAssistant - Nuevo Proyecto</title>
        <link rel="stylesheet" href="./css/bootstrap.min.css" /><!---->
        <link rel="stylesheet" href="./css/estilos.css" /><!---->
        <script src="./js/jquery-3.2.1.js"></script>
        <!--<script src="./js/jquery-3.2.1.min.js" ></script>-->
        <script src="./js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="col-lg-12 col-md-12 col-md-12">
            <h1 class="title">Crear Proyecto </h1>
            <form action="GuardarProyecto" method="POST">
                <table border="0" class="tblCent">
                    <tbody>
                        <tr>
                            <td>Nombre Proyecto: </td>
                            <td><input type="text" name="txtNombreProyecto" value="" class="form-control"/></td>
                        </tr>
                        <tr>
                            <td>Descripcion: </td>
                            <td><textarea name="txtDescripcionProyecto" rows="4" cols="20" class="form-control"></textarea></td>
                        </tr>
                        <tr>
                            <td class="alIzq"><input type="submit" value="Guardar" name="btnGuardarProyecto" class="btn btn-primary"/></td>
                            <td class="alDer"><input type="submit" value="Cancelar" name="btnCancelar" class="btn btn-primary"/></td>
                        </tr>
                    </tbody>
                </table>
            </form>
        </div>
    </body>
</html>
