package model.dao;
import model.bean.LoginBean;
import model.bean.Pro_perfilBean;
import model.bean.TurmmaBean;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.Time;
import java.util.Date;
import java.util.List;
import model.factory.ConectorFactory;

public class Turma {
   private Connection con;
   
   private PreparedStatement ps;
   private Statement st;
   private ResultSet rs;
  

    public Turma() {
            this.con = new ConectorFactory().getConnection();
    }

public void cadastrartodosAluno_Turma(){

}
public void buscartodosAluno_Turma(){

}
public void cadastrarTurma(TurmmaBean turma,LoginBean login){

    //call inserir_turma('luis','12345','mateatica quarta','geometria','2018/10/10','2018/10/10','12:00:00','01:00:00','segunda-feira',4);
        String sql ="    call inserir_turma(?,?,?,?,?,?,?,?,?,?);";
        try {
            ps =  con.prepareStatement(sql);
            ps.setString(1,login.getNome_user());
            ps.setString(2,login.getSenha());
            ps.setString(3, turma.getTur_nome());
            ps.setString(4, turma.getTur_diciplina());
            ps.setDate(5, (java.sql.Date) turma.getTur_ini_dia());
            ps.setDate(6, (java.sql.Date) turma.getTur_fim_dia());
            ps.setTime(7, turma.getTur_hora_fim());
            ps.setTime(8, turma.getTur_hora_fim());
            ps.setString(9, turma.getTur_dia_semana());
            ps.setInt(10, turma.getTur_qtd_falta_dia());
            ps.executeUpdate();
            ps.close();
            con.close();
        } catch (Exception e) {
         throw new RuntimeException("Erro 1_D   " + e);
            
            
        }
        

}
public void alterarTurma(TurmmaBean turma,LoginBean login){
//call altera_turma('luis','12345','história quarta','canudos','2019/10/10','2019/10/10','11:00:00','02:00:00','terça-feira',5);
    String sql ="call alterar_turma(?,?,?,?,?,?,?,?,?,?);";
        try {
            ps =  con.prepareStatement(sql);
            ps.setString(1,login.getNome_user());
            ps.setString(2,login.getSenha());
            ps.setString(3, turma.getTur_nome());
            ps.setString(4, turma.getTur_diciplina());
            ps.setDate(5, (java.sql.Date) turma.getTur_ini_dia());
            ps.setDate(6, (java.sql.Date) turma.getTur_fim_dia());
            ps.setTime(7, turma.getTur_hora_fim());
            ps.setTime(8, turma.getTur_hora_fim());
            ps.setString(9, turma.getTur_dia_semana());
            ps.setInt(10, turma.getTur_qtd_falta_dia());
            ps.executeUpdate();
            ps.close();
            con.close();
        } catch (Exception e) {
         throw new RuntimeException("Erro 1_D   " + e);
            //Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, e);
            
        }
        

}
public void excluirTurma(){

}
public List<TurmmaBean> listarTodasTurma(String nome ,String senha){
    List <TurmmaBean> lista = new ArrayList <TurmmaBean>();
    
    String sql ="call listar_turma('"+ nome +"',"+ senha + ")";
    try {
    st = con.createStatement();
            rs = st.executeQuery(sql);
           
        while (rs.next()) {
            TurmmaBean turma = new TurmmaBean();
            turma.setTur_nome(rs.getString("tur_nome"));
            turma.setTur_diciplina(rs.getString("tur_diciplina"));
            turma.setTur_ini_dia(rs.getDate("tur_inicio"));
            turma.setTur_fim_dia(rs.getDate("tur_fim"));
            turma.setTur_hora_inicio(rs.getTime("tur_hora_inicio"));
            turma.setTur_hora_fim(rs.getTime("tur_hora_fim"));
            turma.setTur_dia_semana(rs.getString("tur_dia_semana"));
            turma.setTur_qtd_falta_dia(rs.getInt("tur_qtd_falta_dia"));
            lista.add(turma);
            
        
        }
    
    } catch (Exception e) {
    throw new RuntimeException("Erro 1_D   " + e);
          
    }
       return lista;

}

}
