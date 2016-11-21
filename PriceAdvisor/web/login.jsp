<%-- 
    Document   : login
    Created on : Nov 19, 2016, 4:37:28 PM
    Author     : Greg
--%>

<%@ page import="com.uthldap.Uthldap" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel = "icon" href = "price-icon.ico" sizes = "16x16">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LDAP Login</title>
    </head>
    <body>
        <%
            
            String user=request.getParameter("username");
            String pass=request.getParameter("pass");
            
            Uthldap ldap = new Uthldap(user,pass);
        
            if (ldap.auth()==false){
                    %>< /><%
                %><jsp:forward page = "loginFALSE.jsp" /><%
            }            
            if(ldap.auth()==true){  
                
                %><jsp:forward page = "loginTRUE.jsp" /><%   
            }
        %>    
    </body>
</html>