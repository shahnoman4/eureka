@extends('front.layout.master')

@section('title')
{{ __('home.title') }}
@endsection

@section('styles')

@endsection

@section('content')
<!-- page content -->
<main class="indexPage">
  <section class="banner">
    <img src="{{asset('front/webImages/banner.webp')}}" class="img1" alt="banner.webp">
    <div class="bannerTxt">
      <span>Unlock sustainable energy services</span>
      <p class="m-0">for a brighter tomorrow</p>
      <a href="#" class="btn btn-primary">Learn More</a>
    </div>
  </section>
  <section class="section13">
    <div class="container">
      <span class="section3__leftb">Who we are</span>
      <div class="section3__left-">
        <h3 class="m-0">
          Eureka Mellon revolutionizes <span>MENA</span> and
          <dd>GCC upstream</dd>
          <dd>sector</dd>
          with focus on drilling and completion
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
          Step into a world where innovation meets sustainability.
          Experience the power of tomorrow with our cutting-edge solutions
          in sustainable energy services Step into a world where innovation
          meets sustainability. Experience the power of tomorrow with our
          cutting-edge solutions in sustainable energy services
        </div>

        <div class="section13Mainr">
          <a href="about.html" class="section4_lB">
            <div class="h6 m-0">About Us</div>
            <img src="{{asset('front/webImages/arrow.webp')}}" alt="arrow.webp" />
          </a>
        </div>
      </div>
    </div>
  </section>

  <section class="section14">
    <div class="section14Main">
      <a href="#" class="section14MainBox">
        <img src="{{asset('front/webImages/services/1.webp')}}" alt="1.webp" />
        <h4>Oil & Gas</h4>
      </a>
      <a href="#" class="section14MainBox">
        <img src="{{asset('front/webImages/services/2.webp')}}" alt="2.webp" />
        <h4>Geothermal</h4>
      </a>
      <a href="#" class="section14MainBox">
        <img src="{{asset('front/webImages/services/3.webp')}}" alt="3.webp" />
        <h4>Renewables</h4>
      </a>
      <a href="#" class="section14MainBox">
        <img src="{{asset('front/webImages/services/4.webp')}}" alt="4.webp" />
        <h4>Technologies</h4>
      </a>
    </div>
  </section>

  <section class="section15">
    <div class="container">
      <div class="h4">
        Eureka Mellon is a pioneering company specializing in upstream
        operations and services within the MENA and GCC regions.
      </div>
      <p>
        Step into a world where innovation meets sustainability. Experience
        the power of tomorrow with our cutting-edge solutions in sustainable
        energy servicesStep into a world where innovation meets
        sustainability. Experience the power of tomorrow with our
        cutting-edge solutions in sustainable energy servicesStepStep into a
        world where innovation meets sustainability. Experience the power of
        tomorrow with our cutting-edge solutions in sustainable energy
        servicesStep into a world where innovation meets sustainability.
        Experience the power of tomorrow with our cutting-edge solutions in
        sustainable energy servicesStep
      </p>
    </div>
  </section>
  <section class="section16">
    <div class="container">
      <div class="section16Main">
        <div class="section16Mainl">
            <img src="{{asset('front/webImages/5.webp')}}" alt="">

            <div class="section16Mainlb">
                Our <br> Partners
            </div>
        </div>
        <div class="section16Mainr">
            <div class="section16MainrBox">
                <div class="h3">Arrival Energy Solutions, Volant Dynasty, and AVS Global Gravity unite to innovate, elevate, and redefine</div>
                <p>Introducing a dynamic alliance poised to redefine the landscape of energy solutions: Business Partners Arrival Energy Solutions, Volant Dynasty, and AVS Global Gravity. This collaboration represents a convergence of expertise, innovation, and commitment to excellence in the energy sector. With Arrival Energy Solutions leading the charge in sustainable practices, Volant Dynasty driving technological advancements</p>
            </div>
        </div>
      </div>
    </div>
  </section>
  <section class="section17">
    <div class="section17Box">
        <img src="{{asset('front/webImages/services2/11.webp')}}" class="img1" alt="">
        <img src="{{asset('front/webImages/services2/1.webp')}}" class="img2" alt="">
        <div class="h4">Arrival Energy Solutions</div>
    </div>
    <div class="section17Box">
        <img src="{{asset('front/webImages/services2/12.webp')}}" class="img1" alt="">
        <img src="{{asset('front/webImages/services2/2.webp')}}" class="img2" alt="">
        <div class="h4">Digital   Solution</div>
    </div>
    <div class="section17Box">
        <img src="{{asset('front/webImages/services2/13.webp')}}" class="img1" alt="">
        <img src="{{asset('front/webImages/services2/3.webp')}}" class="img2" alt="">
        <div class="h4">Digital  Solution</div>
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
            <div class="section4_lB">
              <div class="h6 m-0">Career</div>
              <img src="{{asset('front/webImages/arrow.webp')}}" alt="arrow.webp" />
            </div>
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