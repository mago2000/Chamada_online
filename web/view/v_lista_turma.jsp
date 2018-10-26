<%-- 
    Document   : v_lista_turma
    Created on : 26/10/2018, 00:15:05
    Author     : picone
--%>
<%@page import="model.bean.TurmmaBean"%>
<%@page import="model.dao.Turma"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import= "java.util.ArrayList"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <%
        out.print("<table border ='1'>");
        out.print("<tr>"); 
        out.print("<th>Nome Turma</th><th>Diciplina Turma</th><th>Dia inicio</th><th>Dia Termino</th><th>Hora inicio</th><th>Hora termino</th><th>Dia da semana</th><th>Qtd faltas</th><th>Função</th><th>Função</th>");
        
        out.print("</tr>");                                        
                         
           List lista =(List) request.getAttribute("lista");
        
        for(int i = 0; i< lista.size();i++){
                         out.print("<tr>");
                         out.print("<td>"+ (((TurmmaBean)lista.get(i)).getTur_nome() )+"</td>");
                         out.print("<td>"+(((TurmmaBean)lista.get(i)).getTur_diciplina())+"</td>");
                         out.print("<td>"+(((TurmmaBean)lista.get(i)).getTur_ini_dia())+"</td>");
                         out.print("<td>"+(((TurmmaBean)lista.get(i)).getTur_fim_dia())+"</td>");
                         out.print("<td>"+(((TurmmaBean)lista.get(i)).getTur_hora_inicio())+"</td>");
                         out.print("<td>"+(((TurmmaBean)lista.get(i)).getTur_hora_fim())+"</td>");
                         out.print("<td>"+(((TurmmaBean)lista.get(i)).getTur_dia_semana())+"</td>");
                         out.print("<td>"+(((TurmmaBean)lista.get(i)).getTur_qtd_falta_dia())+"</td>");
                         out.print("<td><a href='#'> Clique aqui</a></td>");
                         out.print("<td><a href='#'>Clique aqui</a> </td>");
                         out.print("</tr>");

                     }   
        
                     out.print("</table>");
        
        %>
    </body>
</html>
