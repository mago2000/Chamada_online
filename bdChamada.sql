## Base de dados  da lista de chamada  online
create database bdChamada;
use bdChamada;

create table login(
log_login_id int   auto_increment  not null,
log_email varchar(50) not null,
log_senha varchar(15) not null,
constraint pk_login primary key (log_login_id)
);

create table perfil_pro(
per_pro_id int   auto_increment  not null,
per_nome varchar(50) not null,
per_formacao varchar(50) not null,
per_fk_login int(9) not null,
constraint pk_perfil_pro primary key (per_pro_id)
);
create table turma(
tur_turma_id int  auto_increment  not null,
tur_nome varchar(50) not null,
tur_diciplina varchar(50) not null,
tur_inicio date not null,
tur_fim date not null,
tur_dia_semana date not null,
tur_qtd_falta_dia int (3) not null,
tur_fk_perfil_pro int(9) not null,
constraint pk_turma primary  key(tur_turma_id) 
);

create table aluno (
alu_aluno_id int auto_increment  not null,
alu_nome varchar(50) not null,
alu_ra int(10) not null,
alu_fk_turma int(5) not null,
constraint pk_aluno primary key (alu_aluno_id)
);


create table chamada(
cha_nome varchar(50) not null,
cha_ra int(10) not null,
cha_falta_qtd int(3) not null,
cha_falta_data date  not null,
cha_fk_turma int(5) not null,
cha_fk_aluno int(9) not null,
cha_fk_perfil_pro int(9) not null
);






##adicionando FK  nas  tables

## há fk abaixo corresponde a chave extrangeira  de login para a tabela perfil_pro
alter table perfil_pro add constraint  fk_login_per_pro  foreign key (per_fk_login) references login(log_login_id);
## há fk abaixo corresponde a chave extrangeira  de perfil_pro para a tabela  turma
alter table turma add constraint  fk_per_pro_turma  foreign key (tur_fk_perfil_pro) references perfil_pro(per_pro_id);
## há fk abaixo corresponde a chave extrangeira  de turma para a tabela  aluno
alter table aluno add constraint  fk_turma_aluno  foreign key (alu_fk_turma) references turma(tur_turma_id);
## há fk abaixo corresponde a chave extrangeira  de perfil_pro para a tabela  chamada
alter table chamada add constraint  fk_perfil_pro_chamada  foreign key (cha_fk_perfil_pro) references perfil_pro(per_pro_id);
## há fk abaixo corresponde a chave extrangeira  de turma para a tabela  chamada
alter table chamada add constraint  fk_turma_chamada  foreign key (cha_fk_turma) references turma(tur_turma_id);
## há fk abaixo corresponde a chave extrangeira  de aluno para a tabela  chamada
alter table chamada add constraint  fk_aluno_chamada  foreign key (cha_fk_aluno) references aluno(alu_aluno_id);

