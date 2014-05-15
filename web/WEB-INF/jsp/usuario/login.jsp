<%-- 
    Document   : login
    Created on : 14/05/2014, 05:37:18 AM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="${pageContext.request.contextPath}/resources/css/start/jquery-ui-1.10.4.custom.css" rel="stylesheet">
         
	<script src="${pageContext.request.contextPath}/resources/js/jquery-1.10.2.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery-ui-1.10.4.custom.js"></script> 
    </head>
    <body>
        <h1>Login</h1>
         <a href="crear.htm">Crear Nuevo Usuario</a>
         <a href="cambiarContrasena.htm">¿Cambiar la contraseña?</a>
         <a href="recuperarContrasena.htm">¿Recuperar la contraseña?</a>
        ${error}
         <form:form id="login" action="${pageContext.request.contextPath}/usuario/iniciarSesion.htm" 
                   method="post"
                   commandName="usuario">
           
            <p>
		<label for="email">Email</label>
                <form:input path="email" />
            </p>
            <p>
		<label for="nombre">Contraseña</label>
                <form:input path="nombre" />
            </p>
            
            
            <input id="botonLogin" type="submit" value="Ingresar" />
        </form:form>
    </body>
</html>
