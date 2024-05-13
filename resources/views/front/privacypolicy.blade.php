@extends('front.layout.master')
@section('description')
{{$data['privacypolicy']->meta_description}}
@endsection
@section('title')
{{$data['privacypolicy']->meta_title}}
@endsection

@section('styles')

@endsection

@section('content')
<!-- page content -->
<main class="indexPage">
  <section class="privacypolicy">
    <div class="container">
      <h1>{{$data['privacypolicy']->heading_1}}</h1>
      <p>{{$data['privacypolicy']->description_1}}</p>
    </div>
  </section>
</main>
<!-- /page content -->
@endsection
@section('scripts')
     
@endsection