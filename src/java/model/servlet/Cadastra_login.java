/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.bean.LoginBean;
import model.bean.Pro_perfilBean;
import model.dao.Login;

/**
 *
 * @author picone
 */
@WebServlet(name = "Cadastra_login", urlPatterns = {"/Cadastra_login"})
public class Cadastra_login extends HttpServlet {

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
        response.sendRedirect("login.jsp");
    
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
    response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String funcao = request.getParameter("funcao");

            Login log = new Login();
            LoginBean lgb = new LoginBean();
            Pro_perfilBean pfb = new Pro_perfilBean();
            
            if (funcao.equals("cadastrar")) {
                lgb.setNome_user(request.getParameter("user"));
                lgb.setEmail(request.getParameter("email"));
                lgb.setSenha(request.getParameter("senha"));
                 pfb.setPro_nome(request.getParameter("nome_completo"));
                 pfb.setPro_formacao(request.getParameter("formacao"));
                log.cadastrarLogin(lgb ,pfb);
                response.sendRedirect("v_login.jsp");
                
            }       

        }catch (NullPointerException e) {
            response.sendRedirect("v_login.jsp");
            
        }
    
    
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
