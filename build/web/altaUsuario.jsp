<%-- 
    Document   : AltaUsuario
    Created on : 16 jun 2024, 16:00:39
    Author     : eliza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/RegisterStlyle.css" type="text/css" media="all" >
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate" ); //borrar directivas de memoria cache y anular algoritmos de almacen de cache en cualquier navegador
            response.setHeader("pragma", "no-cache"); //borra las memorias cache en directivas compatibles
            response.setDateHeader("Expires", 0);//tiempo de caducacion de peticion
        %>
    </head>
    <body>
        <div class = "cuerpoFormulario" id = "cuerpoFormulario" >
            <form class = "formularioAlta" id = "formularioAlta" method="post" action="Savinglet">
                <h1>Registro de Usuarios</h1>
                
                <label>Numero de Empleado:</label> <input type = "text"
                                                          class = "txt"
                                                          id = "txtNumeroEmpleado"
                                                          required = "" onkeyup="generadorDeUsuarioAut()" name = "txtNumeroEmpleado"> 
                <br>
                <br>
                
                <label>Nombre:</label> <input type = "text"
                                                          class = "txt"
                                                          id = "txtNombre"
                                                          required = "" onkeyup="generadorDeUsuarioAut()" name = "txtNombre">  
                <br>
                <br>                
                <label>Apellido:</label> <input type = "text"
                                                          class = "txt"
                                                          id = "txtApellido"
                                                          required = "" onkeyup="generadorDeUsuarioAut()" name = "txtApellido">
                <br>
                <br>                
                <label>Contrasena:</label> <input type = "password"
                                                          class = "txt"
                                                          id = "txtContrasena"
                                                          required = "" onkeyup="coincidirContrasena()" >  
                <label>Repita la contrasena:</label> <input type = "password"
                                                          class = "txt"
                                                          id = "txtRepitaLaContrasena"
                                                          required = "" onkeyup="coincidirContrasena()" name ="txtContrasena">
                <br>
                <br>                
                <label class = "avisoContrasena" id = "avisoContrasena"> |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||| </label> 
                <br>
                <br>
                <label>Usuario Generado:</label> <input type = "text"
                                                          class = "txt"
                                                          id = "txtUsuarioGenerado"
                                                          required = "" readonly="" name = "txtUsuarioGenerado"> 
                <br>
                <br>
                
                <input type = "submit" value = "Enviar Datos " class = "btn" id = "btnEnvioDatos" disabled = "" >
                <input type = "button" value = "Eliminar Datos" class = "btn" id = "btnEliminarDatos" onclick =  "resetFormulatioAltaUsuario()">
                
                
        </div>
    </body>
    <script src="js/controllerAltaUsuario.js"></script>
</html>
