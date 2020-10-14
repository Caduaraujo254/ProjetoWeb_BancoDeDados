<%-- 
    Document   : val_altera
    Created on : 12/10/2020, 14:24:05
    Author     : Carlos Eduardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.bean.usuario"%>
<%@page import="model.dao.DAOUsuario"%>

<%

    int id = Integer.parseInt(request.getParameter("ID"));
    String login = request.getParameter("LOGIN");
    String senha = request.getParameter("SENHA");

    usuario u = new usuario(id,login,senha);
    DAOUsuario dao = new DAOUsuario();
    
    dao.update(u);
    
    // REDIRECIONA PARA A PAG LOGIN.JSP

    response.sendRedirect("../usuario/menu_usuario.jsp");
%>

<HTML>
    <BODY>
        <%=id%> <BR>
        <%=login%>  <BR>
        <%=senha%>  <BR>
    </BODY>
</HTML>
