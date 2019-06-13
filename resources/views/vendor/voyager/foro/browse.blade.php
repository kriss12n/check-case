@extends('voyager::master')

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
    </div>
@stop



@section('content')
<div class="container" >
    <div class="row">
            <h1 class="text-center">Foro de consultas</h1>
    </div>
</div>
@foreach ($post as $posts)

<div class="container" style="background: white;">
    <div class="row">
        <div class="col-12 col-sm-3 col-xl-3 col-md-3">
           <h3>{{$posts->title}}</h3>
        </div>

        <div class="col-12 col-sm-2 col-xl-2 col-md-2" style="padding-top:3vh">
            <p>{{$posts->content}}</p>
        </div>

        <div class="col-12 col-sm-2 col-xl-2 col-md-2">
            <p></p>
        </div>
    </div>

</div>

@endforeach


@endsection



