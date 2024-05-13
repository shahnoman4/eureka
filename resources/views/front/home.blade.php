@extends('front.layout.master')

@section('description')
{{ __('home.title') }}
@endsection
@section('title')
{{ __('home.title') }}
@endsection

@section('styles')

@endsection

@section('content')
<!-- page content -->
<main class="indexPage">
  <section class="banner">
    <img src="storage/{{$data['home']->banner_image}}" class="img1" alt="banner.webp">
    <div class="bannerTxt">
      <span>{{$data['home']->banner_text1}}</span>
      <p class="m-0">{{$data['home']->banner_text2}}</p>
      <!-- <a href="#" class="btn btn-primary">Learn More</a> -->
    </div>
  </section>
  <section class="section13">
    <div class="container">
      <span class="section3__leftb">{!!$data['about']->section3_heading1!!}</span>
      <div class="section3__left-">
        <h3 class="m-0">
          {!!$data['about']->section3_heading2!!}
        </h3>
      </div>
      <div class="section13Main">
        <div class="section13Mainl">
          <div class="h5">40</div>
          <div class="h6">
            Years <br />
            of dedication
          </div>
        </div>
        <div class="section13Mainc">
          @php
                $aboutText = $data['about']->section3_description;
                echo strlen($aboutText) > 400 ? substr($aboutText, 0, 400) . '...' : $aboutText;
            @endphp
        </div>

        <div class="section13Mainr">
          <a href="{{route('about')}}" class="section4_lB">
            <div class="h6 m-0">About Us</div>
            <img src="{{asset('front/webImages/arrow.webp')}}" alt="arrow.webp" />
          </a>
        </div>
      </div>
    </div>
  </section>

  <section class="section14">
    <div class="section14Main">
      <a href="{{route('oilgas')}}" class="section14MainBox">
        <img src="{{asset('front/webImages/services/1.webp')}}" alt="1.webp" />
        <h4>Oil & Gas</h4>
      </a>
      <a href="{{route('geothermal')}}" class="section14MainBox">
        <img src="{{asset('front/webImages/services/2.webp')}}" alt="2.webp" />
        <h4>Geothermal</h4>
      </a>
      <a href="{{route('wind')}}" class="section14MainBox">
        <img src="{{asset('front/webImages/services/3.webp')}}" alt="3.webp" />
        <h4>Renewables</h4>
      </a>
      <a href="{{route('technologies')}}" class="section14MainBox">
        <img src="{{asset('front/webImages/services/4.webp')}}" alt="4.webp" />
        <h4>Technologies</h4>
      </a>
    </div>
  </section>

  <section class="section15">
    <div class="container">
      <div class="h4">
        {{$data['home']->section1_heading}}
      </div>
      <p>
        {{$data['home']->section1_description}}
      </p>
    </div>
  </section>
  <section class="section16">
    <div class="container">
      <div class="section16Main">
        <div class="section16Mainl">
            <img src="storage\{{$data['home']->section2_image}}" alt="">

            <div class="section16Mainlb">
                Our <br> Partners
            </div>
        </div>
        <div class="section16Mainr">
            <div class="section16MainrBox">
                <div class="h3">{{$data['home']->section2_heading}}</div>
                <p>{{$data['home']->section2_description}}</p>
            </div>
        </div>
      </div>
    </div>
  </section>
  <section class="section17">
    @foreach($data['partner'] as $row)
    <div class="section17Box">
        <img src="{{asset('storage/'.$row->image)}}" class="img1" alt="">
        <img src="{{asset('storage/'.$row->logo)}}" class="img2" alt="">
        <div class="h4">{!!$row->title!!}</div>
    </div>
    @endforeach
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
              <img src="{{asset('front/webImages/arrow.webp')}}" alt="arrow.webp" />
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
          <img src="{{asset('front/webImages/3.webp')}}" alt="3.webp')}}" />
        </div>
      </div>
    </div>
  </section>
</main>
<!-- /page content -->
@endsection
@section('scripts')
     
@endsection