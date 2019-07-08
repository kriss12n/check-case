<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Mensaje recibido</title>
</head>
<body>

    <p>recibiste un mensaje de: {{$msg['nombre']}}</p>
    <p>con asunto:{{$msg['asunto'] }}</p>
    <p>su correo es: {{$msg['correo']}} </p>
    <p>{{$msg['mensaje']}}</p>
    <p></p>
</body>
</html>
