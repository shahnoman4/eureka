@extends('front.layout.master')

@section('description')
{{$data['about']->meta_description}}
@endsection
@section('title')
{{$data['about']->meta_title}}
@endsection


@section('styles')

@endsection

@section('content')
<!-- page content -->
<main class="indexPage">
  <section class="section1">
    <div class="container">
      <div class="h3">{!!$data['about']->section1_heading1!!}</div>
      <h1>{!!$data['about']->section1_heading2!!}</h1>
      <p>
        {!!$data['about']->section1_description!!}
      </p>
    </div>
  </section>
  <section class="section2">
    <img src="public/storage/{{$data['about']->section2_image}}" alt="1" />
    <div class="section2Main">
      <div class="container d-flex">
        <div class="section2MainBox">
          <h2>{!!$data['about']->section2_heading1!!}</h2>
          <p>
            {!!$data['about']->section2_description1!!}
          </p>
        </div>
        <div class="section2MainBox">
          <h2>{!!$data['about']->section2_heading2!!}</h2>
          <p>
            {!!$data['about']->section2_description2!!}
          </p>
        </div>
      </div>
    </div>
  </section>
  <section class="section3">
    <div class="container">
      <div class="section3_ grid">
        <div class="section3__left">
          <span class="section3__leftb">{!!$data['about']->section3_heading1!!}</span>
          <div class="section3__left-">
            <h3 class="m-0">
              {!!$data['about']->section3_heading2!!}
            </h3>
            <p>
              {!!$data['about']->section3_description!!}
            </p>
          </div>
        </div>
        <div class="section3__right">
          <img src="public/storage/{{$data['about']->section3_image}}" alt="" />
        </div>
      </div>
      <div class="section32">
        <ul class="list d-flex gap-2">
          <li class="d-flex">
            <div class="h3">
              <span class="counter-value" data-count="40">0</span>+
            </div>
            <span class="h4"
              >Years <br />
              of dedication</span
            >
          </li>
          <li class="d-flex">
            <div class="h3">
              <span class="counter-value" data-count="15">0</span>+
            </div>
            <span class="h4"> Services</span>
          </li>
          <li class="d-flex">
            <div class="h3" >
              <span class="counter-value" data-count="03">0</span>+
            </div>
            <span class="h4">Locations</span>
          </li>
        </ul>
      </div>
    </div>
  </section>
  <section class="section4">
    <div class="container">
      <h4>
        {!!$data['career']->heading_1!!}
      </h4>

      <div class="section4_">
        <div class="section4_l">
          <div class="h5">
            {!!$data['career']->heading_2!!}
          </div>
          <div class="section4_lM d-flex">
            <a href="{{route('career')}}" class="section4_lB">
              <div class="h6 m-0">Career</div>
              <img src="{{url('public/front/webImages/arrow.webp')}}" alt="arrow.webp" />
            </a>
            <div class="section4_lMr">
              <p>
                {!!$data['career']->description_1!!}
              </p>
            </div>
          </div>
        </div>
        <!-- close section4_l   -->

        <div class="section4_r">
          <img src="{{url('public/front/webImages/3.webp')}}" alt="3.webp" />
        </div>
      </div>
    </div>
  </section>
</main>
<!-- /page content -->
@endsection
@section('scripts')
     
@endsection