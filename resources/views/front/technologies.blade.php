@extends('front.layout.master')

@section('title')
{{ __('home.title') }}
@endsection

@section('styles')

@endsection

@section('content')
<!-- page content -->
<main class="indexPage">
  <section class="InnerBanner">
    <img src="{{asset('front/webImages/banner2.webp')}}" class="img1" alt="banner2.webp" />
    <ul class="list d-flex">
      <li><a href="#">Home &nbsp;-</a></li>
      <li><a href="#">Oil & Gas &nbsp;-</a></li>
      <li><span class="currentPage">Drilling</span></li>
    </ul>
  </section>
  <section class="Innersection1">
    <div class="container">
      <div class="Innersection1_">
        <h1>Technologies</h1>
        <p>
          In the realm of drilling, precision is paramount. With
          state-of-the-art technology and unmatched expertise, [Company
          Name] is at the forefront of pushing the boundaries of what's
          possible. Our innovative drilling techniques maximize efficiency,
          minimize environmental impact, and unlock new reservoirs
          previously deemed inaccessible. From conventional to
          unconventional drilling, we're redefining the art and science of
          exploration.
        </p>
      </div>
      <div class="Innersection1_2">
        <a href="#" class="section14MainBox">
          <img src="{{asset('front/webImages/Drilling/1.webp')}}" alt="1.webp" />
          <h4>Drilling</h4>
        </a>
        <a href="#" class="section14MainBox">
          <img src="{{asset('front/webImages/Drilling/2.webp')}}" alt="1.webp" />
          <h4>Completions</h4>
        </a>
        <a href="#" class="section14MainBox">
          <img src="{{asset('front/webImages/Drilling/3.webp')}}" alt="1.webp" />
          <h4>Topside</h4>
        </a>
        <a href="#" class="section14MainBox">
          <img src="{{asset('front/webImages/Drilling/4.webp')}}" alt="1.webp" />
          <h4>Landside</h4>
        </a>
        <a href="#" class="section14MainBox">
          <img src="{{asset('front/webImages/Drilling/5.webp')}}" alt="1.webp" />
          <h4>Renewable Technology</h4>
        </a>
      </div>
    </div>
  </section>
</main>
<!-- /page content -->
@endsection
@section('scripts')
     
@endsection