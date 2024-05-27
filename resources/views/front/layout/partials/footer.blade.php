<footer class="footer">
  <div class="container">
    <div class="footer__top">
      <div class="footer__topB">
        <div class="h2">
          {{$footer->description_1}}
        </div>
        <p>
          {{$footer->description_2}}
        </p>
      </div>
      <div class="footer__topB">
        <div class="h4">Links</div>
        <div class="footermenu">
          <ul class="list">
            <li><a href="{{route('partner')}}">Partners</a></li>
            <li><a href="{{route('career')}}">Careers</a></li>
            <li><a href="{{route('contactus')}}">Contact Us</a></li>
            <li><a href="{{route('faq')}}">FAQs</a></li>
          </ul>
          <ul class="list">
            <li><a href="{{route('oilgas')}}">Oil & Gas</a></li>
            <li><a href="{{route('geothermal')}}">Geothermal</a></li>
            <li><a href="{{route('wind')}}">Renewable Energy</a></li>
             
            <li><a href="{{route('technologies')}}">Technologies</a></li>
          </ul>
        </div>
      </div>
      <!-- close footer__topB  -->
      <div class="footer__topB">
        <div class="footernum">
          <div class="footernum_l">
            <i class="fa-solid fa-phone"></i>
          </div>
          <div class="footernum_r">
            <h5 class="h5">Call Us Now</h5>
            <ul class="list">
              <li>
                <a dir="ltr" href="tel:{{$footer->contact_no}}">{{$footer->contact_no}}</a>
              </li>
            </ul>
          </div>
        </div>
        <div class="footernum">
          <div class="footernum_l">
            <i class="fa-solid fa-envelope"></i>
          </div>
          <div class="footernum_r">
            <h5 class="h5">Say Hello!</h5>
            <ul class="list">
              <li>
                <a dir="ltr" href="mailto:{{$footer->contact_email}}"
                  >{{$footer->contact_email}}</a
                >
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <!-- close footer__top  -->
    <div class="footer__bottom">
      <div class="footer__bottomlogo">
        <a href="{{route('home')}}">
          <img src="{{url('public/front/webImages/LOGO2.webp')}}" alt="LOGO2.webp" />
        </a>
      </div>
      <ul class="list d-flex">
        <li><a href="{{route('privacypolicy')}}">Privacy Policy</a></li>
        <li>-</li>
        <li><a href="{{route('termandconditions')}}">Terms and Conditions</a></li>
      </ul>
    </div>
  </div>
</footer>
<div class="footerbb">
  <div class="container">
    © All Right Reserved By
    <a href="https://quickdigitals.ae/" target="_blank" class="footer-rights"
      >Quick Digitals.</a
    >
  </div>
</div>