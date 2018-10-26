
package model.servlet;


import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;


import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.RequestDispatcher;
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

    
   @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       // processRequest(request, response);
       }
    

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);

 try (PrintWriter out = response.getWriter()) {
            String funcao = request.getParameter("funcao");

            SimpleDateFormat formta = new  SimpleDateFormat("D/M/Y");
            
            
            TurmmaBean tb =  new TurmmaBean();
            LoginBean lgb = new LoginBean();
            Turma tur = new Turma();
            
            if (funcao.equals("cadastrar")) {
                lgb.setNome_user(request.getParameter("user"));
                lgb.setSenha(request.getParameter("senha"));
                tb.setTur_nome(request.getParameter("nome_turma"));
                tb.setTur_diciplina(request.getParameter("diciplina"));
               //tb.getSetTur_ini_dia (request.getParameter("data_inicio");
                //tb.setTur_fim_dia(request.getParameter("data_fim"));
                //tb.setTur_hora_inicio(request.getParameter("hora_inicio"));
                //tb.setTur_hora_fim (request.getParameter("hora_fim"));
                //tb.setTur_dia_semana(request.getParameter("dia_semana"));
                //tb.setTur_qtd_falta_dia = Integer.parseInt(request.getParameter("qtd_falta"));
                
                tur.cadastrarTurma(tb ,lgb);
                response.sendRedirect("v_login.jsp");
                
            }else if (funcao.equals("listar_todos")){
                        
              
                     try {
                        Turma trm = new Turma();
                        String user =(request.getParameter("usuario"));
                        String senha = (request.getParameter("senha"));                                                                                 
                        
                        List<?> lista = trm.listarTodasTurma(user, senha);
                         request.setAttribute("lista", lista);
                         

                        
                     
                          request.getRequestDispatcher("view/v_lista_turma.jsp").forward(request, response);
                          
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
