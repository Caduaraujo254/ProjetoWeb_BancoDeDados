<%-- 
    Document   : excluir_usuario
    Created on : 12/10/2020, 14:54:12
    Author     : Carlos Eduardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.bean.usuario"%>
<%@page import="model.dao.DAOUsuario"%>

<%
    usuario u = new usuario();

%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>Excluir - USUÁRIO</title>
    <body>
       <div class="container"/>
       <h1>Excluir USUÁRIO</h1>
        <form name="excluir_usuario" action="val_excluir.jsp" method="post">
            ID: <input type="number" name="ID" value="<%=u.getUsuario()%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>
