<%-- 
    Document   : valp_excluir
    Created on : 12/10/2020, 17:28:58
    Author     : Carlos Eduardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.bean.produtos"%>
<%@page import="model.dao.DAOProduto"%>

<%
    produtos p = new produtos();

    int cod = Integer.parseInt(request.getParameter("COD"));
    p.setCod(cod);

    DAOProduto dao = new DAOProduto();
    
    dao.delete(p);
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    response.sendRedirect("../estoque/menu_estoque.jsp");
%>
