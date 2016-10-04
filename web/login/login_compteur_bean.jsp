<%-- 
    Document   : login_compteur_bean
    Created on : 4 oct. 2016, 14:52:48
    Author     : maxim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login compteur Bean</title>
    </head>
    <body>
        <h1>Compteurs de login avec Java Bean : </h1>

        <jsp:useBean id="cpt" scope="session" class="login.Compteur"/>
        <h2> La valeur du compteur session est 
            <jsp:getProperty name="cpt" property="cpt" />
        </h2>
        <jsp:setProperty name="cpt" property="cpt" value= "<%=cpt.getCpt()+1%>" />
        
        <jsp:useBean id="cptApp" scope="application" class="login.Compteur"/>
        <h2> La valeur du compteur application est 
            <jsp:getProperty name="cptApp" property="cpt" />
        </h2>
        <jsp:setProperty name="cptApp" property="cpt" value= "<%=cptApp.getCpt()+1%>" />
        
        <jsp:useBean id="cptPage" scope="page" class="login.Compteur"/>
        <h2> La valeur du compteur page est 
            <jsp:getProperty name="cptPage" property="cpt" />
        </h2>
        <jsp:setProperty name="cptPage" property="cpt" value= "<%=cptPage.getCpt()+1%>" />
    </body>
</html>
