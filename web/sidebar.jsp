<%
    try {

        String user = (String) session.getAttribute("usuario");
        if (user.equals("")) {
            response.sendRedirect("v_login.jsp");
        }
    } catch (NullPointerException e) {
        response.sendRedirect("v_login.jsp");
    }

%>

        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
                
                <a href="#" class="site_title"> <span>Chamada online</span></a>
        
            
            
      </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="images/img.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Welcome,</span>
                <h2>
                    <%                    
                        out.print(session.getAttribute("usuario"));
                    %>
                </h2>
              </div>
              <div class="clearfix"></div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>GERAL</h3>
                <ul class="nav side-menu">
                  
                  <li><a><i class="fa fa-edit"></i> CADASTRO <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="configura_perfil.jsp">Perfil</a></li>
                      <li><a href="cadastrar_turma.jsp">Turmas</a></li>
                      <li><a href="fazer_chamada.jsp">Chamadas</a></li>
                      <li><a href="usuario.jsp">Usu�rio</a></li>
                    </ul>
                  </li>
                  <li><a href="./Sair"><i class="fa fa-power-off"></i> SAIR </a>
                    
                  </li>
                </ul>
              </div>
              

            </div>
            <!-- /sidebar menu -->
           
          </div>
        </div>