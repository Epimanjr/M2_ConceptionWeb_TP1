<%-- 
    Document   : v_accueil
    Created on : 4 oct. 2016, 16:12:50
    Author     : maxim
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="login.Abonne"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<jsp:useBean id="unAbon" scope="session" class="login.Abonne"/>
<jsp:useBean id="cpt" scope="session" class="login.Compteur"/>
<jsp:useBean id="annuaire" scope="session" class="login.Annuaire"/>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello <jsp:getProperty name="unAbon" property="login" />!</h1>
        <h2>Ton mot de passe : <jsp:getProperty name="unAbon" property="mdp" /></h2>
        
        <h3>Compteur: <jsp:getProperty name="cpt" property="cpt" /></h3>
        
        <h3>Affichage de l'annuaire</h3>
        
        <c:forEach items="${annuaire.listAbonnes}" var="itemAbon">
            <c:out value="${itemAbon.loginAbonne}" />
        </c:forEach>
    </body>
</html>
