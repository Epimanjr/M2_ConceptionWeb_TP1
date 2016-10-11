<%-- 
    Document   : c_login
    Created on : 27 sept. 2016, 16:10:41
    Author     : Maxime BLAISE
--%>

<jsp:useBean id="cpt" scope="session" class="login.Compteur"/>
<jsp:useBean id="unAbon" scope="session" class="login.Abonne"/>
<jsp:useBean id="annuaire" scope="session" class="login.Annuaire"/>

<jsp:setProperty name="unAbon" property="*" />

<jsp:scriptlet>
    cpt.incCpt();
    
    if((cpt.getCpt() % 2) == 0) {
        // Ajout à l'annuaire
        annuaire.add(unAbon);
        
        pageContext.forward("v_accueil.jsp");
    } else {
        pageContext.forward("v_login.jsp");
    }
</jsp:scriptlet>