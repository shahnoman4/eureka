@extends('front.layout.master')

@section('title')
Eureka Mellon
@endsection

@section('styles')

@endsection

@section('content')
<!-- page content -->
<main class="indexPage">
  <section class="Innersection1">
    <div class="container">
        <div class="Innersection1_">
            <h1>FAQ</h1>
          </div>
      
    </div>
  </section>

  <section class="accordion1">
      <div class="container">
      @foreach($data['faq'] as $row)
        <div class="accordion1Box">
          <div class="accordion1Boxh">
            <div class="h3">{!!$row->question!!}</div>
            <div class="accordion1Boxhicon"><i class="fa-solid fa-arrow-left"></i></div>
          </div>
          <div class="accordion1BoxBody">
                <p>{!!$row->ans!!}</p>
          </div>
        </div>
      @endforeach  
      
    </div>
  </section>
</main>
<!-- /page content -->
@endsection
@section('scripts')
     
@endsection