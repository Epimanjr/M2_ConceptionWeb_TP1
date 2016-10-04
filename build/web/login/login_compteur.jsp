<%-- 
    Document   : login_compteur
    Created on : 4 oct. 2016, 14:32:55
    Author     : Maxime BLAISE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login compteur</title>
    </head>
    <body>
        <%!
            int cplSession = 0;
            int cplApplication = 0;
            int cplPage = 0;
        %>

        <%
            if (session.getAttribute("cp") == null) {
                cplSession = 1;
            } else {
                cplSession = Integer.parseInt(session.getAttribute("cp").toString()) + 1;
            }
            session.setAttribute("cp", cplSession);

            // Incrémentation Application
            if (application.getAttribute("cp") == null) {
                cplApplication = 1;
            } else {
                cplApplication = Integer.parseInt(application.getAttribute("cp").toString()) + 1;
            }
            application.setAttribute("cp", cplApplication);
            
            cplPage++;
        %>

        <h1>Compteurs de login : </h1>
        <h2>Compteur de session : <%= session.getAttribute("cp")%></h2>
        <h2>Compteur d'application : <%= application.getAttribute("cp")%></h2>
        <h2>Compteur de page : <%= cplPage%></h2>
    </body>
</html>
