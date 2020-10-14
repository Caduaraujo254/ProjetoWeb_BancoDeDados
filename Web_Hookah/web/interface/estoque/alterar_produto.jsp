<%-- 
    Document   : alterar_produto
    Created on : 12/10/2020, 17:08:34
    Author     : Carlos Eduardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.bean.produtos"%>

<%
    produtos p = new produtos();

%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - PRODUTOS</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR PRODUTOS</h1>
        <form name="alterar_produto" action="valp_alterar.jsp" method="post">
            Cod: <input type="number" name="COD" value="<%=p.getCod()%>"> <br>
            Descrição: <input type="text" name="DESCRICAO" value="<%=p.getDescricao()%>"> <br>
            Quantidade: <input type="number" name="QTD" value="<%=p.getQuant()%>"> <br>
            Preço: <input type="number" name="PRECO" value="<%=p.getPreco()%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>

