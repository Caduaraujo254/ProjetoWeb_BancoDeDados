<%-- 
    Document   : inserir_produto
    Created on : 12/10/2020, 16:21:38
    Author     : Carlos Eduardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <%@include file="../../inc/materalizeWeb.inc" %>
    <%@page import="model.bean.produtos"%>
    
    <%
    produtos u = new produtos();

%>

    <title>CADASTRAR - PRODUTO</title>
    
       <div class="container"/>
        <h1>CADASTRAR PRODUTO</h1>
        <form name="inserir_produto" action="valp_inserir.jsp" method="post">
            Cod: <input type="number" name="COD" value=""> <br>
            Descrição: <input type="text" name="DESCRICAO" value=""> <br>
            Quantidade: <input type="number" name="QTD" value=""> <br>
            Valor: <input type="number" name="PRECO" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    

