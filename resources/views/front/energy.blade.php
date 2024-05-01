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
      <img src="{{asset('front/webImages/energybanner.webp')}}" class="img1" alt="drillingbanner.webp">
      <ul class="list d-flex">
          <li><a href="#">Home &nbsp;-</a></li>
          <li><span class="currentPage">New Energy Technologies</span></li>
      </ul>
  </section>
  <section class="Innersection1">
      <div class="container">
          <div class="Innersection1_">
              <h1>New Energy  <br> Technologies</h1>
              <p>In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what's possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we're redefining the art and science of exploration.</p>
          </div>
        
      </div>
      </section>

      <section class="accordion1">
          <div class="container">
          <div class="accordion1Box">
            <div class="accordion1Boxh">
              <div class="h3">Wind Energy</div>
              <div class="accordion1Boxhicon"><i class="fa-solid fa-arrow-left"></i></div>
            </div>
            <div class="accordion1BoxBody">
                  <p>In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what's possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we're redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what's possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we're redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what's possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we're redefining the art and science of exploration.</p>
            </div>
          </div>
          <!-- close  accordion1Box -->
          <div class="accordion1Box">
            <div class="accordion1Boxh">
              <div class="h3">Solar Energy</div>
              <div class="accordion1Boxhicon"><i class="fa-solid fa-arrow-left"></i></div>
            </div>
            <div class="accordion1BoxBody">
                  <p>In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what's possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we're redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what's possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we're redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what's possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we're redefining the art and science of exploration.</p>
            </div>
          </div>
          <!-- close  accordion1Box -->
          <div class="accordion1Box">
            <div class="accordion1Boxh">
              <div class="h3">Water Energy</div>
              <div class="accordion1Boxhicon"><i class="fa-solid fa-arrow-left"></i></div>
            </div>
            <div class="accordion1BoxBody">
                  <p>In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what's possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we're redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what's possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we're redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what's possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we're redefining the art and science of exploration.</p>
            </div>
          </div>
          <!-- close  accordion1Box -->
      </div>
        </section>
</main>
<!-- /page content -->
@endsection
@section('scripts')
     
@endsection