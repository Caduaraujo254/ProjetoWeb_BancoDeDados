<%-- 
    Document   : menu_venda
    Created on : 13/10/2020, 21:18:15
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
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown2'>Incluir Venda</a>            
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown3'>Exibir Venda</a>  

               <!-- Dropdown1 Structure -->
                <ul id='dropdown1' class='dropdown-content'>
                    <li><a href="../acesso/menu.jsp"> Menu </a></li>
                </ul>
            
            
               <!-- Dropdown1 Structure -->
                <ul id='dropdown2' class='dropdown-content'>
                    <li><a href="../vendas/inserir_venda.jsp"> Inserir Venda </a></li>
                </ul>
               
               <!-- Dropdown2 Structure -->
                <ul id='dropdown3' class='dropdown-content'>
                    <li><a href="../vendas/valv_exibir.jsp"> Exibir Venda </a></li>
                </ul>
    </body>
</html>
