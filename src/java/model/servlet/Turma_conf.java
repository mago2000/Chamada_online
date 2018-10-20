/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.bean.LoginBean;
import model.bean.Pro_perfilBean;
import model.bean.TurmmaBean;
import model.dao.Turma;

/**
 *
 * @author picone
 */
@WebServlet(name = "Turma_conf", urlPatterns = {"/Turma_conf"})
public class Turma_conf extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

 try (PrintWriter out = response.getWriter()) {
            String funcao = request.getParameter("funcao");

            
            
            TurmmaBean tb =  new TurmmaBean();
            LoginBean lgb = new LoginBean();
            Turma tur = new Turma();
            
            if (funcao.equals("cadastrar")) {
                lgb.setNome_user(request.getParameter("user"));
                lgb.setSenha(request.getParameter("senha"));
                tb.setTur_nome(request.getParameter(""));
                tb.setTur_diciplina(request.getParameter(""));
               //tb.setTur_ini_dia(request.getParameter(""));
              //  tb.setTur_fim_dia(request.getParameter(""));
              //  tb.setTur_hora_inicio(request.getParameter(""));
              //  tb.setTur_hora_fim(request.getParameter(""));
              //  tb.setTur_dia_semana(request.getParameter(""));
              //  tb.setTur_qtd_falta_dia(request.getParameter(""));
                
                tur.cadastrarTurma(tb ,lgb);
                response.sendRedirect("v_login.jsp");
                
            }else if (funcao.equals("listar_todos")){
                        
              
                     try {
                         out.print("<table>");
                         out.print("<tr>");
                         out.print("<th>codigo</th><th>Nome turma</th><th>Diciplina</th><th>Data inicio</th><th>Data Fim</th><th>Hora inicio</th><th>Hora Fim</th><th>Dia da semana</th><th>qtd faltas dia</th>");
                         Turma trm = new Turma();
                        String user =(request.getParameter("usuario"));
                        String senha = (request.getParameter("senha"));
                            HttpSession session = request.getSession();

                         ArrayList<TurmmaBean> lista = trm.listarTodasTurma(user,senha);
                         for(int i = 0; i< lista.size();i++){
                         out.print("<tr>");
                         out.print("<td>"+lista.get(i).getTur_nome() +"</td>");
                         out.print("<td>"+lista.get(i).getTur_diciplina()+"</td>");
                         out.print("<td>"+lista.get(i).getTur_ini_dia()+"</td>");
                         out.print("<td>"+lista.get(i).getTur_fim_dia()+"</td>");
                         out.print("<td>"+lista.get(i).getTur_hora_inicio()+"</td>");
                         out.print("<td>"+lista.get(i).getTur_hora_fim()+"</td>");
                         out.print("<td>"+lista.get(i).getTur_dia_semana()+"</td>");
                         out.print("<td>"+lista.get(i).getTur_qtd_falta_dia()+"</td>");
                         out.print("<td><a href='#'> Clique aqui</a></td>");
                         out.print("<td><a href='#'>Clique aqui</a> </td>");
                         out.print("</tr>");
                         
                         }
                         out.print("</tr>");
                         out.print("</table>");
                     Turma turma = new Turma();
                      
                             response.sendRedirect("configura_turma.jsp");
                         } catch (Exception e) {
                     
                          throw new RuntimeException("Erro 1_vt   " + e);
                         }
                          
                      
                      
              
              
            
            
            }

        }catch (NullPointerException e) {
            response.sendRedirect("v_login.jsp");
            
        }
    
    

    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
