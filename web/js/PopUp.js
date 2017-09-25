/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function SeleccionPadre(){
    
    var resultado="ninguno";

    var porNombre=document.getElementsByName("selPadre");
    var padre = document.frmadd2.modPadre;
    // Recorremos todos los valores del radio button para encontrar el
    // seleccionado
    for(var i=0;i<porNombre.length;i++)
    {
        if(porNombre[i].checked)
            resultado=porNombre[i].value;
            padre.value = resultado;
    }
    session.setAttribute("moduloActual", resultado );
    alert("Se ha seleccionado el modulo #"+resultado + " Como el modulo padre");
    
    
}


