<%-- 
    Document   : login
    Created on : 12/10/2020, 12:21:10
    Author     : Carlos Eduardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.dao.DAOUsuario"%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LOGIN - SISTEMA</title>
    <body>
        <div class="container"/>
            <h1>LOGIN</h1>
            <form name="FORMLOGIN" action="val_login.jsp" method="post">
                LOGIN: <input type="text" name ="LOGIN"> <br>
                SENHA: <input type="password" name ="SENHA"> <br>
                <input type="submit" name="ENVIAR" value="ENVIAR">
            </form>
        </div>
    </body>
</html>
