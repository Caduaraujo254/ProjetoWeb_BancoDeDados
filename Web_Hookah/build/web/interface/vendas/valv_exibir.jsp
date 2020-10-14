<%-- 
    Document   : valv_exibir
    Created on : 13/10/2020, 22:35:17
    Author     : Carlos Eduardo
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="controle.ControleVenda"%>
<%@page import="model.bean.venda"%>
<%
    venda ven = new venda(0,"",0);
    ControleVenda vendcont = new ControleVenda();
    List<venda> vend = vendcont.lista(ven);
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA PESSOAS</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Id">NºVenda</th>
                  <th data-field="Item">Item</th>
                  <th data-field="Quantidade">Quantidade</th>
              </tr>
            </thead>
            <% if (!(vend.isEmpty())) { %>    
                <tbody>
                    <% for (venda listaVenda : vend) { %>
                        <tr>
                            <td><%=listaVenda.getId()%></td>
                            <td><%=listaVenda.getItem()%></td>
                            <td><%=listaVenda.getQtd()%></td>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>