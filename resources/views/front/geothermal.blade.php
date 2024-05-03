@extends('front.layout.master')

@section('title')
{{$data['geothermal']->meta_title}}
@endsection

@section('styles')

@endsection

@section('content')
<!-- page content -->
<main class="indexPage">
  <section class="InnerBanner2">
    <img src="storage/{{$data['geothermal']->banner_image}}" class="img1" alt="banner2.webp" />
    <div class="InnerBanner2_">
      <div class="container">
        <h1>
          {!!$data['geothermal']->banner_title!!}
        </h1>
        <p>
          {!!$data['geothermal']->banner_description!!}
        </p>
      </div>
    </div>
  </section>
  <section class="Innersection2">
    <div class="container">
      <h2>
        {!!$data['geothermal']->page_heading!!}
      </h2>
      <div class="Innersection2Main">
        <div class="Innersection2MainBox">
          <img src="front/webImages/solar/1.webp" alt="" />
          <div class="h3">Geothermal</div>
        </div>
        <div class="Innersection2Main2">
          <a href="topside.html" class="Innersection2MainBox2">
            <img src="front/webImages/solar/2.webp" alt="" />
            <div class="h3">Topside</div>
          </a>
          <a href="completion.html" class="Innersection2MainBox2">
            <img src="front/webImages/solar/3.webp" alt="" />
            <div class="h3">Completion</div>
          </a>
          <a href="drillingtechnologies.html" class="Innersection2MainBox2">
            <img src="front/webImages/solar/4.webp" alt="" />
            <div class="h3">Drilling</div>
          </a>
        </div>
      </div>
      <p class="Innersection2p">{!!$data['geothermal']->page_description!!}</p>
    </div>
  </section>
</main>
<!-- /page content -->
@endsection
@section('scripts')
     
@endsection