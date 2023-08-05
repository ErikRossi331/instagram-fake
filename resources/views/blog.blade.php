<!DOCTYPE html>
<html lang="en">
  <head>
   <link rel=stylesheet href="/vendor/cookie-consent/css/cookie-consent.css">
    <style>
button {
  all: unset;
  font-weight: 400;
  font-size: 14px;
  color: #0095f6;
  -webkit-text-fill-color: #0095f6;
  line-height: 18px;
  padding: 5px 9px;
  border-radius: 4px;
}
button.primary {
  background: #0095f6;
  color: white;
  -webkit-text-fill-color: white;
}
.profile-info .title button {
  border-radius: 10px;
  margin-left: 20px;
}

.profile-info .title button.second {
  background-color: #dbdbdb;
  color:#333;
}
.profile-info .title button {
  display: block;
  margin-left: 0px;
}

    </style>

    <link rel="stylesheet" href="//use.fontawesome.com/releases/v5.0.7/css/all.css">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Instagram</title>
    <link rel="icon" type="image/x-icon" href="/assets/instagram/icon.png">
    
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css"><link rel="stylesheet" href="./style.css">
    <link rel="stylesheet" href="/assets/instagram/post-page/dist/style.css" />

  </head>

  <body style="background-color: white;">
    <header class="grid main-header">
      <div class="flex-container header-container">
        <span class="logo logo-nav header-item">
          <a href="/blog/publicacoes">
          <img src="/assets/instagram/images/logo.png" style="width:120px; top:7px; position: relative;">
        </span>
        
        <div class="header-item searchbar ">
          <label for="searchbar ">
            <div class="flex-container">
              <div class="search-icon-container">
                <svg class="search-nav-icon"viewBox="0 0 512 512" width="100" title="search">
            <path d="M505 442.7L405.3 343c-4.5-4.5-10.6-7-17-7H372c27.6-35.3 44-79.7 44-128C416 93.1 322.9 0 208 0S0 93.1 0 208s93.1 208 208 208c48.3 0 92.7-16.4 128-44v16.3c0 6.4 2.5 12.5 7 17l99.7 99.7c9.4 9.4 24.6 9.4 33.9 0l28.3-28.3c9.4-9.4 9.4-24.6.1-34zM208 336c-70.7 0-128-57.2-128-128 0-70.7 57.2-128 128-128 70.7 0 128 57.2 128 128 0 70.7-57.2 128-128 128z" />
          </svg></div>
    
                  <input id="searchbar" type="text" class="searchbar-input" placeholder="Pesquisar...">
              </div>
            </label>
        </div>
        <div class="d-flex">
            <a href="#"><button class="primary" style="border-radius:8px">Entrar</button></a>
            <a href="#"><button class="secondary">Cadastre-se</button></a>
            </div>
      </div>
    </header>

<section class="main-content grid">
  <div class="main-gallery-wrapper flex-container">
    <div class="pop-wrapper flex-container">
        @foreach($story as $stories)
      <span class="pop flex-container">
        <div class="pop-img-container" style="cursor: pointer;">
        <img src="/images/uploads/blog/story/{{$stories->main_image}}" alt="" class="pop-img">
          </div>
          @if(strlen($stories->title) > 5)
        <p class="pop-text">{{substr_replace($stories->title, '...', 5)}}</p>
        @else
        <p class="pop-text">{{$stories->title}}</p>
        @endif
      </span>
      @endforeach
      
    
      
    </div>
    @foreach ($posts as $post)
    <div class="card-wrapper flex-container" id="{{$post->url}}">
      <div class="card-header grid">
        <div class="header-img-container flex-container">
            @foreach($post->category as $post_category)
          <img class="card-header-img" src="/images/uploads/blog/{{$post_category->main_image}}" alt="">
          @endforeach
        </div>
        <span class="card-title">
            @foreach($post->category as $post_category)
            <a href="/perfil/{{$post_category->url}}">
          {{$post_category->url}}
            </a>
        </span>
        @endforeach
          
         <span class="card-subtitle">
            {{$post->created_at->format('d')}} de {{$post->created_at->formatLocalized('%B')}}
         </span>
        <div class="card-opt-btn flex-container"><i class="bi bi-three-dots"></i></div>
      </div>
      <div class="card-img-container">
        <img class="card-img" src="/images/uploads/blog/{{$post->main_image}}" alt="">
      </div>
      <div class="card-data flex-container">
        <div class="card-icons flex-container"> 
        <span class="card-icon card-icon-left"><i class="bi bi-heart"></i></span>
        <span class="card-icon card-icon-left"><i class="bi bi-chat"></i></span>
        <span class="card-icon card-icon-left"><i class="bi bi-send"></i></span>
        <span class="card-icon card-icon-right"><i class="bi bi-bookmark"></i></span>
        </div>
        <span class="bold card-text"> 
         {{str_replace(',','.',number_format($post->description))}} curtidas</span>
        <span class="card-text"><span class="bold title-margin">@foreach($post->category as $post_category) {{$post_category->url}} @endforeach</span>
        <h00 id="num_{{$post->id}}" class="line-clamp-4">{!!$post->content!!}</h00></span>
        <a class="card-text more-text" style="color:rgb(168, 168, 168); font-size:12px; cursor:pointer;" onclick="document.getElementById('num_{{$post->id}}').classList.remove('line-clamp-4'); this.style.display = 'none'">mais</a>
        <span class="card-text comments-btn">Ver todos os comentários</span>
        <span class="card-time"></span>
        <div class="add-comment-container flex-container">
          <span class="card-icon"><i class="bi bi-emoji-smile"></i></span>
          <div class="comment-container">
            <input class="comment-input" type="text" placeholder="Adicione um comentário....">
          </div>
          
          <a href="#" class="publish" >Publicar</a>
        </div>
        
      </div>
  
    </div>
    @endforeach

  </div>
<div class="sidebar">
  <div class="sidebar-menu-container">
    <div class="suggestions-header grid">
      <span class="suggestions-text">
        Sugestões para você
      </span>
      <span class="sidebar-btn-alt">
        Ver tudo
      </span>
    </div>
    @foreach($categories as $category)
     <div class="sidebar-card sidebar-card-alt grid">
      <img src="/images/uploads/blog/{{$category->main_image}}" alt="" class="sidebar-img side-bar-img-alt">
      <span class="sidebar-title card-title">
        <a href="/perfil/{{$category->url}}">
        {{$category->url}}
        </a>
      </span>
      <span class="card-subtitle sidebar-subtitle sidebar-subtitle-alt">Novo no Instagram</span>
      <span class="sidebar-btn">
        Seguir
      </span>
    </div>
    @endforeach
    
    
    
  
  </div>
</div>  
</section>
<!-- partial -->
  
</body>
</html>
