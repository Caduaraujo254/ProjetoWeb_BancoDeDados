<%-- 
    Document   : altera_usuario
    Created on : 12/10/2020, 14:13:13
    Author     : Carlos Eduardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.bean.usuario"%>

<%
    usuario u = new usuario();

%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - USUÁRIO</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR USUÁRIO</h1>
        <form name="altera_usuario" action="val_altera.jsp" method="post">
            ID: <input type="number" name="ID" value="<%=u.getUsuario()%>"> <br>
            Login: <input type="text" name="LOGIN" value="<%=u.getUsuario()%>"> <br>
            Senha: <input type="password" name="SENHA" value="<%=u.getSenha()%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>
