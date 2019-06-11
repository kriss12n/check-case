@extends('voyager::master')
@section('content')

@foreach ($foro as $f)
    <div class="container">
        <div class="row align-center">
            <h3 class="text-center">{{$f->title}}</h3>
            <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
                <div align="center">
                @if (!isset($f->photo))
                    <img class="img-responsive img-thumbnail" src="" alt="Este Post no contiene imagen">
                @else
                    <img class="img-responsive img-thumbnail" src="{{ Voyager::image( $f->photo ) }}" alt="ocurrio un error al carga la imagen"><br>
                @endif
                </div>
                <div class="col-12">

                        <p class="text-center">

                            {{$f->content}}

                        </p>

                    </div>
                </div>
    @endforeach
    </div>
</div>
    <div class="container">
            <div class="row" style="background-color:white;border-radius:5px;">
                    <div class="col-12">
                         <h3 class="text-center">Respuestas</h3>
                    </div>
            </div>


            <form class="form-control" method="POST" action="{{url('/foro/responder/enviar')}}">
                <div class="form-group">
                    <label for="Respuesta">Respuesta</label>
                    <textarea class="form-control" id="Respuesta" name="Respuesta" rows="3"></textarea>
                 </div>
                    @if("Respuesta" == null)
                    <input type="submit" class="btn btn-primary" disabled="disabled" value="enviar" ></input>
                    @else
                    <input type="submit" class="btn btn-primary" value="enviar" ></input>
                    @endif
            </form>
    </div>







@endsection
