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

//contenido del Foro byKriss

<div class="row-fluid">
<div class="jumbotron">

<h1 class="text-center">Blog</h1>

@foreach ($post as $p)

    <h3 class="text-center">{{$p->title}}</h3>
<div align="center">
    @if (!isset($p->photo))
    <img class="img-responsive img-thumbnail" src="" alt="Este Post no contiene imagen">
    @else
    <img class="img-responsive img-thumbnail" src="{{ Voyager::image( $p->photo ) }}" alt="ocurrio un error al carga la imagen">
    @endif
</div>

    <p class="text-center">
        {{$p->content}}
    </p>
    <hr>
@endforeach
</div>
</div>

@endsection

