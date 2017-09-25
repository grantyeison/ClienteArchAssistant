/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/*
 function seleccionarPaso(id)
 {
 $("#btnQAW0").removeClass("btn-info");
 $("#btnQAW1").removeClass("btn-info");
 $("#btnQAW2").removeClass("btn-info");
 $("#btnQAW3").removeClass("btn-info");
 $("#btnQAW4").removeClass("btn-info");
 $("#btnQAW5").removeClass("btn-info");
 $("#btnQAW6").removeClass("btn-info");
 $("#btnQAW7").removeClass("btn-info");
 $("#btnQAW8").removeClass("btn-info");
 
 $("#btnQAW0").addClass("btn-default");
 $("#btnQAW1").addClass("btn-default");
 $("#btnQAW2").addClass("btn-default");
 $("#btnQAW3").addClass("btn-default");
 $("#btnQAW4").addClass("btn-default");
 $("#btnQAW5").addClass("btn-default");
 $("#btnQAW6").addClass("btn-default");
 $("#btnQAW7").addClass("btn-default");
 $("#btnQAW8").addClass("btn-default");
 
 $("#"+id).removeClass("btn-default"); 
 $("#"+id).addClass("btn-info");    
 }
 */

var fichero;

function SeleccionPadre() {

    var resultado = "ninguno";

    var porNombre = document.getElementsByName("selPadre");
    var padre = $("#txtModDesc");
    // Recorremos todos los valores del radio button para encontrar el
    // seleccionado
    for (var i = 0; i < porNombre.length; i++)
    {
        //if()
        if (porNombre[i].checked)
            resultado = porNombre[i].value;

        padre.val(resultado);
    }
    //var se= '<%= session.setAttribute("moduloActual", resultado)%>';
    listarModulos(resultado);
    alert("Se ha seleccionado el modulo #" + resultado + " Como el modulo padre, lo que hay en el txt " + padre.val());
}

function Seleccionados(sel) {
    //alert("Entra a Guardar Tacticas");
    var resultado = "ninguno";
    var porNombre = document.getElementsByName(sel);

    var lista = "";
    // Recorremos todos los valores del radio button para encontrar el
    // seleccionado
    for (var i = 0; i < porNombre.length; i++)
    {
        if (porNombre[i].checked) {
            resultado = porNombre[i].value;
            lista += resultado + ",";
        }
    }
    return lista;
}

function SeleccionarPatrones() {
    var selp = Seleccionados("patronSel");
    var selt = Seleccionados("tacticaSel");
    $("#txtTacticas").val(selt);
    $("#txtPatrones").val(selp);
    //var listaTacticas = $("#txtTacticas").val();
    var rationale = $("#txtRationale").val();
    //var listaPatrones = $("#txtPatrones").val();
    //alert("Tacticas seleccionados___" + selt);
    //alert("Patrones seleccionados___" + selp);
    var msj = "guardarPatrones";
    $.get('ADD4', {
        //nombre: nombreVar,
        //apellido: apellidoVar,
        //edad: edadVar
        listadot: selt,
        ratadd4: rationale,
        peticion: msj,
        listadop: selp
    }, function (responseText) {
        $('#tblPatrones').html(responseText);
    });
}

