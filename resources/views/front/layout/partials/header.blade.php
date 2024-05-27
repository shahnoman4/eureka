<header class="header d-flex">
  <div class="header__logo">
    <a href="{{route('home')}}">
      <img src="{{url('public/front/webImages/logo.webp')}}" alt="logo.webp" />
    </a>
  </div>
  <div class="header__right">
    <i class="fa-solid fa-xmark navclose"></i>
    <div class="header__right_top d-flex justify-content-between">
      <div class="header__right_topl">
        <ul class="list d-flex">
          <li><a href="{{route('home')}}" class="{{ request()->routeIs('home') ? 'active' : '' }}">Home</a></li>
          <li><a href="{{route('partner')}}" class="{{ request()->routeIs('partner') ? 'active' : '' }}">Partners</a></li>
          <li><a href="{{route('career')}}" class="{{ request()->routeIs('career') ? 'active' : '' }}">Career</a></li>
        </ul>
      </div>
      <div class="header__right_topr">
        <ul class="list d-flex">
          <li><a href="{{route('contactus')}}"  class="{{ request()->routeIs('contactus') ? 'active' : '' }}">Contact</a></li>
        </ul>
      </div>
    </div>
    <div class="header__right_bottom">
      <ul class="list d-flex">
        <li><a href="{{route('oilgas')}}"  class="{{ request()->routeIs('oilgas') ? 'active' : '' }}">Oil & Gas</a></li>
        <li><a href="{{route('geothermal')}}"  class="{{ request()->routeIs('geothermal') ? 'active' : '' }}">Geothermal</a></li>
        <li><a href="{{route('wind')}}"  class="{{ request()->routeIs('wind') ? 'active' : '' }}">Renewable Energy</a></li>
        <li><a href="{{route('technologies')}}"  class="{{ request()->routeIs('technologies') ? 'active' : '' }}">Technologies</a></li>
        <li><a href="{{route('about')}}"  class="{{ request()->routeIs('about') ? 'active' : '' }}">About Us</a></li>
      </ul>
    </div>
  </div>
  <div class="header__nav d-none">
    <i class="fa-solid fa-bars"></i>
  </div>
</header>