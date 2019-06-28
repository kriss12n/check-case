<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Mensaje recibido</title>
</head>
<body>
    
    <p>Hola: {{$msg['name1']}} {{$msg['surname1']}}</p>
    <p>Has sido registrado en nuestro sistema con exito</p>
    <p>su correo es: {{$msg['email']}} </p>
    <p>y su contraseña es: {{$msg['password']}}</p>
</body>
</html>
