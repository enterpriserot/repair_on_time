<body>
  <div id="alertbanner"></div>
  <nav id="topNav" class="navbar navbar-default navbar-fixed-top">
      <div class="container-fluid">
          <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-navbar">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand page-scroll" href="<?php amigable('?module=main'); ?>">Repair on Time</a>
          </div>
          <div class="navbar-collapse collapse" id="bs-navbar">
              <ul class="nav navbar-nav">
                  <li class="
                          <?php if(isset($_GET['module']) === 'main')
                                   echo'active';
                                else
                                   echo 'deactivate';
                          ?>">
                      <a class="page-scroll" href="<?php amigable('?module=main'); ?>">Home</a>
                  </li>
                  <!--<li class="
                          <?php if(isset($_GET['module']) === 'products')
                                   echo'active';
                                else
                                   echo 'deactivate';
                          ?>">
                      <a class="page-scroll" href="<?php amigable('?module=products&function=list_products'); ?>">Tecnicos</a>
                  </li>
                  <li class="
                          <?php if(isset($_GET['module']) === 'users')
                                   echo'active';
                                else
                                   echo 'deactivate';
                          ?>">
                      <a class="page-scroll" href="<?php amigable('?module=users'); ?>">Users</a>
                  </li>-->
                  <li class="
                          <?php if(isset($_GET['module']) === 'technicians')
                                   echo'active';
                                else
                                   echo 'deactivate';
                          ?>"><a href="<?php amigable('?module=technicians'); ?>">TECHNICIANS</a>
                  </li>
                  <li class="
                          <?php if(isset($_GET['module']) === 'contact')
                                   echo'active';
                                else
                                   echo 'deactivate';
                          ?>">
                      <a class="page-scroll" href="<?php amigable('?module=contact');?>">Contact</a>
                  </li>
              </ul>
              <ul class="nav navbar-nav navbar-right">
                <li id="LogProf">
                    <a href="<?php echo USERS_VIEW_PATH . "modal.html"; ?>"
                    class="button special" data-toggle="modal" id="Login" data-target="#modalLog">Acceder</a>
                </li>
                  <li>
                      <a class="page-scroll" data-toggle="modal" title="A free Bootstrap video landing theme" href="#aboutModal">About</a>
                  </li>
              </ul>
          </div>
      </div>
  </nav>
  <div id="LoginModal"></div>
