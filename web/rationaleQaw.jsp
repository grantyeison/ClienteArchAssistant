<%@page import="servicios.Rationaleqaw"%>
<%@page import="java.io.File"%>
<%@page import="java.util.List"%>
<%@page import="Servlets.GuardarArchivo"%>
<%@page import="Beans.ArchAssistantBean"%>
<%@page import="servicios.Modulo"%>
<%@page import="servicios.Proyecto"%>


<script src="https://www.gstatic.com/firebasejs/4.3.1/firebase.js"></script>
<script>
  // Initialize Firebase
  var config = {
    apiKey: "AIzaSyCUKespLaQVkg4_t7CXfx-m1ircbrc1aA4",
    authDomain: "archassistant-95697.firebaseapp.com",
    databaseURL: "https://archassistant-95697.firebaseio.com",
    projectId: "archassistant-95697",
    storageBucket: "archassistant-95697.appspot.com",
    messagingSenderId: "734730585272"
  };
  firebase.initializeApp(config);
</script>


<script src="./js/fileinput.js" type="text/javascript"></script>
<link href="./css/fileinput.css" media="all" rel="stylesheet" type="text/css" />



        
<div class="col-lg-12 col-md-12 col-sm-12">
    <div class="col-lg-7 col-md-6 col-sm-12">
        <h2 class="page-header">Rationale:</h2>
        <form name="" action=""  method="">
            <textarea rows="5" cols="120" name="ratqaw1" class="form-control parrafo" id="txtEditor">
            </textarea>  
            <br/>
            <input type="button" id="btnGuardarRat" value="Guardar" name="btnQaw1Guardar" class="btn btn-primary"/>
        </form>
    </div>
    <div>
        <form name="multiform" id="multiform" action="RationaleQAW" method="POST" enctype="multipart/form-data"><!--<form name="frSubirArchivo" id="frSubirArchivo" action="Rationale" method="POST"  enctype="multipart/form-data">-->
            <h4>Archivos:</h4>
            <label class="btn btn-file">
                <input type="file" name="archivo" id="dirArchivo" class="hidden"/>
                <a class="btn btn-primary">subir archivo</a>
            <!--    <input type="submit" value="subir archivo" id="btnSubirArchivo" name="btnSubirArchivo" class="btn btn-primary"/>    -->
            
            </label>   
            <div class="hidden" id="progreso">
                <div class="form-group">
                    <div class="progress">
                        <div id="barraProgreso" class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">
                            <span class="sr-only">70% Complete</span>
                        </div>
                    </div>
                </div>     
        </form>
        </div>
    </div>
    <div class="divScroll" id="divArchivos">
        <form name="RationaleQAW" action="RationaleQAW">
            <table width="400" border="0" class="tblCentfull">
                <tbody id="divListaArchivos">
                    <%
/*                        
                        ArchAssistantBean archB;
                        Proyecto proyecto = (Proyecto) session.getAttribute("proyectoActual");
                        Modulo descomp = (Modulo) session.getAttribute("padreActual");
                        String paso = (String) session.getAttribute("pasoActual");
                        Rationaleqaw rata = null;//new Rationaleadd();
                        archB = new ArchAssistantBean();
                        if (descomp == null) {
                            rata = archB.RationaleQAW(proyecto.getProID(), paso);
                        } else {
                            rata = archB.RationaleQAW(proyecto.getProID(), paso + "_" + descomp.getModId());
                        }

                        GuardarArchivo arch = new GuardarArchivo();
                        List<File> archivos = null;
                        if (rata != null) {
                            archivos = arch.listarArchivos(rata.getRatQawArchivo());
                        }
                        if (archivos != null) {
                            for (File archivo : archivos) {
                                out.print("<tr>");
                                out.print("<td>" + archivo.getName() + "</td>");
                                out.print("<td class='alIzq'> <button type='button' value='Eliminar' name='btnEliminar"
                                        + archivo.getName() + "' class='btn btn-primary'>  "
                                        + "<span class='glyphicon glyphicon-trash' aria-hidden='true'></span></button>");
                                out.print("<button type='button' value='Descargar' name='btnBajar"
                                        + archivo.getName() + "' class='btn btn-primary download'>  "
                                        + "<span class='glyphicon glyphicon-download-alt' aria-hidden='true'>"
                                        + "</span></button></td>");
                                out.print("</tr>");
                            }
                        }
*/                    %>
                </tbody>
            </table>
        </form>
    </div>
</div>
<div id="divMensaje">
    <div style="padding: 0px;">

    </div>
</div>