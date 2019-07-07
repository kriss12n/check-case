@extends('layout.master')
@include('layout.navbar')
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
      </section><!-- #contact -->

@include('layout.footer')
