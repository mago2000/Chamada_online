package model.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.bean.LoginBean;
import model.bean.Pro_perfilBean;
import model.bean.TurmmaBean;
import model.dao.Pro_perfil;
import model.dao.Turma;


/**
 *
 * @author picone
 */
@WebServlet(name = "Apresentar_perfil", urlPatterns = {"/Apresentar_perfil"})
public class Apresentar_perfil extends HttpServlet {

    

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
 try (PrintWriter out = response.getWriter()) {
            String funcao = request.getParameter("funcao");

            SimpleDateFormat formta = new  SimpleDateFormat("D/M/Y");
            
            
            Pro_perfilBean pb =  new Pro_perfilBean();
            LoginBean lgb = new LoginBean();
            Pro_perfil per = new Pro_perfil();
            
            if (funcao.equals("alterar")) {
                lgb.setNome_user(request.getParameter("user"));
                lgb.setSenha(request.getParameter("senha"));
                //tb.setTur_nome(request.getParameter("nome_turma"));
               // tb.setTur_diciplina(request.getParameter("diciplina"));
               //tb.getSetTur_ini_dia (request.getParameter("data_inicio");
                //tb.setTur_fim_dia(request.getParameter("data_fim"));
                //tb.setTur_hora_inicio(request.getParameter("hora_inicio"));
                //tb.setTur_hora_fim (request.getParameter("hora_fim"));
                //tb.setTur_dia_semana(request.getParameter("dia_semana"));
                //tb.setTur_qtd_falta_dia = Integer.parseInt(request.getParameter("qtd_falta"));
                
               // tur.cadastrarTurma(tb ,lgb);
                response.sendRedirect("v_login.jsp");
                
            }else if (funcao.equals("apresentar_todos")){
                
                try {
                        Pro_perfil trm = new Pro_perfil();
                        String user =(request.getParameter("usuario"));
                        String senha = (request.getParameter("senha"));                                                                                 
                        
                        
                         

                        
                     
                          request.getRequestDispatcher("view/v_configura_perfil.jsp").forward(request, response);
                          
                         } catch (Exception e) {
                     
                          throw new RuntimeException("Erro 1_vt   " + e);
                         }
                          
                      
                      
              
              
            
            
            }

                        
//              
//                     try {
//                         out.print("<table>");
//                         out.print("<tr>");
//                         out.print("<th>codigo</th><th>Nome turma</th><th>Diciplina</th><th>Data inicio</th><th>Data Fim</th><th>Hora inicio</th><th>Hora Fim</th><th>Dia da semana</th><th>qtd faltas dia</th>");
//                        
//                         
//                         String user =(request.getParameter("usuario"));
//                        String senha = (request.getParameter("senha"));
//                         
//                                                        
//                         ResultSet lista = per.apresentarPerfil(user,senha);
//                         for(int i = 0; i< lista.size();i++){
//                         out.print("<tr>");
//                         out.print("<td>"+lista.get(i).getTur_nome() +"</td>");
//                         out.print("<td>"+lista.get(i).getTur_diciplina()+"</td>");
//                         
//                         out.print("<td><a href='#'> Clique aqui</a></td>");
//                         out.print("<td><a href='#'>Clique aqui</a> </td>");
//                         out.print("</tr>");
//                         
//                         }
//                         out.print("</tr>");
//                         out.print("</table>");
//                     Turma turma = new Turma();
//                      
//                             response.sendRedirect("configura_turma.jsp");
//                         } catch (Exception e) {
//                     
//                          throw new RuntimeException("Erro 1_vt   " + e);
//                         }
//                          
//                      
//                      
//              
              
            
            
            }


    }

//    @Override
//    public String getServletInfo() {
//        return "Short description";
    }// </editor-fold>