$(document).ready(function () {
    //funcion que llamamos cuando seleccionamos una tactica
    var storageRef = firebase.storage().ref();
    var imagenesFBRef = firebase.database().ref().child("imagenes");
    fichero = document.getElementById("dirArchivo");
    fichero.addEventListener("change",subirArchivoFirebase,false);
    mostrarListaArchivos();

    $('#submit').click(function (event) {
        var porNombre = document.getElementsByName("tacticaSel");
        var rationale = $("#txtRationale").val();
        var resultado = "ninguno";
        //alert("Click en guardar seleccionados")
        var lista = "";
        // Recorremos todos los valores del radio button para encontrar el
        // seleccionado
        for (var i = 0; i < porNombre.length; i++)
        {
            if (porNombre[i].checked) {
                resultado = porNombre[i].value;
                lista += resultado + ",";

            }
        }
        //alert("Lista " + lista);
        // Si en vez de por post lo queremos hacer por get, cambiamos el $.post por $.get
        $.get('ADD4', {
            //nombre: nombreVar,
            //apellido: apellidoVar,
            //edad: edadVar
            ratadd4: rationale,
            listadot: lista
        }, function (responseText) {
            $('#tblPatrones').html(responseText);
        });
    });

    $('#btnAddsubir').click(function (event) {
        event.preventDefault();
        var formData = new FormData(document.getElementById("frmArchivos"));
        //alert("Click en guardar seleccionados");
        $.ajax({
            url: "ADD1",
            type: "post",
            dataType: "html",
            data: formData,
            cache: false,
            contentType: false,
            processData: false
        }).done(function (res) {
            $('#divArchivos').html(res);
        });

    });
    $('.textColl').click(function (event) {
        var a = $('this').val();
        if (a == "ver más...")
        {
            $('this').val("...ver menos");
            $('this').show();
        } else
        {
            $('this').val("ver más...");
            $('this').show();
        }
    });
    //Funcion que se ejecuta cuando se va a crear un modulo se hace cuando se esta en el paso add4

    $('#btnCrearModulo').click(function (event) {
        var nom = $("#txtNomMod").val();
        var desc = $("#txtDesMod").val();
        if (nom != null && desc != null) {
            //alert(nom + "  " + desc)
            $.post('ADD4', {
                //nombre: nombreVar,
                //apellido: apellidoVar,
                //edad: edadVar
                mensaje: "crear",
                nombreModulo: nom,
                descripcionModulo: desc
            }, function (responseText) {
                $('#tblModulos').empty();
                $('#tblModulos').html(responseText);
            });
        }
    });
    $.post('ADD4', {
        //nombre: nombreVar,
        //apellido: apellidoVar,
        //edad: edadVar
        mensaje: "listar"
    }, function (responseText) {
        $('#tblModulos').empty();
        $('#tblModulos').html(responseText);
    });

    $('#btnCrearResp').click(function (event) {
        var nom = $("#txtNomResp").val();
        var desc = $("#txtDesResp").val();
        var sel = $("#selModulo").val();
        //alert("click" + nom + desc + sel);
        if (nom != null && desc != null && sel != null) {
            //alert(nom + "  " + desc)
            $.post('ADD5', {
                //nombre: nombreVar,
                //apellido: apellidoVar,
                //edad: edadVar
                mensaje: "crear",
                seleccion: sel,
                nombre: nom,
                descripcion: desc
            }, function (responseText) {
                //alert(responseText);
                $("#txtNomResp").val("");
                $("#txtDesResp").val("");
                $("#selModulo").val(null);
                $('#tblResponsabilidades').html(responseText);
            });
        }
    });
    $.post('ADD5', {
        //nombre: nombreVar,
        //apellido: apellidoVar,
        //edad: edadVar
        mensaje: "listar"
    }, function (responseText) {
        $('#tblResponsabilidades').html(responseText);
    });

    $('#btnCrearInter').click(function (event) {
        var nom = $("#txtNom").val();
        var desc = $("#txtDesc").val();
        var tipo = $("#txtTipo").val();
        var sel = $("#selModulo").val();
        //alert("click" + nom + desc + sel + tipo);
        if (nom != null && desc != null && sel != null && tipo != null) {
            //alert(nom + "  " + desc)
            $.post('ADD6', {
                //nombre: nombreVar,
                //apellido: apellidoVar,
                //edad: edadVar
                mensaje: "crear",
                seleccion: sel,
                nombre: nom,
                tipo: tipo,
                descripcion: desc
            }, function (responseText) {
                //alert(responseText);
                $("#txtNom").val("");
                $("#txtDesc").val("");
                $("#txtTipo").val(" Sintaxis de operaciones");
                $("#selModulo").val(null);
                $("#tblAux").hide();
                $('#tblInterfaces').html(responseText);
            });
        }
    });

    $.post('ADD6', {
        //nombre: nombreVar,
        //apellido: apellidoVar,
        //edad: edadVar
        mensaje: "listar"
    }, function (responseText) {
        $('#tblInterfaces').html(responseText);
    });

    $("#txtEditor").Editor();

    $("#btnGuardarRat").click(function () {
        var rationale = $("#txtEditor").Editor('getText');
        //alert(rationale);

        //alert("click" + nom + desc + sel + tipo);
        if (rationale != null) {
            //alert(nom + "  " + desc)
            $.post('Rationale', {
                //nombre: nombreVar,
                //apellido: apellidoVar,
                //edad: edadVar
                mensaje: "guardar",
                rata: rationale

            }, function (responseText) {
                //alert("sale del llamado ");
                $("#divMensaje").show();
                $("#divMensaje").html(responseText);
                $("#divMensaje").hide(6000);
            });
        }
    });

    $.post('Rationale', {
        //nombre: nombreVar,
        //apellido: apellidoVar,
        //edad: edadVar
        mensaje: "obtener"

    }, function (responseText) {
        //alert("Obtener mediante la funcion post llamado ajax post " + responseText);
        var arreglo = responseText.split("-----");
        if (arreglo.length == 2) {
            //alert("Igual a 2");
            $("#txtEditor").Editor('setText', arreglo[0]);
            $("#divListaArchivos").empty();
            $("#divListaArchivos").html(arreglo[1]);
        } else {
            $("#txtEditor").Editor('setText', arreglo[0]);
        }
        //$("#txtEditor").Editor('setText', responseText);
    });

    $("#multiform").submit(function (e)
    {
        var formObj = $(this);
        var formURL = formObj.attr("action");
        var formData = new FormData(this);
        $.ajax({
            url: formURL,
            type: 'POST',
            data: formData,
            mimeType: "multipart/form-data",
            contentType: false,
            cache: false,
            processData: false,
            success: function (data, textStatus, jqXHR)
            {
                //alert("exito" + data);
                $("#divMensaje").show();
                $("#divMensaje").html("<div id='inner-message' class='alert alert-success alert-dismissable fade in'>"
                        + "<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>"
                        + "<strong>Archivo subido con exito!</strong> </div>");
                $("#divMensaje").hide(6000);
                $("#divListaArchivos").empty();
                //alert(data);
                $("#divListaArchivos").html(data);
            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                alert("error eroor");
            }
        });
        e.preventDefault(); //Prevent Default action. 
        e.unbind();
    });

    $("#file-1").fileinput({
        showCaption: false,
        browseClass: "btn btn-primary btn-lg",
        fileType: "any"
    });
    
    function subirArchivoFirebase()
    {
        var archivoSubir = fichero.files[0];
        var ruta = document.getElementById("txtRuta").value;
        var primerCampo = ruta.indexOf("/");
        var proyecto = ruta.substring(0, primerCampo);
        var paso = ruta.substring(primerCampo+1,ruta.indexOf("/",primerCampo+1));
        var uploadTask = storageRef.child("archivos/"+ruta+"/"+archivoSubir.name).put(archivoSubir);
        
        uploadTask.on('state_changed', function(snapshot){
          var progress = (snapshot.bytesTransferred / snapshot.totalBytes) * 100;
          console.log('Upload is ' + progress + '% done');
          switch (snapshot.state) {
            case firebase.storage.TaskState.PAUSED: // or 'paused'
              console.log('Upload is paused');
              break;
            case firebase.storage.TaskState.RUNNING: // or 'running'
              console.log('Upload is running');
              break;
          }
        }, function(error) {
          // Handle unsuccessful uploads
        }, function() {
          var downloadURL = uploadTask.snapshot.downloadURL;
          imagenesFBRef.push({idProyecto: proyecto,paso: paso,nombre: archivoSubir.name, url: downloadURL});
          $.get('RationaleQaw', {
                url: downloadURL,
                ruta: ruta
            }, function (responseText) {
                alert(responseText);
            });
        });
    }
    function mostrarListaArchivos()
    {
        imagenesFBRef.on("value",function(snapshot){
            var datos = snapshot.val();
            var ruta = document.getElementById("txtRuta").value;
            var primerCampo = ruta.indexOf("/");
            var proyecto = ruta.substring(0, primerCampo);
            var paso = ruta.substring(primerCampo+1,ruta.indexOf("/",primerCampo+1));
            var result = "";
            var archivos = "";
           for (var key in datos)
           {
               if (datos[key].idProyecto === proyecto && datos[key].paso === paso)
               {
                   archivos += datos[key].nombre+",";
                   result += "<tr><td>" + datos[key].nombre + "</td>"
                        +"<td class='alIzq'> <button value='Eliminar' data="+key+" class='btn btn-primary borrarImagen'>"
                        + "<span class='glyphicon glyphicon-trash' aria-hidden='true'></span></button>"
                        +"<a href = '"+datos[key].url+"' download='"+datos[key].nombre+"'><button value='Descargar' data="+key+" class='btn btn-primary descargarImagen'>"
                        + "<span class='glyphicon glyphicon-download-alt' aria-hidden='true'></span></button></a></td></tr>";
               }
               
           }
           
           $.get('GuardarProyecto', {
               archivos: archivos
            }, function (responseText) {
                //alert(responseText);
                $('#textoFalso').html(responseText);
            });
           
           document.getElementById("divListaArchivos").innerHTML = result;
           if (result !== "")
            {
                 elementosBorrables = document.getElementsByClassName("borrarImagen");
                 elementosDescargables = document.getElementsByClassName("descargarImagen");
                 for (var i=0; i<elementosBorrables.length; i++)
                 {
                     elementosBorrables[i].addEventListener("click", borrarImagen, false);
                     elementosDescargables[i].addEventListener("click", descargarImagen, false);
                 }
            }
        });
    }
    
    function borrarImagen()
    {
        var keyBorrar = this.getAttribute("data");
        imagenesFBRef.on("value",function(snapshot){
            var datos = snapshot.val();
            var imagenBorrar = datos[keyBorrar];
            // Create a reference to the file to delete
            var desertRef = storageRef.child("archivos/"+imagenBorrar.idProyecto+"/"+imagenBorrar.paso+"/"+imagenBorrar.nombre);
            //alert(desertRef);
            desertRef.delete().then(function() {
                alert("borrando");
                imagenesFBRef.child(keyBorrar).remove();
                alert ("archivo eliminado exitosamente");
              }).catch(function(error) {
                alert("ha ocurrido un error al eliminar el archivo"+error);
              });
            mostrarListaArchivos();
            });
        
    }
    
    function descargarImagen()
    {
        var keyBorrar = this.getAttribute("data");
        imagenesFBRef.on("value",function(snapshot){
            var datos = snapshot.val();
            var imagenBorrar = datos[keyBorrar];
            // Create a reference to the file to delete
            var desertRef = storageRef.child("archivos/"+imagenBorrar.idProyecto+"/"+imagenBorrar.paso+"/"+imagenBorrar.nombre);
            //alert(desertRef);
            mostrarListaArchivos();
            });
        
        alert("descargar imagen");
    }

});

//funcion para guardar el modulo que se escoge para descomponer, este se llama cuando se selecciona 
//en la tabla de los moculos cuando se de click sobre un modulo inmediatamente se llama para decir que este 
//modulo sera el que se va a descomponer, entonces esta funcion debe recibir el id del modulo que se va a cambiar 
//de estado 
function listarModulos(id) {
    $.post('Modulos', {
        //nombre: nombreVar,
        //apellido: apellidoVar,
        //edad: edadVar
        mensaje: "modulos",
        id: id
    }, function (responseText) {
        alert(responseText);
        var arreglo = responseText.split("-----");
        if (arreglo.length == 2) {
            alert("Igual a 2");
            $("#txtEditor").Editor('setText', arreglo[0]);
            $("#divListaArchivos").empty();
            $("#divListaArchivos").html(arreglo[1]);
        } else {
            $("#txtEditor").Editor('setText', arreglo[0]);
        }
    });
    
    
}



