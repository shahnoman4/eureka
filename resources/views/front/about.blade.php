@extends('front.layout.master')

@section('title')
{{ __('home.title') }}
@endsection

@section('styles')

@endsection

@section('content')
<!-- page content -->
<main class="indexPage">
  <section class="section1">
    <div class="container">
      <div class="h3">for a brighter tomorrow</div>
      <h1>DIGITAL ARCHITECT OUR INNOVATION  STORY UNVEILED</h1>
      <p>
        Explore the narrative of innovation at Outgrid, where our digital
        architects weave a tale of strategic brilliance. Led by visionary
        minds, our team is dedicated to crafting excellence in every aspect
        of the digital realm, setting the stage for unparalleled success.
      </p>
    </div>
  </section>
  <section class="section2">
    <img src="{{asset('front/webImages/1.webp')}}" alt="1" />
    <div class="section2Main">
      <div class="container d-flex">
        <div class="section2MainBox">
          <h2>Our Vision</h2>
          <p>
            At Outgrid, we envision leading digital innovation and driving
            success.
          </p>
        </div>
        <div class="section2MainBox">
          <h2>Our Mission</h2>
          <p>
            At Outgrid, we envision leading digital innovation and driving
            success.
          </p>
        </div>
      </div>
    </div>
  </section>
  <section class="section3">
    <div class="container">
      <div class="section3_ grid">
        <div class="section3__left">
          <span class="section3__leftb">Who we are</span>
          <div class="section3__left-">
            <h3 class="m-0">
              Eureka Mellon revolutionizes <span>MENA</span> and
              <dd>GCC upstream</dd>
              <dd>sector</dd>
              with focus on drilling and completion
            </h3>
            <p>
              Step into a world where innovation meets sustainability.
              Experience the power of tomorrow with our cutting-edge
              solutions in sustainable energy services Step into a world
              where innovation meets sustainability. Experience the power of
              tomorrow with our cutting-edge solutions in sustainable energy
              servicesStep into a world where innovation meets
              sustainability. Experience the power of tomorrow with our
              cutting-edge solutions in sustainable energy services Step
              into a world where innovation meets sustainability. Experience
              the power of tomorrow with our cutting-edge solutions in
              sustainable energy servicesStep into a world where innovation
              meets sustainability. Experience the power of tomorrow with
              our cutting-edge solutions in sustainable energy services Step
              into a world where innovation meets sustainability. Experience
              the power of tomorrow with our cutting-edge solutions in
              sustainable energy services
            </p>
          </div>
        </div>
        <div class="section3__right">
          <img src="{{asset('front/webImages/2.webp')}}" alt="" />
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