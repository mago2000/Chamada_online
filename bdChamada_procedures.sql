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
 

## fora de chamar a procedure de iserção do usuario professor
 call cad_login_perfil_pro('luis','luis08picone@gmail.com','12345','lui alejandro pereira picone','tecnico');
 