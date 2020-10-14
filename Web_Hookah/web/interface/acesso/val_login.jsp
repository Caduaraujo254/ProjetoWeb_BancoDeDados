<%-- 
    Document   : val_login
    Created on : 13/10/2020, 23:48:44
    Author     : Carlos Eduardo
--%>

<%@page import="model.bean.usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.dao.DAOUsuario"%>
<%@page import="controle.ControleUsuario"%>

<%
    DAOUsuario dao = new DAOUsuario();
    ControleUsuario usucont = new ControleUsuario();
    String login = request.getParameter("LOGIN");
    String senha = request.getParameter("SENHA");
    usuario usu = new usuario (login,senha);
    usu = usucont.valida(usu);
    session.setAttribute("UsuarioLogado",usu);
    
%>
<!DOCTYPE html>
    <body>
        <% 
            if (usu !=null) {
                response.sendRedirect("../acesso/menu.jsp");
	} else {%>
		<h1>USUÁRIO INVÁLIDO</h1>
	<%}%>
        </body>