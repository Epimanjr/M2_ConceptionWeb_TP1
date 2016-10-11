<%-- 
    Document   : v_accueil
    Created on : 4 oct. 2016, 16:12:50
    Author     : maxim
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Collection"%>
<%@page import="login.GenDAO"%>
<%@page import="login.DAOFactory"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="login.Abonne"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<jsp:useBean id="unAbon" scope="session" class="login.Abonne"/>
<jsp:useBean id="cpt" scope="session" class="login.Compteur"/>
<jsp:useBean id="annuaire" scope="session" class="login.Annuaire"/>

<jsp:useBean id="newAbon" scope="page" class="login.Abonne" />


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello <jsp:getProperty name="unAbon" property="loginAbonne" />!</h1>
        <h2>Ton mot de passe : <jsp:getProperty name="unAbon" property="mdpAbonne" /></h2>

        <h3>Compteur: <jsp:getProperty name="cpt" property="cpt" /></h3>

        <h3>Affichage de l'annuaire</h3>

        <%
            DAOFactory mySQLDAOFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
            GenDAO<Abonne, Integer> abonneDAO = mySQLDAOFactory.getAbonneDAO();
            
            
            ArrayList<Abonne> results = (ArrayList<Abonne>)abonneDAO.select(newAbon);
            System.out.println(results.get(0).getLoginAbonne());
            System.out.println(results.get(1).getLoginAbonne());
            
            for(Abonne unAbonne: results) {
                %>
                <p><%= unAbonne.getLoginAbonne() %></p>
                <%
            }
        %>
 
        <c:forEach items="${results}" var="unAbonne">
            <c:out value="${unAbonne.loginAbonne}" />
        </c:forEach>
    </body>
</html>
