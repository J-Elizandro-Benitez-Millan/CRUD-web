<%-- 
    Document   : pageHome
    Created on : 23 jun 2024, 22:44:45
    Author     : eliza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%  
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            
            if(session.getAttribute("txtUsuario") == null && session.getAttribute("nombre") == null){
                response.sendRedirect("index.html");
            }
        %>
    </head> 
    <body>
        <h1>Hola <%=request.getSession().getAttribute("nombre") %> , Bienvenido </h1>
        
        
        <p><a href = "https://github.com/J-Elizandro-Benitez-Millan/CRUD-Project" target="_blank"> Ir a Github </a></p>
        
        <p>Actualmente en uso: ${txtUsuario}</p>
        
        
        <form action="logout">
            <input type = "submit" value = "Cerrar Sesion" >
        </form>
    </body>
</html>
