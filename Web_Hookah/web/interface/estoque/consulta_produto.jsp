<%-- 
    Document   : consulta_produto
    Created on : 12/10/2020, 17:35:10
    Author     : Carlos Eduardo
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="controle.ControleProduto"%>
<%@page import="model.bean.produtos"%>
<%
    produtos pro = new produtos(0,"",0,0);
    ControleProduto prodcont = new ControleProduto();
    List<produtos> prod = prodcont.lista(pro);
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA PESSOAS</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Codigo">Codigo</th>
                  <th data-field="Item">Item</th>
                  <th data-field="Quantidade">Quantidade</th>
                  <th data-field="Valor">Valor</th>
              </tr>
            </thead>
            <% if (!(prod.isEmpty())) { %>    
                <tbody>
                    <% for (produtos listaProduto : prod) { %>
                        <tr>
                            <td><%=listaProduto.getCod()%></td>
                            <td><%=listaProduto.getDescricao()%></td>
                            <td><%=listaProduto.getQuant()%></td>
                            <td><%=listaProduto.getPreco()%></td>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>