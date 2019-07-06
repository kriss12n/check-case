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






  </main>

  <!--==========================
    Footer
  ============================-->
  @include('layout.footer')

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>



</body>
</html>
