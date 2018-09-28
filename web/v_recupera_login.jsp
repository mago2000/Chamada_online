<%-- 
    Document   : recupera_login
    Created on : 28/09/2018, 13:42:30
    Author     : picone
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.dao.Login"%>
<%@page import="model.bean.LoginBean"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        try {
                
            Login log = new Login();
            LoginBean lgb = new LoginBean();
        if(request.getParameter("email").equals("")){
            response.sendRedirect("v_login_recupera.jsp");
            
            
            
        }else{
            
            String email  = (request.getParameter("email"));
             if(log.recuperarLogin(email)){
                
               // session.setAttribute("usuario", user);
                //session.setMaxInactiveInterval(60 * 5);
                }
                else{
                response.sendRedirect("v_login.jsp");
                }
        
        }
        
            } catch (Exception e) {
            }
        
        %>
    </body>
</html>
