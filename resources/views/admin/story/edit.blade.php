@extends('adminlte::page')

@section('title', 'Page')

@section('content')
<div class="container-fluid">
  <div class="col-md-12">
    <h1>Categorias de Post</h1>

    <ol class="breadcrumb">
      <li><a href="{{route('admin.index')}}">Dashboard</a></li> &nbsp;
      <li><a href="">Categorias de Post</a></li>
    </ol>
  </div>
</div>
<div class="box box-primary">

  <div class="box-header with-border">
    <h3 class="box-title"></h3>
  </div>

  @include('includes.alerts')

  <form enctype="multipart/form-data" role="form" method="post"
    action=" @if(isset($category->id)) {{ route('story.update',$category->id) }} @else {{ route('story.store') }} @endif ">
    {!! csrf_field() !!}
    @if(isset($category->id))
    <input type="hidden" value="{{$category->id}}" name="id" />
    {{ method_field('PATCH') }}
    @endif
    <div class="box-body">
      <div class="form-group">
        <label>Titulo</label>
        <input class="form-control" placeholder="Inserir Nome" type="text" name="title"
          value="@if(isset($category)){{$category->title}}@endif">
      </div>
     
      <div class="form-group">
        <label>Imagem destaque da página</label>
        <a id="show-input" class="btn">Adicionar nova</a>
        <div class="form-group" id="input-image" style="display:none">
          <input name="main_image" type="file" />
        </div>

        @if(isset($category->main_image))
        <img class="form-group" src="{{ URL::to('/images/uploads/blog/story')}}/{{$category->main_image}}" width="400px" />
        @endif
      </div>
      
    </div>

    <div class="box-footer">
      <button type="submit" class="btn btn-primary">@if(isset($category))Atualizar @else Salvar @endif</button>
      <a href="{{route('story.index')}}" class="btn">Voltar</a>
    </div>
    @stop
    @section('js')

    <script type="text/javascript">
      jQuery.noConflict();
    jQuery(document).ready(function(){
      jQuery("#show-input").on("click", function(e){
          e.preventDefault();
          jQuery("#input-image").toggle();
      });

    });
    </script>
    @stop