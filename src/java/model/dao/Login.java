package model.dao;
import model.bean.LoginBean;
import model.bean.Pro_perfilBean;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import model.factory.ConectorFactory;
public class Login {

Connection con;


    public Login() {
        this.con = new ConectorFactory().getConnection();
        
    }
    
    public void cadastrarLogin(LoginBean login, Pro_perfilBean perfil){
        String sql =" call cad_login_perfil_pro(?,?,?,?,?)";
        try {
            PreparedStatement ps =  con.prepareStatement(sql);
            ps.setString(1,login.getNome_user());
            ps.setString(2,login.getEmail());
            ps.setString(3,login.getSenha());
            ps.setString(4,perfil.getPro_nome());
            ps.setString(5,perfil.getPro_formacao());
            ps.executeUpdate();
            ps.close();
            con.close();
        } catch (Exception e) {
         throw new RuntimeException("Erro 1_D   " + e);
            //Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, e);
            
        }
        
        }
    public void alteraLogin(){
        
        
        }
    public void excluirLogin(){
        
        
        }
    
    
    
    public boolean logarLogin(String nome, String senha) {
        String sql = "select * from login where log_nome=? and log_senha=?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, nome);
            ps.setString(2, senha);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException e) {
            //throw new RuntimeException("Erro 1_D   " + e);
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null,"Erro 2_D  " + e);
        }
        return false;
    }

 public boolean recuperarLogin(String email){
        String sql = "select log_senha from login where log_email=?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, email);
            
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException e) {
            //throw new RuntimeException("Erro 1_D   " + e);
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null,"Erro 2_D  " + e);
        }
        return false;
        
        
        }
        
}

