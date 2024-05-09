@extends('front.layout.master')

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
    <img src="storage/{{$data['about']->section2_image}}" alt="1" />
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
          <img src="storage/{{$data['about']->section3_image}}" alt="" />
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
        Be Part of <br />
        Eureka Mellon
      </h4>

      <div class="section4_">
        <div class="section4_l">
          <div class="h5">
            As Eureka Mellon looks <br />
            ahead, its vision remains <br />
            unwavering
          </div>
          <div class="section4_lM d-flex">
            <a href="career.html" class="section4_lB">
              <div class="h6 m-0">Career</div>
              <img src="{{asset('front/webImages/arrow.webp')}}" alt="arrow.webp" />
            </a>
            <div class="section4_lMr">
              <p>
                to lead the transformation of the upstream sector through
                innovation, collaboration, and sustainable practices. With a
                focus on driving efficiency and maximizing value for
                clients, the company is poised to shape the future of energy
                exploration and production in the MENA and GCC regions and
                beyond.
              </p>
            </div>
          </div>
        </div>
        <!-- close section4_l   -->

        <div class="section4_r">
          <img src="{{asset('front/webImages/3.webp')}}" alt="3.webp" />
        </div>
      </div>
    </div>
  </section>
</main>
<!-- /page content -->
@endsection
@section('scripts')
     
@endsection