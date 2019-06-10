@extends('voyager::master')
@section('content')
@section('page_header')
    <div class="container-fluid">
        <h1 class="page-title">
            <i class="{{ $dataType->icon }}"></i> {{ $dataType->display_name_plural }}
        </h1>
        @can('add', app($dataType->model_name))
            <a href="{{ route('voyager.'.$dataType->slug.'.create') }}" class="btn btn-success btn-add-new">
                <i class="voyager-plus"></i> <span>{{ __('voyager::generic.add_new') }}</span>
            </a>
        @endcan
        @can('delete', app($dataType->model_name))
            @include('voyager::partials.bulk-delete')
        @endcan
        @can('edit', app($dataType->model_name))
            @if(isset($dataType->order_column) && isset($dataType->order_display_column))
                <a href="{{ route('voyager.'.$dataType->slug.'.order') }}" class="btn btn-primary btn-add-new">
                    <i class="voyager-list"></i> <span>{{ __('voyager::bread.order') }}</span>
                </a>
            @endif
        @endcan
        @can('delete', app($dataType->model_name))
            @if($usesSoftDeletes)
                <input type="checkbox" @if ($showSoftDeleted) checked @endif id="show_soft_deletes" data-toggle="toggle" data-on="{{ __('voyager::bread.soft_deletes_off') }}" data-off="{{ __('voyager::bread.soft_deletes_on') }}">
            @endif
        @endcan
        @foreach(Voyager::actions() as $action)
            @if (method_exists($action, 'massAction'))
                @include('voyager::bread.partials.actions', ['action' => $action, 'data' => null])
            @endif
        @endforeach
        @include('voyager::multilingual.language-selector')
    </div>
@stop





<h1 class="text-center">Foro de Consultas</h1>

@foreach ($post as $p)
<div class="container">
    <div class="row">

        <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
        @if (!isset($p->photo))
            <img class="img-responsive img-thumbnail" src="" alt="Este Post no contiene imagen">
        @else
            <img class="img-responsive img-thumbnail" src="{{ Voyager::image( $p->photo ) }}" alt="ocurrio un error al carga la imagen"><br>
        @endif
        </div>

        <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
            <h3>{{$p->title}}</h3>
            <p>
                {{$p->content}}
            </p>
        </div>

        <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
            <?php
            $tags = explode(',',$p->tags);
                ?>
            @foreach ($tags as $t)
        <label class="label label-primary">{{$t}}</label>
            @endforeach
        </div>

        <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
            <a href="foro/responder/{{$p->id}}" class="btn btn-danger">Ver mas y Responder</a>
        </div>

        <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">

        </div>
    </div>
</div>




    <hr>
@endforeach

@endsection

