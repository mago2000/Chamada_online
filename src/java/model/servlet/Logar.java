package model.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.bean.LoginBean;
import model.dao.Login;
import model.dao.Pro_perfil;
/**
 *
 * @author picone
 */
@WebServlet(name = "Logar", urlPatterns = {"/Logar"})
public class Logar extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //doPost(request, response);
        response.sendRedirect("v_login.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {  
        try {
            Login log = new Login();
            LoginBean lgb = new LoginBean();
            Pro_perfil pro = new Pro_perfil();
        if(request.getParameter("user").equals("")||request.getParameter("senha").equals("")){
                response.sendRedirect("v_login.jsp");
                
                }
            else{ 
                    
        
                 String user =(request.getParameter("user"));
                 String senha = (request.getParameter("senha"));
                HttpSession session = request.getSession();
                 if(log.logarLogin(user, senha)){
                response.sendRedirect("usuario.jsp");
                session.setAttribute("usuario", user);
                session.setAttribute("senha", senha);
                
                session.setMaxInactiveInterval(60 * 5);
                
                 }
                else{
                response.sendRedirect("v_login.jsp");
                }
                }
        }
                        
        
        catch (Exception e) {
            throw new RuntimeException("Erro 1w" + e);
            


        }
    } 
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
