@extends('front.layout.master')

@section('title')
{{ __('home.title') }}
@endsection

@section('styles')

@endsection

@section('content')
<!-- page content -->
<main class="indexPage">
  <section class="section4">
    <div class="container">
      <h4>
        Be Part of <br />
        Eureka Mellon
      </h4>

      <div class="section4_ section4_22">
        <div class="section4_r">
          <img src="{{asset('front/webImages/7.webp')}}" alt="3.webp" />
        </div>
        <div class="section4_l">
          <div class="h5">
            As Eureka Mellon looks <br />
            ahead, its vision remains <br />
            unwavering
          </div>
          <div class="section4_lM d-flex">
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
      </div>
    </div>
  </section>

  <section class="section21">
    <div class="container">
      <div class="section21__heading">
        <div class="h3">current openings</div>
        <div class="h2">We are looking for</div>
      </div>
      <br />

      <ul class="list">
        <li class="section21Main">
          <div class="section21Main__left">Drilling Engineer</div>
          <div class="section21Main__Right">
            <a class="btn btn-secondaryy" href="career2.html">View Details</a>
            <a class="btn btn-primaryy"  data-toggle="modal" data-target="#exampleModal">Apply Now</a>
          </div>
        </li>
        <li class="section21Main">
          <div class="section21Main__left">Completion Specialist</div>
          <div class="section21Main__Right">
            <a class="btn btn-secondaryy" href="career2.html">View Details</a>
            <a class="btn btn-primaryy"  data-toggle="modal" data-target="#exampleModal">Apply Now</a>
          </div>
        </li>
        <li class="section21Main">
          <div class="section21Main__left">Topside Engineer</div>
          <div class="section21Main__Right">
            <a class="btn btn-secondaryy" href="career2.html">View Details</a>
            <a class="btn btn-primaryy"  data-toggle="modal" data-target="#exampleModal">Apply Now</a>
          </div>
        </li>
        <li class="section21Main">
          <div class="section21Main__left">
            Landside Infrastructure Manager
          </div>
          <div class="section21Main__Right">
            <a class="btn btn-secondaryy" href="career2.html">View Details</a>
            <a class="btn btn-primaryy"  data-toggle="modal" data-target="#exampleModal">Apply Now</a>
          </div>
        </li>
      </ul>
    </div>
  </section>

  <section class="section22">
    <div class="container">
      <div class="section22_">
        <div class="section22__left">
          <a class="section4_lB"  data-toggle="modal" data-target="#exampleModal">
            <div class="h6 m-0" style="font-size: 1rem;">Submit CV</div>
            <img src="{{asset('front/webImages/arrow.webp')}}" alt="arrow.webp" />
          </a>
          <div class="section22__leftBox">
            <div class="h2">
              Arrival Energy Solutions, Volant Dynasty, and AVS Global
              Gravity unite to innovate, elevate, and redefine
            </div>
            <p>
              Introducing a dynamic alliance poised to redefine the
              landscape of energy solutions: Business Partners Arrival
              Energy Solutions, Volant Dynasty, and AVS Global Gravity. This
              collaboration represents a convergence of expertise,
              innovation, and commitment to excellence in the energy sector.
              With Arrival Energy Solutions leading the charge in
              sustainable practices, Volant Dynasty driving technological
              advancements
            </p>
          </div>
        </div>

        <div class="section22__right">
          <img src="{{asset('front/webImages/8.webp')}}" alt="" />
        </div>
      </div>
    </div>
  </section>
</main>
<!-- /page content -->
@endsection
@section('scripts')
     
@endsection