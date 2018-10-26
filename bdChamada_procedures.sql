use bdchamada;
## procedures do sistema de chamada online
 ##procedure para inserão e cadastro do perfil  do usuario professor
 delimiter $$
 create  procedure cad_login_perfil_pro( 
in p_log_nome varchar(15), 
in p_log_email varchar(50), 
in p_log_senha varchar(15),
in p_per_nome varchar(50) ,
in p_per_formacao varchar(50) 
 
 )
 
 begin
DECLARE msg VARCHAR(1000) DEFAULT "sem mensagem";
DECLARE excecao SMALLINT DEFAULT 0;
DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET excecao = 1;

START TRANSACTION;

 insert into  login(log_nome,log_email ,log_senha) 
 
 values (p_log_nome,p_log_email,p_log_senha);
IF excecao = 1 THEN
      SET msg = "ALERTA: Erro ao inserir na tabela de pessoas";
      ROLLBACK;
   ELSE
      SELECT DISTINCT LAST_INSERT_ID() INTO @log_login_id FROM login;
      IF excecao = 1 THEN
         SET msg = "ALERTA: Erro ao buscar o ultimo ID inserido em login";
         ROLLBACK;
      ELSE 
 

 
 insert into  perfil_pro(per_nome,per_formacao ,per_fk_login) 
 
 values (p_per_nome,p_per_formacao ,@log_login_id);
 
         IF excecao = 1 THEN
            SET msg = "ALERTA: Erro ao inserir na tabela de perfil_pro";
            ROLLBACK;
         END IF;
      END IF;
   END IF;
   IF excecao <> 1 THEN
      COMMIT;
      SET msg = "ALERTA: Registro Incluido com sucesso";
   END IF;
   SELECT msg AS msg;   

 end $$ 
## forma de chamar a procedure de iserção do usuario professor
 #call cad_login_perfil_pro('luis','luis08picone@gmail.com','12345','lui alejandro pereira picone','tecnico');
##----------------------------------------------------------------------------- 
## Procedure de select no  perfil do usário apos login
delimiter $$
create procedure busca_perfil_pro(
in p_log_nome varchar(15), 
in p_log_senha varchar(15)
)
begin
declare p_log_login_id int(11);
DECLARE msg VARCHAR(1000) DEFAULT "sem mensagem";
DECLARE excecao SMALLINT DEFAULT 0;
DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET excecao = 1;
START TRANSACTION;

select  log_login_id into p_log_login_id  from login where log_nome= p_log_nome and log_senha  =p_log_senha ; 
     
    
select perfil_pro.per_nome, perfil_pro.per_formacao, login.log_email from perfil_pro
 inner join login 
on  perfil_pro.per_fk_login = login.log_login_id  where login.log_login_id = p_log_login_id;

end$$
 ##forma de chamar procedure de busca perfil apresentar
 ##call busca_perfil_pro('luis',1234);
 delimiter $$
create procedure altera_perfil_pro(
in p_log_nome varchar(15), 
in p_log_senha varchar(15),
in p_per_nome varchar(50) ,
in p_per_formacao varchar(50) 

)
begin
declare p_per_fk_login int(11);
DECLARE msg VARCHAR(1000) DEFAULT "sem mensagem";
DECLARE excecao SMALLINT DEFAULT 0;
DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET excecao = 1;
START TRANSACTION;

select  log_login_id into p_per_fk_login  from login where log_nome= p_log_nome and log_senha  =p_log_senha ; 

 update  perfil_pro  
 set per_nome =p_per_nome,per_formacao  = p_per_formacao 
 where per_fk_login = p_per_fk_login ;
     

end$$

## call altera_perfil_pro('luis','12345','jose felipe oliveira','história');

##******************************** verificar altera_login
 delimiter $$
create procedure altera_login(
in p_log_nome varchar(15), 
in p_log_email varchar(50), 
in p_log_senha varchar(15)

)
begin
declare p_log_login_id int(11);
DECLARE msg VARCHAR(1000) DEFAULT "sem mensagem";
DECLARE excecao SMALLINT DEFAULT 0;
DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET excecao = 1;
START TRANSACTION;

SELECT 
    log_login_id
INTO p_log_login_id FROM
    login
