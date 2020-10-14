<%-- 
    Document   : excluir_produto
    Created on : 12/10/2020, 17:28:35
    Author     : Carlos Eduardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.bean.produtos"%>
<%@page import="model.dao.DAOProduto"%>

<%
    produtos p = new produtos();

%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>Excluir - Produtos</title>
    <body>
       <div class="container"/>
       <h1>Excluir Produtos</h1>
        <form name="excluir_prduto" action="valp_excluir.jsp" method="post">
            Cod: <input type="number" name="COD" value="<%=p.getCod()%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>
