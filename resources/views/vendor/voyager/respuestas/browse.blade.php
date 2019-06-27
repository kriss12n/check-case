@extends('voyager::master')
@section('content')

<head>
    <title>Respuestas</title>
    <style>
            .container {
                border: 2px solid #dedede;
                background-color: #f1f1f1;
                border-radius: 5px;
                padding: 10px;
                margin: 10px 0;
                margin-left: 50px;
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

              /* Style time text */
              .time-left {
                float: left;
                color: #999;
              }

    </style>
</head>
<body>
        @foreach ($foro as $foros)
        <div class="row">
        <div class="col-12 text-center"><h1>{{$foros->title}}</h1></div>
        </div>
        <div class="container">
                <img src="{{ Voyager::image( $foros->avatar ) }}" alt="Error al cargar la imagen" class=" img-perfil">

                <p>{!! $foros->content !!}</p>
                <span class="time-right">{{$foros->created_at}}</span>
              </div>
        @endforeach


              <div class="container darker">
                <img src="/w3images/avatar_g2.jpg" alt="Avatar" class="right">
                <p>Hey! Im fine. Thanks for asking!</p>
                <span class="time-left">11:01</span>
              </div>

              <div class="container">
                <img src="/w3images/bandmember.jpg" alt="Avatar">
                <p>Sweet! So, what do you wanna do today?</p>
                <span class="time-right">11:02</span>
              </div>

              <div class="container darker">
                <img src="/w3images/avatar_g2.jpg" alt="Avatar" class="right">
                <p>Nah, I dunno. Play soccer.. or learn more coding perhaps?</p>
                <span class="time-left">11:05</span>
              </div>

</body>
@endsection
