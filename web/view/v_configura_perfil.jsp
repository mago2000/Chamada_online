<%@page import="model.bean.Pro_perfilBean"%>
<%@page import="model.dao.Pro_perfil"%>

        
<!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              

              <div class="title_right">
                
              </div>
            </div>

            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Controle de  Perfil</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                      
                 <form action="./Cadastra_login" method="post">
              <div>
              <input type="hidden" name="funcao" id="funcao" value="alterar" />             
              </div>
              <h1>Configuração do perfil</h1>
                              <div>
                                  <input type="text"  name="nome_completo"  id="nome_completo" class="form-control" placeholder="Nome completo" required="" />
                            </div>
                            </br>
                           
                            <div>
                                <input type="text" name="formacao" id="formacao" class="form-control" placeholder="Formação" required="" />
                            </div>
                            </br>
                            <div>
                                <input type="text" name="email" id="email" class="form-control" placeholder="E-mail" required="" />
                            </div>
                            </br>
                           

                     
                            <br>
                                <input type="submit" value="alterar">   

                            </div>

                            <div class="clearfix"></div>

                            <div class="separator">
                                
                                <div class="clearfix"></div>



                            </div>
                        </form>

                      
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->