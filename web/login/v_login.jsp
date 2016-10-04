<%-- 
    Document   : v_login
    Created on : 27 sept. 2016, 16:07:31
    Author     : Maxime BLAISE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Connectez-vous !</title>
    </head>
    <body>
        <% session.setAttribute("login", "KO");   %>
        <form action="c_login_1.jsp">
            <p> Login : <input type="text" name="login" /></p>
            <p> Password : <input type="text" name="mdp" /></p>
            <input type="submit" value="Je m'identifie" />
        </form>
    </body>
</html>
