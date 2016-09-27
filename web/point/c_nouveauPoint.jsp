<%-- 
    Document   : c_nouveauPoint
    Created on : 27 sept. 2016, 14:23:18
    Author     : Maxime BLAISE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="point.Point"%>

<%! Point unPoint;%>

<%
    // Récupération des paramètres
    int x = Integer.parseInt(request.getParameter("X"));
    int y = Integer.parseInt(request.getParameter("Y"));
    
    //  Création du point
    unPoint = new Point(x, y);
    request.setAttribute("unPoint", unPoint);
%>

 <jsp:forward page="v_result.jsp" /> 
<%--
    response.sendRedirect("v_result.jsp");
--%>