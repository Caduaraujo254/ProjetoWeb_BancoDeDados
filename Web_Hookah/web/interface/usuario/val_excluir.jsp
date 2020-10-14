<%-- 
    Document   : val_excluir
    Created on : 12/10/2020, 15:04:09
    Author     : Carlos Eduardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.bean.usuario"%>
<%@page import="model.dao.DAOUsuario"%>

<%

    int id = Integer.parseInt(request.getParameter("ID"));

    usuario u = new usuario(id);
    DAOUsuario dao = new DAOUsuario();
    
    dao.delete(u);
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    response.sendRedirect("../usuario/menu_usuario.jsp");
%>
