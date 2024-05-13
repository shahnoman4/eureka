@extends('front.layout.master')
@section('description')
{{$data['technology']->meta_description}}
@endsection
@section('title')
{{$data['technology']->meta_title}}
@endsection

@section('styles')

@endsection

@section('content')
<!-- page content -->
<main class="indexPage">
  <section class="InnerBanner">
    <img src="storage/{{$data['technology']->banner_image}}" class="img1" alt="banner2.webp" />
    <div class="InnerBanner2_">
      <div class="container">
        <h1>
            {!!$data['technology']->banner_title!!}
        </h1>
        <p>
          
        </p>
      </div>
    </div>
  </section>
  <section class="Innersection1">
    <div class="container">
      <div class="Innersection1_">
        <h1>{!!$data['technology']->page_heading!!}</h1>
        <p>
          {!!$data['technology']->page_description!!}
        </p>
      </div>
      <div class="Innersection1_2">
        <a href="{{route('innerpage', ['slug' => 'drilling-technologies'])}}" class="section14MainBox">
          <img src="{{asset('front/webImages/Drilling/1.webp')}}" alt="1.webp" />
          <h4>Drilling</h4>
        </a>
        <a href="{{route('innerpage', ['slug' => 'completion-technologies'])}}" class="section14MainBox">
          <img src="{{asset('front/webImages/Drilling/2.webp')}}" alt="1.webp" />
          <h4>Completions</h4>
        </a>
        <a href="{{route('innerpage', ['slug' => 'topside-technologies'])}}" class="section14MainBox">
          <img src="{{asset('front/webImages/Drilling/3.webp')}}" alt="1.webp" />
          <h4>Topside</h4>
        </a>
        <a href="{{route('innerpage', ['slug' => 'landside-technologies'])}}" class="section14MainBox">
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