<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Check-Case</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

@extends('layout.master')

  <style>

    html{
        scroll-behavior: smooth;
    }

        #hero {
        width: 100%;
        height: 100vh;
        background-size: cover;
        position: relative;
         }



  </style>
</head>

<body>

  <!--==========================
  Header
  ============================-->
@include('layout.navbar')

    @foreach ($contenido as $content)

  <section id="hero">
   <img src="{{Voyager::image($content->image)}}" style="top center;" alt="" id="hero">
    <div class="hero-container">
      <h1 style="color:{{$content->color_tittle}};" >{{$content->tittle}}</h1>
      <h2 style="color:{{$content->color_subtittle}}; ">{{$content->subtittle}}</h2>
      <a href="" class="btn-get-started">Iniciar</a>
    </div>
  </section><!-- #hero -->
  @endforeach
  <main id="main">
    <section id="about">
        <div class="container">
          <div class="row about-container">

@if (isset($image))
    @foreach ($about as $about)

 <div class="col-lg-6 content order-lg-1 order-2">
   <h2 class="title">{{$about->tittle}}</h2>
   <p>
       {!! $about->Contenido !!}
   </p>
   @endforeach


   @foreach($carda as $carda)


   <div class="icon-box wow fadeInUp">
     <div class="icon"><i class="{{$carda->card_icon}}"></i></div>
     <h4 class="title"><a href="">{{$carda->card_tittle}}</a></h4>
     <p class="description">{{$carda->card_content}}</p>
   </div>

   @endforeach
 </div>




 <div class="col-lg-6 background order-lg-2 order-1 wow fadeInRight">
     <img src="{{voyager::image($image)}}" alt="" style="center top no-repeat;" class="thumbnail">
 </div>


 @else

 @foreach ($about as $about)


 <div class="col-lg-12 content order-lg-1 order-2">
   <h2 class="title">{{$about->tittle}}</h2>
   <p>
       {!! $about->Contenido !!}
   </p>
   @endforeach

   @foreach ($carda as $carda)


   <div class="icon-box wow fadeInUp">
     <div class="icon"><i class="{{$carda->card_icon}}"></i></div>
     <h4 class="title"><a href="">{{$carda->card_tittle}}</a></h4>
     <p class="description">{{$carda->card_content}}</p>
   </div>

   @endforeach

 </div>

 @endif


          </div>

        </div>
      </section>

<!-- servicios -->
<section id="services">

    <div class="container wow fadeIn">
        @foreach ($service as $service)
        <div class="section-header">
                <h3 class="section-title">{{$service->tittle}}</h3>
                <p class="section-description">{{$service->subtittle}}</p>
                </div>
        @endforeach
      <div class="row">
          @foreach ($cards as $card)
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.2s">
                <div class="box">
                  <div class="icon"><i class="{{$card->card_icon}}"></i></div>
                  <h4 class="title">{{$card->card_tittle}}</h4>
                  <p class="description">{!! $card->card_content !!}</p>
                </div>
              </div>
          @endforeach
      </div>

    </div>
  </section><!-- #services -->

  <section id="team">
    <div class="container wow fadeInUp">
            @foreach ($team as $team)
      <div class="section-header">
        <h3 class="section-title">{{$team->tittle}}</h3>
        <p class="section-description">{{$team->subtittle}}</p>
      </div>
            @endforeach
      <div class="row team">
          @foreach ($cardt as $card)

        <div class="col-lg-3 col-md-6">
          <div class="member">
            <div class="pic"><img src="{{voyager::image($card->image)}}" alt=""></div>
            <h4>{{$card->user_name}} {{$card->user_surname}} </h4>
            <span>{{$card->role}}</span>
            <div class="social">
              <a href=""><i class="fa fa-twitter"></i></a>
              <a href=""><i class="fa fa-facebook"></i></a>
              <a href=""><i class="fa fa-google-plus"></i></a>
              <a href=""><i class="fa fa-linkedin"></i></a>
            </div>
          </div>
        </div>
        @endforeach

    </div>
  </section><!-- #team -->
  <section id="contact">
    <div class="container wow fadeInUp">
            @foreach($contacto as $contacto)
      <div class="section-header">
        <h3 class="section-title">{{$contacto->tittle}}</h3>
        <p class="section-description">{{$contacto->subtittle}}</p>
      </div>
    </div>

    <div class="container wow fadeInUp mt-5">
      <div class="row justify-content-center">

        <div class="col-lg-3 col-md-4">

          <div class="info">
            <div>
              <i class="fa fa-map-marker"></i>
              <p>{{$contacto->Ciudad}}<br>{{$contacto->direccion}}</p>
            </div>

            <div>
              <i class="fa fa-envelope"></i>
              <p>{{$contacto->correo}}}</p>
            </div>

            <div>
              <i class="fa fa-phone"></i>
              <p>{{$contacto->telefono}}</p>
            </div>
          </div>

          <div class="social-links">
            <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
            <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
            <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
            <a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
            <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
          </div>

        </div>
            @endforeach
        <div class="col-lg-5 col-md-8">
          <div class="form">
            <div id="sendmessage">Your message has been sent. Thank you!</div>
            <div id="errormessage"></div>
            <form action="{{ route('enviar.correo') }}" method="POST" >
                    @csrf
              <div class="form-group">
                <input type="text" name="name" class="form-control" id="name" placeholder="Su nombre"  />
              </div>
              <div class="form-group">
                <input type="email" class="form-control" name="email" id="email" placeholder="Su correo electronico" data-rule="email" data-msg="Por favor ingrese un correo electronico valido" />
              </div>
              <div class="form-group">
                <input type="text" class="form-control" name="subject" placeholder="Asunto"  />
              </div>
              <div class="form-group">
                <textarea class="form-control" name="mensaje" rows="5"  placeholder="Mensaje"></textarea>
              </div>
              <div class="text-center"><button type="submit">Enviar mensaje</button></div>
            </form>
          </div>
        </div>
      </div>
      @if (session('alert'))
      <div class="alert alert-success">
          {{ session('alert') }}
      </div>
      @endif

    </div>
    <!-- Uncomment below if you wan to use dynamic maps -->
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3203.359535192548!2d-72.10613068517799!3d-36.59364897298344!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9668d7cf36e02319%3A0x59d8117045c22ddd!2sInacap!5e0!3m2!1ses-419!2scl!4v1562471279741!5m2!1ses-419!2scl" width="100%" height="380" frameborder="0" style="border:0" allowfullscreen></iframe>
  </section>



  </main>

  @include('layout.footer')




</body>
<script>

$(document).ready(function(){
    $('.team').slick({
        slidesToShow: 4,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 2000,
    });
  });
</script>
</html>
