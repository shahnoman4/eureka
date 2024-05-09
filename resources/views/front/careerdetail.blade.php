@extends('front.layout.master')

@section('title')
{{$data['career']->meta_title}}
@endsection

@section('styles')

@endsection

@section('content')
<!-- page content -->
<main class="indexPage">
    <section class="careerPage">
        <div class="container">
            <br>
            <img width="100%" height="30%" src="{{asset('front/webImages/career/1.webp')}}" alt="">
            <div class="h4">CURRENT OPENINGS</div>
            <h1>{!!$data['jobdetail']->title_2!!}</h1>

                <ul class="list d-flex careerPage2_">
                    <li>{!!$data['jobdetail']->job_type!!}</li>
                    <li>
                        <img src="{{asset('front/webImages/career/image344.png')}}" alt="flag">
                        {!!$data['jobdetail']->location!!}
                    </li>
                </ul>
                    <br>
                    <br>
                <div class="careerPage2des3">
                    Responsibilities
                </div>
                <ul>
                    {!!$data['jobdetail']->responsibilities!!}
                </ul>
                <h2>Requirements:</h2>
                <ul>
                    {!!$data['jobdetail']->requirements!!}
                </ul>
                <h2>BENEFITS:</h2>
                <ul>
                    {!!$data['jobdetail']->benefits!!}
                </ul>

                <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">Apply for this job</a>
        </div>
    </section>
    <br>
  <section class="section21">
    <div class="container">
      <div class="section21__heading">
        <div class="h3">current openings</div>
        <div class="h2">We are looking for</div>
      </div>
      <br />

      <ul class="list">
        @foreach($data['job'] as $row)
        <li class="section21Main">
          <div class="section21Main__left">{!!$row->title!!}</div>
          <div class="section21Main__Right">
            <a class="btn btn-secondaryy" href="{{route('careerdetail', ['id' => $row->id])}}">View Details</a>
            <a class="btn btn-primaryy"  data-toggle="modal" data-target="#exampleModal">Apply Now</a>
          </div>
        </li>
        @endforeach
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
              {!!$data['career']->heading_5!!}
            </div>
            <p>
              {!!$data['career']->description_2!!}
            </p>
          </div>
        </div>

        <div class="section22__right">
          <img src="{{asset('storage/'.$data['career']->image_2)}}" alt="" />
        </div>
      </div>
    </div>
  </section>
</main>
<!-- /page content -->

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Apply Form</h5>
        <button type="button" class="close custom-close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-body">
        <form class="needs-validation" id="booking-form" method="POST" action="https://falcondrive.ae/car/inquire">
          <input type="hidden" name="_token" value="qpq3Iv0gtd7ZNgwpdpZdElXEMbmT47OkBStfoDPt" autocomplete="off">              <div class="modal-body">
            <input type="text" name="name" class="form-control custom-form-control" id="name" placeholder="Full Name" required/>
            <br />
           
            <input type="email" name="email" class="form-control custom-form-control" id="email" placeholder="Email"/>
            <br />
            <span class="cv">CV *</span>
            <input type="file" name="cv" required="">
           </div>
          <div class="modal-footer">
            <button type="submit" class="btn btn-primary"><span>Submit</span></button>
            <button type="button" class="btn btn-primary-close" data-dismiss="modal">Close</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
@endsection
@section('scripts')
     
@endsection