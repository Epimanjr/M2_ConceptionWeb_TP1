<%-- 
    Document   : Hello
    Created on : 20 sept. 2016, 16:33:52
    Author     : Maxime
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
            <% 
            if(request.getParameter("nom") == null) {
                out.println("Hello World");
            } else {
                out.println("Hello " + request.getParameter("nom"));
            } 
            %>
        </h1>
    </body>
</html>
