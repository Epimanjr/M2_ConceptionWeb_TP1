<%-- 
    Document   : v_accueil
    Created on : 4 oct. 2016, 16:12:50
    Author     : maxim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<jsp:useBean id="unAbon" scope="session" class="login.Abonne"/>
<jsp:useBean id="cpt" scope="session" class="login.Compteur"/>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello <jsp:getProperty name="unAbon" property="login" />!</h1>
        <h2>Ton mot de passe : <jsp:getProperty name="unAbon" property="mdp" /></h2>
        
        <h3>Compteur: <jsp:getProperty name="cpt" property="cpt" /></h3>
    </body>
</html>
