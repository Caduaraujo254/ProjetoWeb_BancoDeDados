<%-- 
    Document   : inserir_venda
    Created on : 13/10/2020, 21:01:26
    Author     : Carlos Eduardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - VENDA</title>
    <body>
       <div class="container"/>
        <h1>INSERIR VENDA</h1>
        <form name="inserir_venda" action="valv_inserir.jsp" method="post">
            NºVenda: <input type="number" name="ID" value=""> <br>
            item: <input type="text" name="ITEM" value=""> <br>
            quantidade: <input type="number" name="QTD" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
