@extends('voyager::master')
@section('content')

<head>

<meta name="csrf-token" content="{{ csrf_token() }}" />
<title>Respuestas</title>
        <style>
        .container {
        border-radius: 5px;
        padding: 10px;
        margin: 10px 0;
        margin-left: 50px;
        }

        .lighter{
        border: 2px solid #dedede;
        background-color: #f1f1f1;
        }

        /* Darker chat container */
        .darker {
        border-color: #ccc;
        background-color: #ddd;
        }

        /* Clear floats */
        .container::after {
        content: "";
        clear: both;
        display: table;
        }

        /* Style images */
        .container img {
        float: left;
        max-width: 60px;
        width: 100%;
        margin-right: 20px;
        border-radius: 50%;
        }

        /* Style the right image */
        .container img.right {
        float: right;
        margin-left: 20px;
        margin-right:0;
        }

        /* Style time text */
        .time-right {
        float: right;
        color: #aaa;
        }
        .img-perfil{
        height: 50px;
        width: 35px;
        background-repeat: no-repeat;
        background-position: 50%;
        border-radius: 50%;
        background-size: 100% auto;

        }

        /* Style time text */
        .time-left {
        float: left;
        color: #999;
        }

        </style>
</head>
<body>
<div id="chat">
    @if (Auth::id() == '1')
    @foreach ($foro as $foros)
    <div class="row">
    <div class="col-12 text-center"><h1>{{$foros->title}}</h1></div>
    <div class="col-12 text-center "><h4>{!!$foros->content!!}</h4></div>
    <div class="col-12 text-center "><h6> usted le esta respondiendo a: {{$foros->name1}} {{$foros->surname1}} {{$foros->surname2}}</h6></div>
    <!-- agregar con quien esta chateando el abogado-->
    </div>
    @endforeach
    @else
    @foreach ($foro as $foros)
    <div class="row">
    <div class="col-12 text-center"><h1>{{$foros->title}}</h1></div>
    <div class="col-12 text-center "><h4>{!!$foros->content!!}</h4></div>
    <!-- agregar con quien esta chateando el abogado-->
    </div>
    @endforeach
    @endif

    <!--recorremos las respuestas-->

    @foreach ($respuestas as $resp)

    <!--aqui preguntamos si la respuesta pertenece al usuario logeado y si existen respuestas-->

    @if ($resp->user_id == Auth::id() && isset($resp) && $resp->foro_id == $id)
    <div class="container lighter">
    <img src="{{ Voyager::image( $resp->avatar ) }}" alt="Avatar" class="right img-perfil">
    <p>{{$resp->texto}}</p>
    <span class="time-right">11:02</span>
    </div>

    <!--aqui simplemente colocamos que si existen para mostrar o ocultar los estilos-->

    @elseif(isset($resp) && $resp->foro_id == $id)
    <div class="container darker">
    <img src="{{ Voyager::image( $resp->avatar ) }}" alt="Avatar" class="img-perfil">
    <p>{{$resp->texto}}</p>
    <span class="time-left">11:01</span>
    </div>
    @endif
    @endforeach

    </div>
              <div class="container" style="background-color:#eee;">
                <div class="row">
                    <form action="{{ route('enviar.respuesta',['id' =>$id]) }}" method="POST" id="formu">
                            {{ csrf_field() }}
                        <div class="form-group">
                    <div class="col-sm-11 col-md-11 col-lg-11 col-xl-11">
                            <label for="mensaje">Escriba su mensaje:</label>
                            <textarea class="form-control" rows="3" id="mensaje" name="mensaje"></textarea>
                        </div>
                    </div>
                    <div class="col-sm-1 col-md-1 col-lg-1 col-xl-1" style="margin-top:5vh;">
                        <button type="submit" class="btn btn-primary"><i class="fas fa-paper-plane"></i></button>
                    </div>
                    </form>
                </div>
              </div>

@endsection
@section('javascript')
              <script>
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });
                $(document).ready(function () {

                $('#formu').on('submit',function(e){
                        e.preventDefault();

                    var token = '{{csrf_token()}}';
                   $.ajax({

                   type:'post',
                   url:"{{ route('enviar.respuesta',['id' =>$id]) }}",
                   _token:token,
                   data:$(this).serialize(),
                   success: function(msg){
                    $("#chat").html(msg);
                   },fail:function(){

                   }


                   });
                    return false;
                    });



                var auto = setInterval(function() {
                $('#chat').load("{{ route('chat',['id' =>$id]) }}").fadeIn('slow');

               }, 1000); //retornar cada 5 segundos si no me explota el pc

                });
              </script>
@endsection
</body>


