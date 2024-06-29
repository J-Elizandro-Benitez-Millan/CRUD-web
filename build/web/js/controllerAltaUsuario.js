/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/ClientSide/javascript.js to edit this template
 */


function resetFormulatioAltaUsuario(){
    
    document.getElementById("formularioAlta").reset();
    var avisoContrasena = document.getElementById("avisoContrasena");
    avisoContrasena.innerHTML = " |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||| ";
    avisoContrasena.style.color = "black";
    var btnEnvioDatos = document.getElementById("btnEnvioDatos");
    btnEnvioDatos.disabled = true;
    
}

function generadorDeUsuarioAut(){
    var nombre = document.getElementById("txtNombre");
    var apellido = document.getElementById("txtApellido");
    var UsuarioGenerado = document.getElementById("txtUsuarioGenerado");
    var numeroEmpleado = document.getElementById("txtNumeroEmpleado");
    
    var combinadorDeNombre = numeroEmpleado.value + "/" + nombre.value.slice(2,5) + "." + apellido.value.slice(2,5) + "@hotmail.com";
    UsuarioGenerado.value = combinadorDeNombre;    
    
    if(nombre.value.length == 0 || apellido.value.length == 0 || numeroEmpleado == 0){
        UsuarioGenerado.value = "";
        
    }
}
function coincidirContrasena(){
    var Contrasena = document.getElementById("txtContrasena");
    var RepitaLaContrasena = document.getElementById("txtRepitaLaContrasena");
    var avisoContrasena = document.getElementById("avisoContrasena");
    var btnEnvioDatos = document.getElementById("btnEnvioDatos");
    
    btnEnvioDatos.disabled = true;
    
    if(Contrasena.value.length == 0 || RepitaLaContrasena.value.length == 0){
        avisoContrasena.innerHTML = "Ninguna de las contraseñas debe estar vacía";
        avisoContrasena.style.color = "red";
        btnEnvioDatos.disabled = true;
        
    }
    else if(Contrasena.value != RepitaLaContrasena.value){
        avisoContrasena.innerHTML = "Las Contrasenas no coinciden";
        avisoContrasena.style.color = "red";
        btnEnvioDatos.disabled = true;

    }
    else{
        avisoContrasena.innerHTML = "Las contrasenas coinciden";
        avisoContrasena.style.color = "blue";
        btnEnvioDatos.disabled = false;

    }
}
