<%-- 
    Document   : FormPoint
    Created on : 27 sept. 2016, 14:18:38
    Author     : Maxime BLAISE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Saisie d'un point</title>
    </head>
    <body>
        <h2>Nouveau point</h2>
        <h3>Veuillez saisir les informations suivantes : </h3>
        <form action="c_nouveauPoint.jsp">
            <p> X : <input type="text" name="X" value="" size="3" /></p>
            <p> Y : <input type="text" name="Y" value="" size="3" /></p>
            <input type="submit" value="Valider" />
            <input type="reset" value="Annuler" />
        </form>
    </body>
</html>
