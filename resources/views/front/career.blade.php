@extends('front.layout.master')

@section('title')
{{$data['career']->meta_title}}
@endsection

@section('styles')

@endsection

@section('content')
<!-- page content -->
<main class="indexPage">
  <section class="section4">
    <div class="container">
      <h4>
        {!!$data['career']->heading_1!!}
      </h4>

      <div class="section4_ section4_22">
        <div class="section4_r">
          <img src="storage/{{$data['career']->image_1}}" alt="3.webp" />
        </div>
        <div class="section4_l">
          <div class="h5">
            {!!$data['career']->heading_2!!}
          </div>
          <div class="section4_lM d-flex">
            <div class="section4_lMr">
              <p>
                {!!$data['career']->description_1!!}
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
        <div class="h3">{!!$data['career']->heading_3!!}</div>
        <div class="h2">{!!$data['career']->heading_4!!}</div>
      </div>
      <br />

      <ul class="list">
        @foreach($data['job'] as $row)
        <li class="section21Main">
          <div class="section21Main__left">{!!$row->title!!}</div>
          <div class="section21Main__Right">
            <a class="btn btn-secondaryy" href="{{route('careerdetail', ['id' => $row->id])}}">View Details</a>
            <a class="btn btn-primaryy apply_now"  data-toggle="modal" data-target="#exampleModal" data-id="{{$row->id}}">Apply Now</a>
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
          <img src="storage/{{$data['career']->image_2}}" alt="" />
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
        <form class="needs-validation" action="{{route('job.apply')}}" id="job_form" method="POST" enctype="">
          @csrf
                        
            <div class="modal-body">
              <input type="text" name="name" class="form-control custom-form-control" id="name" placeholder="Full Name" required/>
              <br />
             
              <input type="email" name="email" class="form-control custom-form-control" id="email" placeholder="Email"/>
              <br />
              <span class="cv">CV *</span>
              <input type="file" name="cv" required="">
            </div>
            <input type="text" name="job_id" id="job_id" value="">
          <div class="modal-footer">
            <button type="submit" class="btn btn-primary" id="add_form_btn"><span>Submit</span></button>
            <button type="button" class="btn btn-primary-close" data-dismiss="modal">Close</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
@endsection
@section('scripts')
<script type="text/javascript">
$(document).on('click', '.apply_now', function()
{
  var job_id = $(this).attr('data-id');
  $('#job_id').val(job_id);
   
});

$('#add_form_btn').on('click', function(e) {
  //var data = $('#add_form').serializeArray();
  e.preventDefault();
  var data = $('#job_form')[0];
  var formData = new FormData(data);
  $.ajax({
  data: formData,
  type: $('#job_form').attr('method'),
  url: $('#job_form').attr('action'),
  processData: false,
  contentType: false,
  success: function(response)
  {
  if(response.errors)
  {
  $.each(response.errors, function( index, value ) {
    $("."+index).html(value);
    $("."+index).fadeIn('slow', function(){
      $("."+index).delay(3000).fadeOut(); 
    });
  });

  }
  else
  {
    $('.success').html(response);
    $('.success').fadeIn('slow', function(){
      $('.success').delay(9000).fadeOut(); 
    });
    $('#addModel').modal('hide');
    $('#job_form')[0].reset();
  }
  }
  });
});
</script>     
@endsection