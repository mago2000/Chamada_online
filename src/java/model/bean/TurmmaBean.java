package model.bean;

import java.util.Date;

public class TurmmaBean {

int turma_id;
String tur_nome;
String tur_diciplina;
String tur_dia_semana;
Date tur_ini_dia;
Date tur_fim_dia;
int tur_qtd_dia;
//Datetime tur_ini_hr;

    public int getTurma_id() {
        return turma_id;
    }

    public void setTurma_id(int turma_id) {
        this.turma_id = turma_id;
    }

    public String getTur_nome() {
        return tur_nome;
    }

    public void setTur_nome(String tur_nome) {
        this.tur_nome = tur_nome;
    }

    public String getTur_diciplina() {
        return tur_diciplina;
    }

    public void setTur_diciplina(String tur_diciplina) {
        this.tur_diciplina = tur_diciplina;
    }

    public String getTur_dia_semana() {
        return tur_dia_semana;
    }

    public void setTur_dia_semana(String tur_dia_semana) {
        this.tur_dia_semana = tur_dia_semana;
    }

    public Date getTur_ini_dia() {
        return tur_ini_dia;
    }

    public void setTur_ini_dia(Date tur_ini_dia) {
        this.tur_ini_dia = tur_ini_dia;
    }

    public Date getTur_fim_dia() {
        return tur_fim_dia;
    }

    public void setTur_fim_dia(Date tur_fim_dia) {
        this.tur_fim_dia = tur_fim_dia;
    }

    public int getTur_qtd_dia() {
        return tur_qtd_dia;
    }

    public void setTur_qtd_dia(int tur_qtd_dia) {
        this.tur_qtd_dia = tur_qtd_dia;
    }

    
}
