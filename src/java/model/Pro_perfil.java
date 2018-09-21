package model;

public class Pro_perfil extends Login {
    int pro_id;
    String pro_nome;
    String pro_formacao;
    
    public Pro_perfil(String email, String senha) {
        super(email, senha);
    }

    public String getPro_nome() {
        return pro_nome;
    }

    public void setPro_nome(String pro_nome) {
        this.pro_nome = pro_nome;
    }

    public String getPro_formacao() {
        return pro_formacao;
    }

    public void setPro_formacao(String pro_formacao) {
        this.pro_formacao = pro_formacao;
    }
    
    public void cadastrarProf(){
    
    
    
    
    }
    public void alterarProf(){
    
    
    
    
    }
    public void excluircontaProf(){
    
    
    
    
    }
    
}
