@extends('layout.master')
@include('layout.navbar')
<section id="about">
        <div class="container">
          <div class="row about-container">
@foreach ($about as $about)
 @if (isset($about->image))
 <div class="col-lg-6 content order-lg-1 order-2">
   <h2 class="title">{{$about->tittle}}</h2>
   <p>
       {!! $about->Contenido !!}
   </p>

   <div class="icon-box wow fadeInUp">
     <div class="icon"><i class="fa fa-shopping-bag"></i></div>
     <h4 class="title"><a href="">Eiusmod Tempor</a></h4>
     <p class="description">Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi</p>
   </div>

   <div class="icon-box wow fadeInUp" data-wow-delay="0.2s">
     <div class="icon"><i class="fa fa-photo"></i></div>
     <h4 class="title"><a href="">Magni Dolores</a></h4>
     <p class="description">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>
   </div>

   <div class="icon-box wow fadeInUp" data-wow-delay="0.4s">
     <div class="icon"><i class="fa fa-bar-chart"></i></div>
     <h4 class="title"><a href="">Dolor Sitema</a></h4>
     <p class="description">Minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat tarad limino ata</p>
   </div>

 </div>
 <div class="col-lg-6 background order-lg-2 order-1 wow fadeInRight">
     <img src="{{voyager::image($about->image)}}" alt="" style="center top no-repeat;" class="thumbnail">
 </div>
 @else
 <div class="col-lg-12 content order-lg-1 order-2">
   <h2 class="title">{{$about->tittle}}</h2>
   <p>
       {!! $about->Contenido !!}
   </p>

   <div class="icon-box wow fadeInUp">
     <div class="icon"><i class="fa fa-shopping-bag"></i></div>
     <h4 class="title"><a href="">Eiusmod Tempor</a></h4>
     <p class="description">Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi</p>
   </div>

   <div class="icon-box wow fadeInUp" data-wow-delay="0.2s">
     <div class="icon"><i class="fa fa-photo"></i></div>
     <h4 class="title"><a href="">Magni Dolores</a></h4>
     <p class="description">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>
   </div>

   <div class="icon-box wow fadeInUp" data-wow-delay="0.4s">
     <div class="icon"><i class="fa fa-bar-chart"></i></div>
     <h4 class="title"><a href="">Dolor Sitema</a></h4>
     <p class="description">Minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat tarad limino ata</p>
   </div>

 </div>

 @endif

 @endforeach


          </div>

        </div>
      </section>
@include('layout.footer')
