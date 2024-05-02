@extends('front.layout.master')

@section('title')
{{$data['oilgas']->meta_title}}
@endsection

@section('styles')

@endsection

@section('content')
<main class="indexPage">
  <section class="InnerBanner">
      <img src="storage/{{$data['oilgas']->banner_image}}" class="img1" alt="drillingbanner.webp">
      <ul class="list d-flex">
          <li><a href="#">Home &nbsp;-</a></li>
          <li><a href="#">Oil  & Gas &nbsp;-</a></li>
          <li><span class="currentPage">Drilling</span></li>
      </ul>
  </section>
  <section class="Innersection1">
    <div class="container">
        <div class="Innersection1_">
            <h1>{{$data['oilgas']->page_heading}}</h1>
            <p>{{$data['oilgas']->page_description}}</p>
        </div>
    </div>
  </section>
  <section class="accordion1">
    <div class="container">
      @foreach($data['technology'] as $row)  
      <div class="accordion1Box">
        <div class="accordion1Boxh">
          <div class="h3">{{$row->title}}</div>
          <div class="accordion1Boxhicon"><i class="fa-solid fa-arrow-left"></i></div>
        </div>
        <div class="accordion1BoxBody">
              <img src="storage/{{$row->image}}" class="radius" alt="">
              <p>{{$row->description}}</p>
        </div>
      </div>
      @endforeach
    </div>
  </section>
</main>
@endsection
@section('scripts')
     
@endsection