<!DOCTYPE html>
<html lang="en">
  <head>
    <link rel="stylesheet" href="//use.fontawesome.com/releases/v5.0.7/css/all.css">
       <link rel=stylesheet href="/vendor/cookie-consent/css/cookie-consent.css">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>{{$category->title}}</title>
    <link rel="icon" type="image/x-icon" href="/assets/instagram/icon.png">
    <link rel="stylesheet" href="/assets/instagram/style.css" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css"><link rel="stylesheet" href="./style.css">
    <link rel="stylesheet" href="/assets/instagram/post-page/dist/style.css" />

  </head>

  <body style="background-color: white;">
    <header class="grid main-header">
      <div class="flex-container header-container">
        <span class="logo logo-nav header-item">
          <a href="/blog/publicacoes">
          <img src="/assets/instagram/images/logo.png" style="width:120px; top:7px; position: relative;">
          </a>
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
    <main>
      <header style="font-size:medium; border:none">
        <div class="header-wrap">
          <div class="profile-pic">
            <img src="/images/uploads/blog/{{$category->main_image}}" style="object-fit:cover;" alt="profile-logo" />
          </div>
          <div class="profile-info">
            <div class="title row">
              <h2>{{$category->url}}</h2>
              <span class="verfied-icon"></span>
              <div class="d-flex">
              <a href="#"><button class="primary">Seguir</button></a>
              <a href="#"><span style="color:black; background:#dbdbdb; padding: 5px 9px; line-height: 18px; border-radius:10px; font-size:14px; font-weight: 600;">Enviar mensagem</span></a>
              </div>
            </div>  

            
            <div class="desktop-only">
              <div class="details row">
                <ul>
                  <li><span>{{$category->posts->count()}}</span> publicações</li>
                  <li><span>
                    @if($category->description < 10000)
                    {{str_replace(',','.',number_format($category->description))}}
                    @elseif($category->description >= 10000 && substr(number_format($category->description), -2) == "0," && $category->description < 100000)
                    {{substr(number_format($category->description), 0, 2)}} mil
                    @elseif($category->description >= 10000 && substr(number_format($category->description), -2) !== "0," && $category->description < 100000)
                    {{substr(number_format($category->description), 0, 4)}} mil
                    @elseif($category->description >= 100000 && substr(number_format($category->description), -4,-2) == ",0")
                    {{substr(number_format($category->description), 0,3)}} mil
                    @elseif($category->description >= 100000 && substr(number_format($category->description), -4,2) !== ",0")
                    {{substr(number_format($category->description), 0, 5)}} mil
                    @endif
                </span> seguidores</li>
                  <li><span>@if($category->meta_description < 10000)
                    {{str_replace(',','.',number_format($category->meta_description))}}
                    @elseif($category->meta_description >= 10000 && substr(number_format($category->meta_description), -2) == "0," && $category->meta_description < 100000)
                    {{substr(number_format($category->meta_description), 0, 2)}} mil
                    @elseif($category->meta_description >= 10000 && substr(number_format($category->meta_description), -2) !== "0," && $category->meta_description < 100000)
                    {{substr(number_format($category->meta_description), 0, 4)}} mil
                    @elseif($category->meta_description >= 100000 && substr(number_format($category->meta_description), -4,-2) == ",0")
                    {{substr(number_format($category->meta_description), 0,3)}} mil
                    @elseif($category->meta_description >= 100000 && substr(number_format($category->meta_description), -4,2) !== ",0")
                    {{substr(number_format($category->meta_description), 0, 5)}} mil
                    @endif</span> seguindo</li>
                </ul>
              </div>
              <div class="descriptions row last">
                <h1>{{$category->title}}</h1>
                <span>
                 {!! $category->content !!}
                </span>
              </div>
            </div>
          </div>
        </div>
        <div class="profile-info mobile-only">
          <div class="descriptions row">
            <h1>{{$category->title}}</h1>
            <span>
                {!! $category->content !!}
            </span>
          </div>
        </div>
      </header>
      <ul class="stories">
      @foreach($category->story as $story)
        <li class="story-item" style="cursor:pointer">
          <div class="image">
            <img src="/images/uploads/blog/story/{{$story->main_image}}" style="object-fit:cover"/>
          </div>
          <div class="title">{{$story->title}}</div>
        </li>
        @endforeach
        
        {{-- <button class="slider-button-next desktop-only">
          <div class="arrow-right-icon"></div>
        </button> --}}
      </ul>

      <div class="desktop-only">
        <div class="tabs">
          <div class="tab-item active" style="margin-right: 60px;">
            <svg
              aria-label="Posts"
              class="_8-yf5"
              fill="#262626"
              height="12"
              viewBox="0 0 48 48"
              width="12"
            >
              <path
                clip-rule="evenodd"
                d="M45 1.5H3c-.8 0-1.5.7-1.5 1.5v42c0 .8.7 1.5 1.5 1.5h42c.8 0 1.5-.7 1.5-1.5V3c0-.8-.7-1.5-1.5-1.5zm-40.5 3h11v11h-11v-11zm0 14h11v11h-11v-11zm11 25h-11v-11h11v11zm14 0h-11v-11h11v11zm0-14h-11v-11h11v11zm0-14h-11v-11h11v11zm14 28h-11v-11h11v11zm0-14h-11v-11h11v11zm0-14h-11v-11h11v11z"
                fill-rule="evenodd"
              ></path>
            </svg>
            <span>PUBLICAÇÕES</span>
          </div>
          <div class="tab-item" style="margin-right: 60px;">
            <svg
              aria-label="Posts"
              class="_8-yf5"
              fill="#8e8e8e"
              height="12"
              viewBox="0 0 48 48"
              width="12"
            >
              <path
                d="M41 10c-2.2-2.1-4.8-3.5-10.4-3.5h-3.3L30.5 3c.6-.6.5-1.6-.1-2.1-.6-.6-1.6-.5-2.1.1L24 5.6 19.7 1c-.6-.6-1.5-.6-2.1-.1-.6.6-.7 1.5-.1 2.1l3.2 3.5h-3.3C11.8 6.5 9.2 7.9 7 10c-2.1 2.2-3.5 4.8-3.5 10.4v13.1c0 5.7 1.4 8.3 3.5 10.5 2.2 2.1 4.8 3.5 10.4 3.5h13.1c5.7 0 8.3-1.4 10.5-3.5 2.1-2.2 3.5-4.8 3.5-10.4V20.5c0-5.7-1.4-8.3-3.5-10.5zm.5 23.6c0 5.2-1.3 7-2.6 8.3-1.4 1.3-3.2 2.6-8.4 2.6H17.4c-5.2 0-7-1.3-8.3-2.6-1.3-1.4-2.6-3.2-2.6-8.4v-13c0-5.2 1.3-7 2.6-8.3 1.4-1.3 3.2-2.6 8.4-2.6h13.1c5.2 0 7 1.3 8.3 2.6 1.3 1.4 2.6 3.2 2.6 8.4v13zM34.6 25l-9.1 2.8v-3.7c0-.5-.2-.9-.6-1.2-.4-.3-.9-.4-1.3-.2l-11.1 3.4c-.8.2-1.2 1.1-1 1.9.2.8 1.1 1.2 1.9 1l9.1-2.8v3.7c0 .5.2.9.6 1.2.3.2.6.3.9.3.1 0 .3 0 .4-.1l11.1-3.4c.8-.2 1.2-1.1 1-1.9s-1.1-1.2-1.9-1z"
              ></path>
            </svg>
            <span>REELS</span>
          </div>
          <div class="tab-item">
            <svg
              aria-label="Tagged"
              class="_8-yf5"
              fill="#8e8e8e"
              height="12"
              viewBox="0 0 48 48"
              width="12"
            >
              <path
                d="M41.5 5.5H30.4c-.5 0-1-.2-1.4-.6l-4-4c-.6-.6-1.5-.6-2.1 0l-4 4c-.4.4-.9.6-1.4.6h-11c-3.3 0-6 2.7-6 6v30c0 3.3 2.7 6 6 6h35c3.3 0 6-2.7 6-6v-30c0-3.3-2.7-6-6-6zm-29.4 39c-.6 0-1.1-.6-1-1.2.7-3.2 3.5-5.6 6.8-5.6h12c3.4 0 6.2 2.4 6.8 5.6.1.6-.4 1.2-1 1.2H12.1zm32.4-3c0 1.7-1.3 3-3 3h-.6c-.5 0-.9-.4-1-.9-.6-5-4.8-8.9-9.9-8.9H18c-5.1 0-9.4 3.9-9.9 8.9-.1.5-.5.9-1 .9h-.6c-1.7 0-3-1.3-3-3v-30c0-1.7 1.3-3 3-3h11.1c1.3 0 2.6-.5 3.5-1.5L24 4.1 26.9 7c.9.9 2.2 1.5 3.5 1.5h11.1c1.7 0 3 1.3 3 3v30zM24 12.5c-5.3 0-9.6 4.3-9.6 9.6s4.3 9.6 9.6 9.6 9.6-4.3 9.6-9.6-4.3-9.6-9.6-9.6zm0 16.1c-3.6 0-6.6-2.9-6.6-6.6 0-3.6 2.9-6.6 6.6-6.6s6.6 2.9 6.6 6.6c0 3.6-3 6.6-6.6 6.6z"
              ></path>
            </svg>
            <span>MARCADOS</span>
          </div>
        </div>
      </div>
      <div class="mobile-tabs mobile-only">
        <ul>
          <li>
            <div>{{$category->posts->count()}}</div>
            publicações
          </li>
          <li>
            <div>@if($category->description < 10000)
                    {{str_replace(',','.',number_format($category->description))}}
                    @elseif($category->description >= 10000 && substr(number_format($category->description), -2) == "0," && $category->description < 100000)
                    {{substr(number_format($category->description), 0, 2)}} mil
                    @elseif($category->description >= 10000 && substr(number_format($category->description), -2) !== "0," && $category->description < 100000)
                    {{substr(number_format($category->description), 0, 4)}} mil
                    @elseif($category->description >= 100000 && substr(number_format($category->description), -4,-2) == ",0")
                    {{substr(number_format($category->description), 0,3)}} mil
                    @elseif($category->description >= 100000 && substr(number_format($category->description), -4,2) !== ",0")
                    {{substr(number_format($category->description), 0, 5)}} mil
                    @endif</div>
            seguidores
          </li>
          <li>
            <div>@if($category->meta_description < 10000)
                    {{str_replace(',','.',number_format($category->meta_description))}}
                    @elseif($category->meta_description >= 10000 && substr(number_format($category->meta_description), -2) == "0," && $category->meta_description < 100000)
                    {{substr(number_format($category->meta_description), 0, 2)}} mil
                    @elseif($category->meta_description >= 10000 && substr(number_format($category->meta_description), -2) !== "0," && $category->meta_description < 100000)
                    {{substr(number_format($category->meta_description), 0, 4)}} mil
                    @elseif($category->meta_description >= 100000 && substr(number_format($category->meta_description), -4,-2) == ",0")
                    {{substr(number_format($category->meta_description), 0,3)}} mil
                    @elseif($category->meta_description >= 100000 && substr(number_format($category->meta_description), -4,2) !== ",0")
                    {{substr(number_format($category->meta_description), 0, 5)}} mil
                    @endif</div>
            seguindo
          </li>
        </ul>
        <div class="actions">
          <svg
            aria-label="Posts"
            class="_8-yf5"
            fill="rgb(0, 149, 246)"
            height="24"
            viewBox="0 0 48 48"
            width="24"
          >
            <path
              clip-rule="evenodd"
              d="M45 1.5H3c-.8 0-1.5.7-1.5 1.5v42c0 .8.7 1.5 1.5 1.5h42c.8 0 1.5-.7 1.5-1.5V3c0-.8-.7-1.5-1.5-1.5zm-40.5 3h11v11h-11v-11zm0 14h11v11h-11v-11zm11 25h-11v-11h11v11zm14 0h-11v-11h11v11zm0-14h-11v-11h11v11zm0-14h-11v-11h11v11zm14 28h-11v-11h11v11zm0-14h-11v-11h11v11zm0-14h-11v-11h11v11z"
              fill-rule="evenodd"
            ></path>
          </svg>
          <svg
            aria-label="Posts"
            class="_8-yf5"
            fill="#8e8e8e"
            height="24"
            viewBox="0 0 48 48"
            width="24"
          >
            <path
              d="M41 10c-2.2-2.1-4.8-3.5-10.4-3.5h-3.3L30.5 3c.6-.6.5-1.6-.1-2.1-.6-.6-1.6-.5-2.1.1L24 5.6 19.7 1c-.6-.6-1.5-.6-2.1-.1-.6.6-.7 1.5-.1 2.1l3.2 3.5h-3.3C11.8 6.5 9.2 7.9 7 10c-2.1 2.2-3.5 4.8-3.5 10.4v13.1c0 5.7 1.4 8.3 3.5 10.5 2.2 2.1 4.8 3.5 10.4 3.5h13.1c5.7 0 8.3-1.4 10.5-3.5 2.1-2.2 3.5-4.8 3.5-10.4V20.5c0-5.7-1.4-8.3-3.5-10.5zm.5 23.6c0 5.2-1.3 7-2.6 8.3-1.4 1.3-3.2 2.6-8.4 2.6H17.4c-5.2 0-7-1.3-8.3-2.6-1.3-1.4-2.6-3.2-2.6-8.4v-13c0-5.2 1.3-7 2.6-8.3 1.4-1.3 3.2-2.6 8.4-2.6h13.1c5.2 0 7 1.3 8.3 2.6 1.3 1.4 2.6 3.2 2.6 8.4v13zM34.6 25l-9.1 2.8v-3.7c0-.5-.2-.9-.6-1.2-.4-.3-.9-.4-1.3-.2l-11.1 3.4c-.8.2-1.2 1.1-1 1.9.2.8 1.1 1.2 1.9 1l9.1-2.8v3.7c0 .5.2.9.6 1.2.3.2.6.3.9.3.1 0 .3 0 .4-.1l11.1-3.4c.8-.2 1.2-1.1 1-1.9s-1.1-1.2-1.9-1z"
            ></path>
          </svg>
          <svg
            aria-label="Tagged"
            class="_8-yf5"
            fill="#8e8e8e"
            height="24"
            viewBox="0 0 48 48"
            width="24"
          >
            <path
              d="M41.5 5.5H30.4c-.5 0-1-.2-1.4-.6l-4-4c-.6-.6-1.5-.6-2.1 0l-4 4c-.4.4-.9.6-1.4.6h-11c-3.3 0-6 2.7-6 6v30c0 3.3 2.7 6 6 6h35c3.3 0 6-2.7 6-6v-30c0-3.3-2.7-6-6-6zm-29.4 39c-.6 0-1.1-.6-1-1.2.7-3.2 3.5-5.6 6.8-5.6h12c3.4 0 6.2 2.4 6.8 5.6.1.6-.4 1.2-1 1.2H12.1zm32.4-3c0 1.7-1.3 3-3 3h-.6c-.5 0-.9-.4-1-.9-.6-5-4.8-8.9-9.9-8.9H18c-5.1 0-9.4 3.9-9.9 8.9-.1.5-.5.9-1 .9h-.6c-1.7 0-3-1.3-3-3v-30c0-1.7 1.3-3 3-3h11.1c1.3 0 2.6-.5 3.5-1.5L24 4.1 26.9 7c.9.9 2.2 1.5 3.5 1.5h11.1c1.7 0 3 1.3 3 3v30zM24 12.5c-5.3 0-9.6 4.3-9.6 9.6s4.3 9.6 9.6 9.6 9.6-4.3 9.6-9.6-4.3-9.6-9.6-9.6zm0 16.1c-3.6 0-6.6-2.9-6.6-6.6 0-3.6 2.9-6.6 6.6-6.6s6.6 2.9 6.6 6.6c0 3.6-3 6.6-6.6 6.6z"
            ></path>
          </svg>
        </div>
      </div>

      <div class="gallery">

        @foreach($category->posts as $category_post)
        <div class="gallery-item" onclick="javascript:location.href='/blog/publicacoes/#{{$category_post->url}}'">
          <img alt="gallery-post" src="/images/uploads/blog/{{$category_post->main_image}}" />
          <span class="media-icon"></span>
          <div class="gallery-item-info">

            <ul>
                <li class="gallery-item-likes"><i class="fa fa-heart" aria-hidden="true"></i> 
                  @if($category_post->description < 1000)
                  {{(number_format($category_post->description))}}
                  @elseif($category_post->description < 10000)
                  {{substr(number_format($category_post->description), 0, 1)}} mil
                  @elseif($category_post->description >= 10000 && substr(number_format($category_post->description), -2) == "0," && $category_post->description < 100000)
                  {{substr(number_format($category_post->description), 0, 2)}} mil
                  @elseif($category_post->description >= 10000 && substr(number_format($category_post->description), -2) !== "0," && $category_post->description < 100000)
                  {{substr(number_format($category_post->description), 0, 4)}} mil
                  @elseif($category_post->description >= 100000 && substr(number_format($category_post->description), -4,-2) == ",0")
                  {{substr(number_format($category_post->description), 0,3)}} mil
                  @elseif($category_post->description >= 100000 && substr(number_format($category_post->description), -4,2) !== ",0")
                  {{substr(number_format($category_post->description), 0, 5)}} mil
                  @endif</li>
                <li class="gallery-item-comments" ><i class="fas fa-comment" style="margin-left:10px" aria-hidden="true"></i> 
                  @if($category_post->meta_description < 1000)
                  {{(number_format($category_post->meta_description))}}
                  @elseif($category_post->meta_description < 10000)
                  {{substr(number_format($category_post->meta_description), 0, 1)}} mil
                  @elseif($category_post->meta_description >= 10000 && substr(number_format($category_post->meta_description), -2) == "0," && $category_post->meta_description < 100000)
                  {{substr(number_format($category_post->description), 0, 2)}} mil
                  @elseif($category_post->meta_description >= 10000 && substr(number_format($category_post->meta_description), -2) !== "0," && $category_post->meta_description < 100000)
                  {{substr(number_format($category_post->description), 0, 4)}} mil
                  @elseif($category_post->meta_description >= 100000 && substr(number_format($category_post->meta_description), -4,-2) == ",0")
                  {{substr(number_format($category_post->description), 0,3)}} mil
                  @elseif($category_post->meta_description >= 100000 && substr(number_format($category_post->meta_description), -4,2) !== ",0")
                  {{substr(number_format($category_post->description), 0, 5)}} mil
                  @endif
                </li>
            </ul>

        </div>
        </div>
        @endforeach
      </div>
    </main>
  </body>
</html>
