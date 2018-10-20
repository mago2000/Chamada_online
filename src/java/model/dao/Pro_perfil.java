package model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.factory.ConectorFactory;
import model.bean.LoginBean;
import model.bean.Pro_perfilBean;

public class Pro_perfil extends Login {

    public Pro_perfil() {
           this.con = new ConectorFactory().getConnection();
    }
    
    
    public void alterarProf(){
    
    }
    
    public void apresentarPerfil(LoginBean login, Pro_perfilBean perfil){
    String sql="call busca_perfil_pro(?,?);";
        try {
            
            
           PreparedStatement ps =  con.prepareStatement(sql);
           ps.setString(1,perfil.getPro_nome());
           ps.setString(2,perfil.getPro_formacao());
           ps.setString(3,login.getEmail());
           
           ResultSet rs = ps.executeQuery();
             
            ps.close();
            //con.close();
        } catch (Exception e) {
         throw new RuntimeException("Erro 1_D   " + e);
    
            
        }
        

    
    
    }

    
   
    
}
