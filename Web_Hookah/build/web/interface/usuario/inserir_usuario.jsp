<%-- 
    Document   : inserir_usuario
    Created on : 12/10/2020, 13:32:15
    Author     : Carlos Eduardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - USUÁRIO</title>
    <body>
       <div class="container"/>
        <h1>INSERIR USUÁRIO</h1>
        <form name="inserir_usuario" action="val_inserir.jsp" method="post">
            id: <input type="number" name="ID" value=""> <br>
            Login: <input type="text" name="LOGIN" value=""> <br>
            Senha: <input type="password" name="SENHA" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
