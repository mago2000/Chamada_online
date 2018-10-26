<%@page import="model.bean.TurmmaBean"%>
<%@page import="model.dao.Turma"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import= "java.util.ArrayList"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Serviços de Turmas</h3>
                                  

                
              

              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  <div class="input-group">
                    
                    <span class="input-group-btn">

                    </span>
                  </div>
                </div>
              </div>
            </div>

            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Configuração de Turmas</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                     
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                      
                 <form action="./Turma_conf" method="post">
              <div>
              <input type="hidden" name="funcao" id="funcao" value="cadastrar" />             
               <%
                  String usuario = (String) session.getAttribute("usuario");
                  String senha = (String) session.getAttribute("senha");
              if(usuario == null){
              out.print(" variavel vazia");
              
              
              }
              %>
              
              <input type="hidden" name="usuario" id="usuario" value="<%=usuario%>" />
              <input type="hidden" name="senha" id="senha" value="<%=senha%>" />
             
              </div>
              <h1>Cadastrar Nova Turma</h1>
                            <div>
                                <input type="text" name="nome_turma" id="nome_turma" class="form-control" placeholder="Nome da turma" required="" />
                            </div>
                            </br>
                           
                            <div>
                                <input type="text" name="diciplina" id="diciplina" class="form-control" placeholder="Nome da diciplina" required="" />
                            </div>
                            </br>
                           

                            <div>
                                <input type="text" name="data_inicio" id="data_inicio" class="form-control" placeholder="Data de inicio da turma" required="" />
                                
                            </div>
                            </br>

                            <div>
                                <input type="text" name="data_fim" id="data_inicio" class="form-control" placeholder="Data de fim da turma" required="" />
                                
                            </div>
                            <br>
                            <div>
                                <input type="text" name="data_fim" id="data_inicio" class="form-control" placeholder="Data de fim da turma" required="" />
                                
                            </div>
                            <br>
                            <div>
                                <input type="text" name="data_fim" id="data_inicio" class="form-control" placeholder="Data de fim da turma" required="" />
                                
                            </div>
                            <br>
                         
                            <div>
                                <input type="text" name="dia_semana" id="dia_semana" class="form-control" placeholder="Dia da semana da aula" required="" />
                            </div>
                            </br>
                           

                            <div>
                                <input type="text" name="qtd_falta" id="qtd_falta" class="form-control" placeholder="Quantidade de  faltas" required="" />
                            </div>
                         
                            <br>
                                <input type="submit" value="cadastrar">   
                                <input type="submit" value="alterar">   
                 </form>
                            </div>

                            <div class="clearfix"></div>

                            <div class="separator">
                                
                                <div class="clearfix"></div>



                            </div>
                            
                      
                      
                  </div>
                </div>
              </div>
            </div>
          </div>
            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Lista de Turmas</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      
                 
                        
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                   
                    <div>
                  <form action="./Turma_conf" method="post">
              <input type="hidden" name="funcao" id="funcao" value="listar_todos" /> 
              <%
                  usuario = (String) session.getAttribute("usuario");
                  senha = (String) session.getAttribute("senha");
              
             if(usuario == null){
              out.print(" variavel vazia");
              
              
              }
              %>
              
              <input type="hidden" name="usuario" id="usuario" value="<%=usuario%>" />
              <input type="hidden" name="senha" id="senha" value="<%=senha%>" />
             
                 <div>
                  
                  
              </div>

             <input type="submit" value="listar_todos"> 
                 </form>
 
       <table border ='1'>
        <tr> 
        <th>Nome Turma</th>
        <th>Diciplina Turma</th>
        <th>Dia inicio</th>
        <th>Dia Termino</th>
        <th>Hora inicio</th>
        <th>Hora termino</th>
        <th>Dia da semana</th>
        <th>Qtd faltas</th>
        <th>Função</th>
        <th>Função</th>
        
        </tr>                                        
                   
                            <c:forEach items="${lista}" var="lista" >
                            
                         <tr>
                             <td> <c:out value="${lista.tur_nome}"/> </td>
                            <td> <c:out value= "${lista.tur_diciplina}"/> </td>
                            <td> <c:out value= "${lista.tur_inicio}"/> </td> 
                            <td> <c:out value= "${lista.tur_fim}"/> </td>   
                            <td> <c:out value= "${lista.tur_hora_inicio}"/> </td>
                            <td> <c:out value= "${lista.tur_hora_fim}"/> </td>
                            <td> <c:out value= "${lista.tur_dia_semana}"/> </td>
                            <td> <c:out value= "${lista.tur_qtd_falta_dia}"/> </td>
                              
                         </tr>
                            
                            
                            
                      </table>
                            
                            
                            
                            
                            
                            </c:forEach>>
              </div>
                  </div>
              
                  


                      
                  </div>
                </div>
              </div>
            </div>

       
        <!-- /page content -->