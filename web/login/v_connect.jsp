<%-- 
    Document   : v_connect
    Created on : 27 sept. 2016, 16:13:29
    Author     : maxim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%! int cplSession;%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>After connection</title>
    </head>
    <body>
        <%
            if (session.getAttribute("login").equals("KO")) {
                response.sendRedirect("v_login.jsp");
            }

            if (session.getAttribute("cp") == null) {
                cplSession = 1;
            } else {
                cplSession = Integer.parseInt(session.getAttribute("cp").toString()) + 1;
            }
            session.setAttribute("cp", cplSession);
        %>

        <h1>
            La connexion est <%=session.getAttribute("login")%> <br/>

            cplSession = <%= session.getAttribute("cp")%>

        </h1>
    </body>
</html>
