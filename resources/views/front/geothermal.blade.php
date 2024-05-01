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
  <section class="partners1">
      <div class="container">
       <div class="partners1Main">
           <div class="partners1Main__left">
              <img src="{{asset('front/webImages/services2/1.webp')}}" class="img2" alt="">
              <p>In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what's possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we're redefining the art and science of exploration.</p>
              <a href="#" class="btn btn-secondary">Explore more</a>

          </div>
          <div class="partners1Main__right">
              <div class="section17Box">
                  <img src="{{asset('front/webImages/services2/11.webp')}}" class="img1" alt="">
                  <img src="{{asset('front/webImages/services2/1.webp')}}" class="img2" alt="">
                  <div class="h4">Arrival Energy Solutions</div>
              </div>
          </div>
       </div>   
       <div class="partners1Main">
          <div class="partners1Main__right">
              <div class="section17Box">
                  <img src="{{asset('front/webImages/services2/13.webp')}}" class="img1" alt="">
                  <img src="{{asset('front/webImages/services2/3.webp')}}" class="img2" alt="">
                  <div class="h4">Digital  Solution</div>
              </div>
          </div>
          <div class="partners1Main__left">
              <img src="{{asset('front/webImages/services2/3.webp')}}" style="width: 13rem;" class="img2" alt="">
              <p>In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what's possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we're redefining the art and science of exploration.</p>
              <a href="#" class="btn btn-secondary">Explore more</a>

          </div>
       </div>   
       <div class="partners1Main">
         
          <div class="partners1Main__left">
              <img src="{{asset('front/webImages/services2/2.webp')}}" class="img2" alt="">
              <p>In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what's possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we're redefining the art and science of exploration.</p>
              <a href="#" class="btn btn-secondary">Explore more</a>

          </div>
          <div class="partners1Main__right">
              <div class="section17Box">
                  <img src="{{asset('front/webImages/services2/12.webp')}}" class="img1" alt="">
          <img src="{{asset('front/webImages/services2/2.webp')}}" class="img2" alt="">
          <div class="h4">Digital   Solution</div>
              </div>
          </div>
       </div>   
      </div>
  </section>

  <section class="section4">
      <div class="container">
        <h4>
          Be a Supplier to <br />
          Eureka Mellon
        </h4>

        <div class="section4_ section4_22">
          <div class="section4_r">
            <img src="{{asset('front/webImages/6.webp')}}" alt="3.webp" />
          </div>
          <div class="section4_l">
            <div class="h5">
              As Eureka Mellon looks <br />
              ahead, its vision remains <br />
              unwavering
            </div>
            <div class="section4_lM d-flex">
              <div class="section4_lB">
                <div class="h6 m-0">Supplier Form</div>
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

         
        </div>
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
</main>
<!-- /page content -->
@endsection
@section('scripts')
     
@endsection