package model;

import java.util.Date;

public class Chamada {
String c_alu_nome;
int c_alu_ra;
int cha_falta_qtd;
Date cha_falta_data;

    public String getC_alu_nome() {
        return c_alu_nome;
    }

    public void setC_alu_nome(String c_alu_nome) {
        this.c_alu_nome = c_alu_nome;
    }

    public int getC_alu_ra() {
        return c_alu_ra;
    }

    public void setC_alu_ra(int c_alu_ra) {
        this.c_alu_ra = c_alu_ra;
    }

    public int getCha_falta_qtd() {
        return cha_falta_qtd;
    }

    public void setCha_falta_qtd(int cha_falta_qtd) {
        this.cha_falta_qtd = cha_falta_qtd;
    }

    public Date getCha_falta_data() {
        return cha_falta_data;
    }

    public void setCha_falta_data(Date cha_falta_data) {
        this.cha_falta_data = cha_falta_data;
    }
    public void fazerChamada(){

    }
    public void alterarChamada(){

    }
}
