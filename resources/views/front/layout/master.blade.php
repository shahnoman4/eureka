<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    
    <title>@yield('title')</title>
    @include('front.layout.partials.styles')
    @yield('styles')
  </head>
   
  <body>
    <div class="backgroundfixed"></div>
    @include('front.layout.partials.header')
    @yield('content')
    @include('front.layout.partials.footer')
    @include('front.layout.partials.scripts')
    @yield('scripts')
  </body>
</html>
