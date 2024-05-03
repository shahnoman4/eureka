@extends('front.layout.master')

@section('title')
{{$data['wind']->meta_title}}
@endsection

@section('styles')

@endsection

@section('content')
<!-- page content -->
<main class="indexPage">
  <section class="InnerBanner2">
    <img src="storage/{{$data['wind']->banner_image}}" class="img1" alt="banner2.webp" />
    <div class="InnerBanner2_">
      <div class="container">
        <h1>
          {{$data['wind']->banner_title}}
        </h1>
        <p>
          {{$data['wind']->banner_description}}
        </p>
      </div>
    </div>
  </section>
  <section class="Innersection2">
    <div class="container">
      <h2>
        {{$data['wind']->page_heading}}
      </h2>
      <div class="Innersection2Main">
        <div class="Innersection2MainBox">
          <img src="front/webImages/solar/1.webp" alt="" />
          <div class="h3">Wind & Solar</div>
        </div>
        <div class="Innersection2Main2">
          <a href="energy.html" class="Innersection2MainBox2">
            <img src="front/webImages/solar/2.webp" alt="" />
            <div class="h3">Solar</div>
          </a>
          <a href="landside.html" class="Innersection2MainBox2">
            <img src="front/webImages/solar/3.webp" alt="" />
            <div class="h3">H2</div>
          </a>
          <a href="topside.html" class="Innersection2MainBox2">
            <img src="front/webImages/solar/4.webp" alt="" />
            <div class="h3">Topside</div>
          </a>
        </div>
      </div>
      <p class="Innersection2p">{{$data['wind']->page_description}}</p>
    </div>
  </section>
</main>
<!-- /page content -->
@endsection
@section('scripts')
     
@endsection