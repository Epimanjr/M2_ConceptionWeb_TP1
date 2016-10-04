<%-- 
    Document   : c_login
    Created on : 27 sept. 2016, 16:10:41
    Author     : Maxime BLAISE
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:useBean id="cpt" scope="session" class="login.Compteur"/>
<jsp:useBean id="unAbon" scope="session" class="login.Abonne"/>

<jsp:setProperty name="unAbon" property="*" />

<%
    cpt.incCpt();
%>

<c:set var="compteur" scope="session" value="${cpt.cpt}" />

<c:if test="${((compteur mod 2)==0)}">
    <jsp:forward page="v_accueil.jsp" />
</c:if>
<jsp:forward page="v_accueil.jsp" />
