<%-- 
    Document   : RegistrarUsuario
    Created on : 29/12/2016, 10:11:17 AM
    Author     : Prometheus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ArchAssistant - Registrar Usuario</title>
        <link rel="stylesheet" href="./css/bootstrap.min.css" /><!---->
        <link rel="stylesheet" href="./css/estilos.css" /><!---->
        <script src="./js/jquery-3.2.1.js"></script>
        <!--<script src="./js/jquery-3.2.1.min.js" ></script>-->
        <script src="./js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="col-lg-12 col-md-12 col-md-12">
            <h1 class="title">Registrar nuevo usuario</h1>
            <form name="FormRegUsuario" action="RegistrarUsuario" method="POST">
                <table border="0" class="tblCent">
                    <tr>
                        <td class="alDer">Nombre: </td>
                        <td><input type="text" name="txtUsuNueNombre" value="" class="form-control" /></td>
                    </tr>
                    <tr>
                        <td class="alDer">Usuario: </td>
                        <td><input type="text" name="txtUsuNueUsuario" value="" class="form-control"/></td>
                    </tr>
                    <tr>
                        <td class="alDer">Contraseña: </td>
                        <td><input type="password" name="txtUsuNueContrasena1" value="" class="form-control"/></td>
                    </tr>
                    <tr>
                        <td class="alDer">Repita contraseña: </td>
                        <td><input type="password" name="txtUsuNueContrasena2" value="" class="form-control"/></td>
                    </tr>
                    <tr>
                        <td class="alIzq"><input type="submit" value="Guardar" name="btnGuardarNuevoUsuario" class="btn btn-primary"/></td>
                        <td class="alDer"><input type="reset" value="Cancelar" class="btn btn-primary"/></td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
