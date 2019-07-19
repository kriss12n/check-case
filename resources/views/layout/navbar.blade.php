<header id="header">
        <div class="container">

          <!--<div id="logo" class="pull-left">
            <a href="#hero"><img src="img/logo.png" alt="" title="" /></img></a>
            <!-- Uncomment below if you prefer to use a text logo -->
            <!-- <h1><a href="">Regna</a></h1>
          </div> -->
          <nav id="nav-menu-container">
                <ul class="nav-menu" style="background: rgba(52, 59, 64, 0.9);">
                  <li><a href="#hero">Inicio</a></li>
                  <li><a href="#about">Sobre Nosotros</a></li>
                  <li><a href="#services">Nuestros Servicios</a></li>
                  <li><a href="#team">Nuestro Equipo</a></li>
                  <li><a href="#contact">Contactos</a></li>
                  @auth
                  <li><a href="{{url('/admin/login')}}">Ir al Panel de administracion</a></li>
                  @endauth
                  @guest
                  <li><a href="{{url('/admin/login')}}">Iniciar Sesion</a></li>
                  @endguest

                </ul>
              </nav>
        </div>
      </header>
