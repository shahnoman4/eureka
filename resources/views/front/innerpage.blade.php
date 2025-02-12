@extends('front.layout.master')

@section('description')
{{$data['innerpage']->meta_description}}
@endsection
@section('title')
{{$data['innerpage']->meta_title}}
@endsection

@section('styles')

@endsection

@section('content')
<!-- page content -->
<main class="indexPage">
  <section class="InnerBanner">
      <img src="{{url('public/storage/'.$data['innerpage']->banner_image)}}" class="img1" alt="drillingbanner.webp">
      <ul class="list d-flex">
          <li><a href="{{route('home')}}">Home &nbsp;-</a></li>
          <li><a href="{{route('oilgas')}}">Oil  & Gas &nbsp;-</a></li>
          <li><span class="currentPage">{!!trim(str_replace('Technologies','',$data['innerpage']->page_name))!!}</span></li>
      </ul>
  </section>
  <section class="Innersection1">
      <div class="container">
          <div class="Innersection1_">
              <h1>{!!$data['innerpage']->heading!!}</h1>
              <p>{!!$data['innerpage']->description!!}</p>
          </div>
      </div>
  </section>
  <section class="accordion1">
    <div class="container">
      @foreach($data['innerpage']->mainpoint as $row)
        @if($row->innerpage_id==5)
        <div class="accordion1Box">
          <div class="accordion1Boxh">
            <div class="h3"> {!! $row->heading !!}</div>
            <div class="accordion1Boxhicon"><i class="fa-solid fa-arrow-left"></i></div>
          </div>
          <div class="accordion1BoxBody">

            <div class="accordion1BoxBody_">
                <div class="accordion1BoxBody_l">
                    <p>{!! $row->description !!} </p>
                </div>
                <div class="accordion1BoxBody_r">
                    <img src="{{url('public/storage/'.$row->image)}}" alt="">
                </div>
            </div>
              
          </div>
        </div>
        @else
        <div class="accordion1Box">
          <div class="accordion1Boxh">
            <div class="h3">{!! $row->heading !!}</div>
            <div class="accordion1Boxhicon"><i class="fa-solid fa-arrow-left"></i></div>
          </div>
          <div class="accordion1BoxBody">
                <img src="{{url('public/storage/'.$row->image)}}" class="radius" alt="">
                <p>{!! $row->description !!}</p>
          </div>
        </div>
        @endif
      @endforeach  
    </div>
  </section>
</main>
<!-- /page content -->
@endsection
@section('scripts')
     
@endsection