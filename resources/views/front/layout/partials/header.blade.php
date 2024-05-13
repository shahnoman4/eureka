<header class="header d-flex">
  <div class="header__logo">
    <a href="{{route('home')}}">
      <img src="{{asset('front/webImages/logo.webp')}}" alt="logo.webp" />
    </a>
  </div>
  <div class="header__right">
    <i class="fa-solid fa-xmark navclose"></i>
    <div class="header__right_top d-flex justify-content-between">
      <div class="header__right_topl">
        <ul class="list d-flex">
          <li><a href="{{route('home')}}" class="active">Home</a></li>
          <li><a href="{{route('partner')}}">Partners</a></li>
          <li><a href="{{route('career')}}">Career</a></li>
        </ul>
      </div>
      <div class="header__right_topr">
        <ul class="list d-flex">
          <li><a href="{{route('contactus')}}">Contact</a></li>
        </ul>
      </div>
    </div>
    <div class="header__right_bottom">
      <ul class="list d-flex">
        <li><a href="{{route('oilgas')}}">Oil & Gas</a></li>
        <li><a href="{{route('geothermal')}}">Geothermal</a></li>
        <li><a href="{{route('wind')}}">Renewable Energy</a></li>
        <li><a href="{{route('technologies')}}">Technologies</a></li>
        <li><a href="{{route('about')}}">About Us</a></li>
      </ul>
    </div>
  </div>
  <div class="header__nav d-none">
    <i class="fa-solid fa-bars"></i>
  </div>
</header>