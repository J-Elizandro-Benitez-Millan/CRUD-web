/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/ClientSide/javascript.js to edit this template
 */


function cargaElementoDinamico (url, elemento){
    
    var request = new XMLHttpRequest();
    request.open( "GET", url, false );
    request.send(null);
    elemento.innerHTML = request.responseText;
    
}

function cargaAltaUsuario(){
    cargaElementoDinamico("altaUsuario.jsp", document.getElementById("contenidoDinamico"));
    
}
function cargaLogin(){
    cargaElementoDinamico("login.jsp", document.getElementById("contenidoDinamico"));
}