WHERE
    log_nome = p_log_nome
        AND log_senha = p_log_senha;
 
UPDATE login 
SET 
    log_nome = p_log_nome,
    log_email = p_log_email,
    log_senha = p_log_senha
WHERE
    log_login_id = p_log_login_id;
     

end$$
call altera_login ('felipe','felipe@gail.com','123456'); 
##******************************** verificar altera_login 
 
##********************************************* PROCCEDURES TURMA 
##procedure inserir turma
 delimiter $$
create procedure inserir_turma(

in p_log_nome varchar(15), 
in p_log_senha varchar(15),
in p_tur_nome varchar(50) ,
in P_tur_diciplina varchar(50) ,
in P_tur_inicio date ,
in P_tur_fim date ,
in p_tur_hora_inicio time  ,
in p_tur_hora_fim time ,

in P_tur_dia_semana  varchar(20),
in P_tur_qtd_falta_dia int (3) 


)
begin
declare p_tur_fk_perfil_pro int(11);
DECLARE msg VARCHAR(1000) DEFAULT "sem mensagem";
DECLARE excecao SMALLINT DEFAULT 0;
DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET excecao = 1;
START TRANSACTION;
select  log_login_id into p_tur_fk_perfil_pro  from login where log_nome= p_log_nome and log_senha  =p_log_senha ; 


insert into turma(tur_nome,
tur_diciplina ,
tur_inicio  ,
tur_fim  ,
tur_hora_inicio ,
tur_hora_fim ,
tur_dia_semana  ,
tur_qtd_falta_dia ,
tur_fk_perfil_pro  
) 

values(p_tur_nome  ,
P_tur_diciplina ,
P_tur_inicio  ,
P_tur_fim  ,
p_tur_hora_inicio ,
p_tur_hora_fim ,
P_tur_dia_semana ,
P_tur_qtd_falta_dia ,
P_tur_fk_perfil_pro  
);

end$$

call inserir_turma('luis','12345','mateatica quarta','geometria','2018/10/10','2018/10/10','12:00:00','01:00:00','segunda-feira',4);
delimiter $$
create procedure altera_turma(
in p_log_nome varchar(15), 
in p_log_senha varchar(15),
in p_tur_nome varchar(50) ,
in P_tur_diciplina varchar(50) ,
in P_tur_inicio date ,
in P_tur_fim date ,
in p_tur_hora_inicio time  ,
in p_tur_hora_fim time ,
in P_tur_dia_semana  varchar(20),
in P_tur_qtd_falta_dia int (3) 
)
begin
DECLARE p_tur_fk_perfil_proo int(9);
DECLARE msg VARCHAR(1000) DEFAULT "sem mensagem";
DECLARE excecao SMALLINT DEFAULT 0;
DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET excecao = 1;
START TRANSACTION;

select  log_login_id into p_tur_fk_perfil_proo  from login where log_nome= p_log_nome and log_senha  =p_log_senha ; 

update turma

set 
tur_nome =p_tur_nome,
tur_diciplina = P_tur_diciplina,
tur_inicio = P_tur_inicio ,
tur_fim = P_tur_fim   ,
tur_hora_inicio = p_tur_hora_inicio,
tur_hora_fim = p_tur_hora_fim,
tur_dia_semana = P_tur_dia_semana ,
tur_qtd_falta_dia = P_tur_qtd_falta_dia
where 
tur_fk_perfil_pro = P_tur_fk_perfil_proo;
end$$

##select * from turma;
##call altera_turma('luis','12345','história quarta','canudos','2019/10/10','2019/10/10','11:00:00','02:00:00','terça-feira',5);
delimiter $$
create procedure listar_turma(
in p_log_nome varchar(15), 
in p_log_senha varchar(15) 
)
begin
DECLARE p_tur_fk_perfil_proo int(9);
DECLARE msg VARCHAR(1000) DEFAULT "sem mensagem";
DECLARE excecao SMALLINT DEFAULT 0;
DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET excecao = 1;
START TRANSACTION;

select  log_login_id into p_tur_fk_perfil_proo  from login where log_nome= p_log_nome and log_senha  =p_log_senha ; 

select * from turma where tur_fk_perfil_pro = p_tur_fk_perfil_proo;


end$$
call listar_turma('luis',12345);
