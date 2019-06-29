@extends('voyager::master')
@section('content')

<head>
    <title>Respuestas</title>
    <meta name="csrf-token" content="{{ csrf_token() }}" />

    <style>
            .container {
                border-radius: 5px;
                padding: 10px;
                margin: 10px 0;
                margin-left: 50px;
              }

    </style>
</head>
<body>

    <div id="chat">
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
                    alert("se ha enviado el post correctamente");
                   },fail:function(){
                       alert("fallo");
                   }

                   
                   });

                    });

                    var auto_refresh = setInterval(
                        function(){
                            $("#chat").load('<?php echo url('admin/chat');?>').fadeIn("slow");
                      },1000);
                });
              </script>
@endsection
</body>


