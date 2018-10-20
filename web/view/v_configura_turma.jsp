<%@page import="model.bean.TurmmaBean"%>

<%@page import="model.dao.Turma"%>
<%@page import= "java.util.ArrayList"%>

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
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
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
                                <input type="text" name="hora_inicio" id="hora_inicio" class="form-control" placeholder="Hora de inicio da aula" required="" />
                            </div>
                            </br>
                           

                            <div>
                                <input type="text" name="hora_fim" id="hora_fim" class="form-control" placeholder="Hora de final da aula" required="" />
                            </div>
                         
                            <br>
                                <input type="submit" value="cadastrar">   
                                <input type="submit" value="alterar">   

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
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                 <form action="./Turma_conf" method="post">
              <input type="hidden" name="funcao" id="funcao" value="listar_todos" />             
                                
              <button type="submit" >   
                                </button>
                        </form>

                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                 
              
                            </div>


                      
                  </div>
                </div>
              </div>
            </div>
</div>

       
        <!-- /page content -->