<%-- 
    Document   : menu_usuario
    Created on : 12/10/2020, 13:16:52
    Author     : Carlos Eduardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>SISTEMA </title>
    <body>
        
            <!-- Dropdown1 Trigger -->
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown1'>Menu</a>
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown2'>Incluir Usuario</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown3'>Alterar Usuario/Senha</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown4'>Excluir Usuario</a>  
            
            <!-- Dropdown1 Structure -->
                <ul id='dropdown1' class='dropdown-content'>
                    <li><a href="../acesso/menu.jsp"> Menu </a></li>
                </ul>  
            
            <!-- Dropdown1 Structure -->
                <ul id='dropdown2' class='dropdown-content'>
                    <li><a href="../usuario/inserir_usuario.jsp"> Inserir Usuario </a></li>
                </ul>
               
               <!-- Dropdown2 Structure -->
                <ul id='dropdown3' class='dropdown-content'>
                    <li><a href="../usuario/altera_usuario.jsp"> Alterar Usuario </a></li>
                </ul>
               
               <!-- Dropdown2 Structure -->
                <ul id='dropdown4' class='dropdown-content'>
                    <li><a href="../usuario/excluir_usuario.jsp"> Excluir Usuario</a></li>
                </ul>
    </body>
</html>
