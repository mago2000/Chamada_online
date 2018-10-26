package Teste;
import model.bean.Pro_perfilBean;
import model.bean.LoginBean;
import model.dao.Pro_perfil;
public class login {

    public static void main(String[] args) {
 
          String nome ="luis";
          String senha ="12345";
          
          Pro_perfil p1 = new Pro_perfil();
          
           p1.apresentarPerfil(nome, senha);
    }
    
}
