        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Plain Page</h3>
                                    <%                    
                        out.print(session.getAttribute("usuario"));
                                out.print(session.getAttribute("senha"));
                    %>

                
              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Go!</button>
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
                    <h2>Plain Page</h2>
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
                      
                 <form action="./Cadastra_login" method="post">
              <div>
              <input type="hidden" name="funcao" id="funcao" value="alterar" />             
              </div>
              <h1>Configuração do perfil</h1>
                            <div>
                                <input type="text" name="user" id="user" class="form-control" placeholder="Usuário" required="" />
                            </div>
                            </br>
                           
                            <div>
                                <input type="text" name="email" id="email" class="form-control" placeholder="E-mail" required="" />
                            </div>
                            </br>
                           

                            <div>
                                <input type="password" name="senha" id="senha" class="form-control" placeholder="Senha" required="" />
                            </div>
                            <div>
                            </br>
                           

                            <div>
                                <input type="text" name="nome_completo" id="nome_completo" class="form-control" placeholder="Nome completo" required="" />
                            </div>
                            </br>
                           

                            <div>
                                <input type="text" name="formacao" id="formacao" class="form-control" placeholder="Formação" required="" />
                            </div>
                            
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