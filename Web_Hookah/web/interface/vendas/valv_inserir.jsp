<%-- 
    Document   : valv_inserir
    Created on : 13/10/2020, 21:03:12
    Author     : Carlos Eduardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.bean.venda"%>
<%@page import="model.dao.DAOVenda"%>
<!DOCTYPE html>
<%
    int id = Integer.parseInt(request.getParameter("ID"));
    String item = request.getParameter("ITEM");
    int qtd = Integer.parseInt(request.getParameter("QTD"));
    venda v = new venda(id, item, qtd);
    DAOVenda dao = new DAOVenda();
    dao.create(v);
    dao.update(v);

        response.sendRedirect("../vendas/menu_venda.jsp");
%>
