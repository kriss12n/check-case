<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Check Case</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Bitter:400,700">
    <link rel="stylesheet" href="/css/index.css">
    <link rel="stylesheet" href="/css/font-awesome.min.css">
    <link rel="stylesheet" href="/css/ionicons.min.css">
</head>

<body>
    <div>
        <div class="header-dark">
            <nav class="navbar navbar-dark navbar-expand-md navigation-clean-search">
                <div class="container"><a class="navbar-brand" href="index.html">Check Case</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse"
                        id="navcol-1">
                        <form class="form-inline mr-auto" target="_self">
                            <div class="form-group"><label for="search-field"></label></div>
                        </form><span class="navbar-text"></span><a class="btn btn-light action-button" role="button" href="{{url('/admin/login')}}" >Inicio Sesión</a></div>
                </div>
            </nav>
        </div>
    </div>

    <div class="container">
      <br>
      <h1 class="text-center">Soluciones Juridicas</h1>
      <br>
      <br>

      <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
          @foreach ($slider as $sliders)
          <div class="carousel-item @if($loop->first)active @endif">
                <img class="d-block w-100" src="{{ Voyager::image( $sliders->image ) }}" alt="Error al cargar el carrusel">
                <div class="carousel-caption">
                <h2 style="color:{{$sliders->color}}">{{$sliders->tittle}}</h2>
                <h4 style="color:{{$sliders->color}}">{{$sliders->sub_tittle}}</h4>
                </div>
              </div>
          @endforeach
            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>


    </div>

    <div class="testimonials-clean">
        <div class="container">
            <div class="intro">
                <h2 class="text-center">Nuestro Equipo</h2>
                <p class="text-center">Somos un grupo de Abogados con gran vocación y dedicación a lo que nos evocamos, con&nbsp;una amplia trayectoria laboral, tanto en Chillán como en el resto del país.<br><br></p>
            </div>
        </div>
    </div>
    <div class="footer-dark">
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-md-3 item">
                        <h2>Enlaces Asociados</h2>
                        <ul>
                            <li><a href="https://www.bcn.cl">Bibloteca del Congreso Nacional</a></li>
                            <li><a href="http://www.pjud.cl/home">Poder Judicial</a></li>
                            <li><a href="https://www.diariooficial.interior.gob.cl">Diario Oficial</a></li>
                            <li><a href="https://www.colegioabogadoschillan.cl">Colegio de Abogados Chillán</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-6 col-md-3 item">
                        <h2>Acerca de nosotros</h2>
                        <ul>
                            <li><a >Chillán&nbsp;<br>Bulnes 470, Oficina 106.<br></a></li>
                            <li><a >Fono: +42 2222222</a></li>
                            <li><a >Correo : Ejemplo@ejemplo.cl</a></li>
                        </ul>
                    </div>
                    <div class="col-md-6 item text">
                        <h2>Acerca de Nosotros</h2>
                        <br>
                        <p>Un grupo de abogados a su servicio para solventar su problemas especializados en materias juridicas de asuntos familiares, Tributarios, Laborales, Proteccion al Consumidor, de Bienes Rices, Herencias, etc. Con magister y especializados en multiples areas que garantizan una labor y desempeño notable para su seguridad y espectativas</p>
                    </div>
                    <div class="col item social"><a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-instagram"></i></a></div>
                </div>
                <p class="copyright">Itempus © 2019</p>

            </div>
        </footer>
    </div>
    <script src="/js/index.js"></script>
</body>

</html>
