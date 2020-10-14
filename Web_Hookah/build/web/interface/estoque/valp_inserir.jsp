<%-- 
    Document   : val_inserir
    Created on : 12/10/2020, 16:22:05
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
    dao.create(p);

    // REDIRECIONA PARA A PAG LOGIN.JSP
    response.sendRedirect("../estoque/menu_estoque.jsp");
%>

<HTML>
    <BODY>
        <%=CodProd%> <BR>
        <%=descricao%>  <BR>
        <%=qtd%>  <BR>
        <%=valor%>  <BR>
    </BODY>
</HTML>
