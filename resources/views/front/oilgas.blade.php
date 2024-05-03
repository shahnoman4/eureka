@extends('front.layout.master')

@section('title')
{{$data['oilgas']->meta_title}}
@endsection

@section('styles')

@endsection

@section('content')
<main class="indexPage">
  <section class="InnerBanner2">
    <img src="storage/{{$data['oilgas']->banner_image}}" class="img1" alt="banner2.webp" />
    <div class="InnerBanner2_">
      <div class="container">
        <h1>
            {!!$data['oilgas']->banner_title!!}
        </h1>
        <p>
          {!!$data['oilgas']->banner_description!!}
        </p>
      </div>
    </div>
  </section>
  <section class="Innersection2">
    <div class="container">
      <h2>
        {!!$data['oilgas']->page_heading!!}
      </h2>
      <div class="Innersection2Main">
        <div class="Innersection2MainBox">
          <img src="front/webImages/gas/1.webp" alt="" />
          <div class="h3">Oil & Gas</div>
        </div>
        <div class="Innersection2Main2 Innersection2Main22">
          <a href="landside.html" class="Innersection2MainBox2">
            <img src="front/webImages/gas/2.webp" alt="" />
            <div class="h3">Landside</div>
          </a>
          <a href="completion.html" class="Innersection2MainBox2">
            <img src="front/webImages/gas/3.webp" alt="" />
            <div class="h3">Completion</div>
          </a>
          <a href="topside.html" class="Innersection2MainBox2">
            <img src="front/webImages/gas/4.webp" alt="" />
            <div class="h3">Topside</div>
          </a>
          <a href="drillingtechnologies.html" class="Innersection2MainBox2">
            <img src="front/webImages/gas/5.webp" alt="" />
            <div class="h3">Drilling</div>
          </a>
        </div>
      </div>
      <p class="Innersection2p">{!!$data['oilgas']->page_description!!}</p>
    </div>
  </section>
</main>
@endsection
@section('scripts')
     
@endsection