<%-- 
    Document   : menu_estoque
    Created on : 12/10/2020, 15:23:04
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
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown2'>Incluir Produto</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown3'>Alterar Produto</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown4'>Excluir Produto</a>  
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown5'>Lista Estoque</a>  
            
            <!-- Dropdown1 Structure -->
                <ul id='dropdown1' class='dropdown-content'>
                    <li><a href="../acesso/menu.jsp"> Menu </a></li>
                </ul>   
            
            <!-- Dropdown1 Structure -->
                <ul id='dropdown2' class='dropdown-content'>
                    <li><a href="../estoque/inserir_produto.jsp"> Inserir Produto </a></li>
                </ul>
               
               <!-- Dropdown2 Structure -->
                <ul id='dropdown3' class='dropdown-content'>
                    <li><a href="../estoque/alterar_produto.jsp"> Alterar Produto </a></li>
                </ul>
               
               <!-- Dropdown3 Structure -->
                <ul id='dropdown4' class='dropdown-content'>
                    <li><a href="../estoque/excluir_produto.jsp"> Excluir Produto</a></li>
                </ul>
               
                <!-- Dropdown4 Structure -->
                <ul id='dropdown5' class='dropdown-content'>
                    <li><a href="../estoque/consulta_produto.jsp"> Lista Estoque</a></li>
                </ul>
    </body>
</html>