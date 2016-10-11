<%-- 
    Document   : c_login
    Created on : 27 sept. 2016, 16:10:41
    Author     : Maxime BLAISE
--%>

<%@page import="java.util.Collection"%>
<%@page import="login.Abonne"%>
<%@page import="login.GenDAO"%>
<%@page import="login.DAOFactory"%>
<jsp:useBean id="cpt" scope="session" class="login.Compteur"/>
<jsp:useBean id="unAbon" scope="session" class="login.Abonne"/>
<jsp:useBean id="annuaire" scope="session" class="login.Annuaire"/>

<jsp:setProperty name="unAbon" property="*" />

<%
    DAOFactory mySQLDAOFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
    GenDAO<Abonne, Integer> abonneDAO = mySQLDAOFactory.getAbonneDAO();
    
    Collection<Abonne> results = abonneDAO.select(unAbon);
    if(results.size() == 1) {
        // Abonné trouvé dans la base
        pageContext.forward("v_accueil.jsp");
    } else {
        // Abonné non trouvé
        pageContext.forward("v_login.jsp");
    }
%>    

<%-- 
    cpt.incCpt();
    
    if((cpt.getCpt() % 2) == 0) {
        // Ajout à l'annuaire
        annuaire.add(unAbon);
        
        pageContext.forward("v_accueil.jsp");
    } else {
        pageContext.forward("v_login.jsp");
    }
--%>
