<%-- 
    Document   : c_login
    Created on : 27 sept. 2016, 16:10:41
    Author     : Maxime BLAISE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    // Test de la connexion
    if(request.getParameter("login").equals("titi") 
            && request.getParameter("passwd").equals("123")) {
        // OK
        session.setAttribute("login", "OK");
        response.sendRedirect("v_connect.jsp");
        
        
    } else {
        // NON OK
        session.setAttribute("login", "KO");
        response.sendRedirect("v_login.jsp");
    }
%>