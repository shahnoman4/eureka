@extends('front.layout.master')

@section('title')
{{$data['termandconditions']->meta_title}}
@endsection

@section('styles')

@endsection

@section('content')
<!-- page content -->
<main class="indexPage">
  <section class="privacypolicy">
    <div class="container">
      <h1>{{$data['termandconditions']->heading_1}}</h1>
      <p>{{$data['termandconditions']->description_1}}</p>
    </div>
  </section>
</main>
<!-- /page content -->
@endsection
@section('scripts')
     
@endsection