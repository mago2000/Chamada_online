package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;

import model.factory.ConectorFactory;
import model.bean.LoginBean;
import model.bean.Pro_perfilBean;

public class Pro_perfil extends Login {
private PreparedStatement ps;
private Statement st;
private Connection con ;
private   ResultSet rs;
public Pro_perfil() {
           this.con = new ConectorFactory().getConnection();
    }
    
    
    public void alterarProf(){
    
    }
    
    public ResultSet apresentarPerfil(String nome,String senha){
    
        String sql="call busca_perfil_pro('"+nome+"',"+senha+")";
        try {
             ps = con.prepareStatement(sql);
           
  
           rs = ps.executeQuery();
           while (rs.next()) {
            LoginBean login = new LoginBean();
            Pro_perfilBean perfil = new Pro_perfilBean();
           
          perfil.setPro_nome(rs.getString("per_nome"));
          perfil.setPro_formacao(rs.getString("per_formacao"));
          login.setEmail(rs.getString("log_email"));
    
            }
          
            ps.close();
            con.close();  
           
        } catch (Exception e) {
         throw new RuntimeException("Erro 1_D   " + e);
    
            
        }
        

    return rs ;
    
    }

    
   
    
}
