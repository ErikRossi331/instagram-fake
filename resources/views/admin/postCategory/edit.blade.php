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
    action=" @if(isset($category->id)) {{ route('postCategory.update',$category->id) }} @else {{ route('postCategory.store') }} @endif ">
    {!! csrf_field() !!}
    @if(isset($category->id))
    <input type="hidden" value="{{$category->id}}" name="id" />
    {{ method_field('PATCH') }}
    @endif
    <div class="box-body">
      <div class="form-group">
        <label>Nome</label>
        <input class="form-control" placeholder="Inserir Nome" type="text" name="title"
          value="@if(isset($category)){{$category->title}}@endif">
      </div>
      <div class="form-group">
        <label>Número de Seguidores do Perfil <span class="danger" style="color:red"> (somente número, sem texto ou formatação) </a></label>
        <input class="form-control" name="description" type="text"
          value="@if(isset($category)){{$category->description}}@endif">
      </div>
      <div class="form-group">
        <label>Numero de quantos perfis esse perfil segue (Seguindo)</label>
        <input class="form-control" name="meta_description" type="text"
          value="@if(isset($category)){{$category->meta_description}}@endif">
      </div>
      <div class="form-group">
        <label>Imagem destaque da página</label>
        <a id="show-input" class="btn">Adicionar nova</a>
        <div class="form-group" id="input-image" style="display:none">
          <input name="main_image" type="file" />
        </div>

        

        @if(isset($category->main_image))
        <img class="form-group" src="{{ URL::to('/images/uploads/blog')}}/{{$category->main_image}}" width="400px" />
        @endif
      </div>

      
      <div class="form-group">
        <label>Conteudo</label>
        <textarea class="form-control" name="content"
          id="editor">@if(isset($category)){{$category->content}}@endif</textarea>
      </div>

      @if(isset($story) && count($story) > 0)
			<label>Categorias</label>
			<div class="form-group">
				@foreach ($story as $category)
				<div class="checkbox">
					<label><input type="checkbox" name="story[]" value="{{$category->id}}" @isset($post)@if(
							in_array($category->id, $post->checked_boxes)) checked="checked" @endif
						@endisset/>  &nbsp; {{$category->title}}</label>
				</div>
				@endforeach
      </div>
        @endif
      <div class="form-group">
        <label>Url</label>
        <input class="form-control" name="url" type="text" value="@if(isset($category)){{$category->url}}@endif">
      </div>
      <div class="form-group">
        <label>Meta Title</label>
        <input class="form-control" name="meta_title" type="text"
          value="@if(isset($category)){{$category->meta_title}}@endif">
      </div>
      <div class="form-group">
        <label>Meta Keywords</label>
        <input class="form-control" name="meta_keywords" type="text"
          value="@if(isset($category)){{$category->meta_keywords}}@endif">
      </div>
    </div>

    <div class="box-footer">
      <button type="submit" class="btn btn-primary">@if(isset($category))Atualizar @else Salvar @endif</button>
      <a href="{{route('postCategory.index')}}" class="btn">Voltar</a>
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