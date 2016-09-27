<%-- 
    Document   : v_connect
    Created on : 27 sept. 2016, 16:13:29
    Author     : maxim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>After connection</title>
    </head>
    <body>
        <%
            if(session.getAttribute("login").equals("KO")) {
                response.sendRedirect("v_login.jsp");
            }
        %>
        <h1>
            La connexion est <%=session.getAttribute("login")  %>
        </h1>
    </body>
</html>
