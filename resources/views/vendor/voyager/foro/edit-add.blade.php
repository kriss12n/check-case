@extends('voyager::master')

@section('page_title', __('voyager::generic.'.(isset($dataTypeContent->id) ? 'edit' : 'add')).' '.$dataType->display_name_singular)

@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@stop

@section('page_header')
    <h1 class="page-title">
        <i class="{{ $dataType->icon }}"></i>
        {{ __('voyager::generic.'.(isset($dataTypeContent->id) ? 'edit' : 'add')).' '.$dataType->display_name_singular }}
    </h1>
@stop

@section('content')
    <div class="page-content container-fluid">
        <form class="form-edit-add" role="form"
              action="{{ (isset($dataTypeContent->id)) ? route('voyager.'.$dataType->slug.'.update', $dataTypeContent->id) : route('voyager.'.$dataType->slug.'.store') }}"
              method="POST" enctype="multipart/form-data" autocomplete="off">
            <!-- PUT Method if we are editing -->
            @if(isset($dataTypeContent->id))
                {{ method_field("PUT") }}
            @endif
            {{ csrf_field() }}

            <div class="row">
                <div class="col-md-8">
                    <div class="panel panel-bordered">
                    {{-- <div class="panel"> --}}
                        @if (count($errors) > 0)
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif

                        <div class="panel-body">
                             <div class="panel panel-bordered panel-warning">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Datos Personales</h3>
                                </div>
                                <div class="panel-body">

                                    <!-- Rut -->
                                    <div class="form-group col-md-6">
                                        <label for="name">{{ __('voyager::generic.name') }}</label>
                                        <input type="text" class="form-control" id="name" name="name" placeholder="{{ __('voyager::generic.name') }}"
                                               value="@if(isset($dataTypeContent->name)){{ $dataTypeContent->name }}@endif">
                                    </div>

                                    <!-- nombre -->
                                    <div class="form-group col-md-6">
                                        <label for="rut">Rut</label>
                                        <input type="text" class="form-control" id="rut" name="rut" placeholder="Rut"
                                               value="@if(isset($dataTypeContent->rut)){{ $dataTypeContent->rut }}@endif" maxlength="12">
                                    </div>

                                    <!-- Apellido P -->
                                    <div class="form-group col-md-6">
                                        <label for="apellido1">Apeliido Paterno</label>
                                        <input type="text" class="form-control" id="apellido1" name="apellido1" placeholder="Apeliido Paterno"
                                               value="@if(isset($dataTypeContent->apellido1)){{ $dataTypeContent->apellido1 }}@endif">
                                    </div>

                                    <!-- Apellido M -->
                                    <div class="form-group col-md-6">
                                        <label for="apellido2">Apellido Materno</label>
                                        <input type="text" class="form-control" id="apellido2" name="apellido2" placeholder="Apellido Materno"
                                               value="@if(isset($dataTypeContent->apellido2)){{ $dataTypeContent->apellido2 }}@endif">
                                    </div>

                                    <!-- Email -->
                                    <div class="form-group col-md-6">
                                        <label for="email">{{ __('voyager::generic.email') }}</label>
                                        <input type="email" class="form-control" id="email" name="email" placeholder="{{ __('voyager::generic.email') }}"
                                               value="@if(isset($dataTypeContent->email)){{ $dataTypeContent->email }}@endif">
                                    </div>
                                    <div class="form-group col-md-6">
                                            <label for="fono">fono</label>
                                            <input type="text" class="form-control" id="fono" name="fono" placeholder="fono"
                                            value="@if(isset($dataTypeContent->fono)){{ $dataTypeContent->fono }}@endif">
                                        </div>

                                   <div class="form-group col-md-6">
                                            <label for="default_role">Ciudad</label>
                                            @php
                                                $dataTypeRows = $dataType->{(isset($dataTypeContent->id) ? 'editRows' : 'addRows' )};

                                                $row     = $dataTypeRows->where('field', 'cliente_belongsto_ciudad_relationship')->first();
                                                $options = $row->details;
                                            @endphp
                                            @include('voyager::formfields.relationship')
                                        </div>


                                    <!-- Direccion -->
                                    <div class="form-group col-md-6">
                                        <label for="direccion">Dirección</label>
                                        <input type="text" class="form-control" id="direccion" name="direccion" placeholder="Dirección"
                                               value="@if(isset($dataTypeContent->direccion)){{ $dataTypeContent->direccion }}@endif">
                                    </div>

                                </div>
                            </div>

                            <div class="panel-body">

                            <button type="submit" class="btn btn-primary pull-right save">
                                {{ __('voyager::generic.save') }}
                            </button>
                        </div>

                        </div>
                    </div>

                </div>

            </div>
        </form>

        <iframe id="form_target" name="form_target" style="display:none"></iframe>
        <form id="my_form" action="{{ route('voyager.upload') }}" target="form_target" method="post" enctype="multipart/form-data" style="width:0px;height:0;overflow:hidden">
            {{ csrf_field() }}
            <input name="image" id="upload_file" type="file" onchange="$('#my_form').submit();this.value='';">
            <input type="hidden" name="type_slug" id="type_slug" value="{{ $dataType->slug }}">
        </form>
    </div>
@stop

@section('javascript')

    <script>
        $('document').ready(function () {
            $('.toggleswitch').bootstrapToggle();
        });


    </script>
@stop
