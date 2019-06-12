@extends('voyager::master')
@section('content')

    </div>
</div>
    <div class="container">
            <div class="row" style="background-color:white;border-radius:5px;">
                    <div class="col-12">
                         <h3 class="text-center">Respuestas</h3>
                    </div>
            </div>


            <form action="{{url('foro/respuestas')}}"  method="POST" >

                <div class="form-group mt-3 ">
                    <label for="Respuesta">Respuesta</label>
                    <textarea class="form-control" id="Respuesta" name="Respuesta" rows="3"></textarea>
                 </div>
                <input type="hidden" name="usuario" value="Auth::id" >
                 <input type="hidden" name="tema" value="$tema->id" >
                 <div>
                    <button type="submit" class="btn btn-primary">enviar</button>
                 </div>

            </form>
    </div>







@endsection
