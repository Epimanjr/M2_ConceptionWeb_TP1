<%-- 
    Document   : v_result.jsp
    Created on : 27 sept. 2016, 14:27:51
    Author     : Maxime BLAISE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="point.Point"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Résultat du point ! </title>
    </head>
    <body>
        <h3>Un nouveau point de coordonnées : </h3>
        <%
            Point unPoint = (Point) request.getAttribute("unPoint");
        %>
        <p> X : <%= unPoint.x %></p>
        <p> Y : <%= unPoint.y %></p>
    </body>
</html>
