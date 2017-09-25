<%-- 
    Document   : header
    Created on : 16/09/2017, 08:05:05 PM
    Author     : Apollo
--%>

<input type="text" id="textoFalso" hidden="hidden">

<form name="gestionarProyectos" action="GestionarProyectos" method="POST">
    <nav class="navbar navbar-form">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="InicioUsuario.jsp">ArchAssistant</a>
            </div>
            <ul class="nav navbar-nav navbar-right">
                <li><a class="btn-lg" ><jsp:useBean id="validUsuario" scope="session" class="servicios.Usuario" />
                        <jsp:getProperty name="validUsuario" property="usuNombre" /></a></li>
                <li><button type="submit" name="BtnCerrarSesion" class="btn btn-lg"><span class="glyphicon glyphicon-log-out"></span> Logout</button></li>
            </ul>
        </div>
    </nav>
</form>
<!--
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="InicioUsuario.jsp">ArchAssistant</a>
        </div>
        <div class="navbar-header alDer">
            <a class="navbar-brand" href="InicioUsuario.jsp"></a>
            <input type="submit" name="BtnCerrarSesion" value="Cerrar Sesión" class="btn btn-primary alDer"/>
        </div>        
    </div>
</nav>
-->