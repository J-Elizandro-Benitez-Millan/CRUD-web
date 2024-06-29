<%-- 
    Document   : Loggin
    Created on : 16 jun 2024, 16:00:50
    Author     : eliza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/LoginStyle.css" type="text/css" media="all" >
        
        
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); //borrar directivas de memoria cache y anular algoritmos de almacen de cache en cualquier navegador
            response.setHeader("pragma", "no-cache"); //borra las memorias cache en directivas compatibles
            response.setDateHeader("Expires", 0);//tiempo de caducacion de peticion
%>
    </head>
    <body>
        <div class = "cuerpoDeFormulario" id = "cuerpoFormulario">
            <form class = " formularioLogin " id = "formularioLogin" method = "post" action = "liveSesion">
                <h1> Inicio de sesion </h1>

                <p> Usuario: </p>
                <div class = "texto"> 
                    <input type = "text" class = "txt" id = "txtUsuario" required = "" name = "txtUsuario">
                </div>

                <p> Contrasena: </p>
                <div class = "texto"> 
                    <input type = "password" class = "txt" id = "txtContrasena" required = "" name = "txtContrasena">
                </div>
                <br>
                
                <input type = "submit" value = "Iniciar Sesion" class = "btn ">
                <input type = "submit" value = "Eliminar datos" class = "btn " onclick = resetDeFormularioLogin()>
                
            </form>

        </div>
    </body>
    <script src ="js/controllerLogin.js" > </script>
</html>
