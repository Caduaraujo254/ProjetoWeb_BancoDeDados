<%-- 
    Document   : valp_alterar
    Created on : 12/10/2020, 17:09:03
    Author     : Carlos Eduardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.bean.produtos"%>
<%@page import="model.dao.DAOProduto"%>

<%
    produtos p = new produtos();

    int CodProd = Integer.parseInt(request.getParameter("COD"));
    p.setCod(CodProd);

    String descricao = request.getParameter("DESCRICAO");
    p.setDescricao(descricao);

    int qtd = Integer.parseInt(request.getParameter("QTD"));
    p.setQuant(qtd);

    float valor = Float.parseFloat(request.getParameter("PRECO"));
    p.setPreco(valor);
    
    DAOProduto dao = new DAOProduto();
    
    dao.update(p);
    
    // REDIRECIONA PARA A PAG LOGIN.JSP

            response.sendRedirect("../estoque/menu_estoque.jsp");
%>

