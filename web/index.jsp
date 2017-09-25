<%-- 
    Document   : index
    Created on : 29/12/2016, 09:03:43 AM
    Author     : Prometheus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ArchAssistant inicio</title>
        
        <link rel="stylesheet" href="./css/bootstrap.min.css" /><!---->
        <link rel="stylesheet" href="./css/estilos.css" /><!---->
        <script language="JavaScript">
            function usuarioNoValido()
            {
                window.alert("usuario no válido, verifique usuario y contraseña");
            }
        </script>   
        <script src="./js/jquery-3.2.1.js"></script>
        <!--<script src="./js/jquery-3.2.1.min.js" ></script>-->
        <script src="./js/bootstrap.min.js"></script>
        <!--<script src="./js/bootstrap.js"></script>-->
    </head>
    <body class="loading">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <h1 class="title">Iniciar Sesión</h1>
            <form action="AutenticarUsuario" method="POST">
                <table border="0" class="tblCent">
                    <tbody>
                        <tr>
                            <th>Usuario:</th>
                            <td><input type="text" name="txtUsuario" value="" class="form-control" placeholder="Usuario" /></td>
                        </tr>
                        <tr>
                            <th>Contraseña</th>
                            <td><input type="password" name="txtpass" value="" class="form-control" placeholder="Contraseñia"/></td>
                        </tr>
                        <tr>                            
                            <td class="alIzq"><input type="submit" value="Ingresar" name="btnIngresarUsuario" class="btn btn-primary" /></td>
                            <td class="alDer"><input type="submit" value="Registrar Usuario" name="btnRegistrar" class="btn btn-primary"/></td>
                        </tr>
                    </tbody>
                </table>
            </form>        
        </div>
    </body>
</html>
