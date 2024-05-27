@extends('front.layout.master')

@section('description')
{{$data['partnerpage']->meta_description}}
@endsection
@section('title')
{{$data['partnerpage']->meta_title}}
@endsection

@section('styles')

@endsection

@section('content')
<!-- page content -->
<main class="indexPage">
  <section class="section1">
    <div class="container">
      <div class="h3">{!!$data['partnerpage']->heading_1!!}</div>
      <h1>{{$data['partnerpage']->heading_2}}</h1>
      <p>
        {!!$data['partnerpage']->description!!}
      </p>
    </div>
  </section>
  <section class="partners1">
      <div class="container">
        @foreach($data['partner'] as $index => $row)
          @if($index % 2 == 0) 
           <div class="partners1Main">
               <div class="partners1Main__left">
                  <img src="{{url('public/storage/'.$row->logo)}}" class="img2" alt="">
                  <p>{!!$row->description!!}</p>
                  <!-- <a href="#" class="btn btn-secondary">Explore more</a> -->
              </div>
              <div class="partners1Main__right">
                  <div class="section17Box">
                      <img src="{{url('public/storage/'.$row->image)}}" class="img1" alt="">
                      <img src="{{url('public/storage/'.$row->logo)}}" class="img2" alt="">
                      <div class="h4">{!!$row->title!!}</div>
                  </div>
              </div>
           </div> 
          @else
           <div class="partners1Main">
              <div class="partners1Main__right">
                  <div class="section17Box">
                      <img src="{{url('public/storage/'.$row->image)}}" class="img1" alt="">
                      <img src="{{url('public/storage/'.$row->logo)}}" class="img2" alt="">
                      <div class="h4">{!!$row->title!!}</div>
                  </div>
              </div>
              <div class="partners1Main__left">
                  <img src="{{url('public/storage/'.$row->logo)}}" style="width: 13rem;" class="img2" alt="">
                  <p>{!!$row->description!!}</p>
                  <!-- <a href="#" class="btn btn-secondary">Explore more</a> -->

              </div>
           </div>
         @endif 
        @endforeach   
      </div>
  </section>

  <section class="section4">
      <div class="container">
        <h4>
          {!!$data['partnerpage']->supplier_heading_1!!}
        </h4>

        <div class="section4_ section4_22">
          <div class="section4_r">
            <img src="{{url('public/storage/'.$data['partnerpage']->supplier_image)}}" alt="6.webp" />
          </div>
          <div class="section4_l">
            <div class="h5">
              <p class="success" style="color:green;"></p>
              {!!$data['partnerpage']->supplier_heading_2!!}
            </div>
            <div class="section4_lM d-flex">
              <a href="#"  class="section4_lB" data-toggle="modal" data-target="#exampleModal">
                <div class="h6 m-0">Supplier Form</div>
                <img src="{{url('public/front/webImages/arrow.webp')}}" alt="arrow.webp" />
              </a>
              <div class="section4_lMr">
                <p>
                  {!!$data['partnerpage']->supplier_description!!}
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
        <span class="section3__leftb">{!!$data['about']->section3_heading1!!}</span>
        <div class="section3__left-">
          <h3 class="m-0">
            {!!$data['about']->section3_heading2!!}
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
          @php
            $aboutText = $data['about']->section3_description;
            echo strlen($aboutText) > 400 ? substr($aboutText, 0, 400) . '...' : $aboutText;
          @endphp
          </div>

          <div class="section13Mainr">
            <a href="{{route('about')}}" class="section4_lB">
              <div class="h6 m-0">About Us</div>
              <img src="{{url('public/front/webImages/arrow.webp')}}" alt="arrow.webp" />
            </a>
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
        <h5 class="modal-title" id="exampleModalLabel">Supplier Form</h5>
        <button type="button" class="close custom-close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-body">
        <form class="needs-validation" action="{{route('supplier')}}" id="supplier_form" method="POST" enctype="multipart/form-data">
          @csrf
                        
            <div class="modal-body">
              <input type="text" name="name" class="form-control custom-form-control" id="name" placeholder="Full Name" required="required"/>
              <span class="name" style="color:red;"></span>
              <br />
              <input type="text" name="number" required="required" class="form-control custom-form-control" id="number" placeholder="Number"/>
              <span class="number" style="color:red;"></span>
              <br />
              <input type="email" name="email" required="required" class="form-control custom-form-control" id="email" placeholder="Email"/>
              <span class="email" style="color:red;"></span>
            </div>
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
  $('#add_form_btn').on('click', function(e) {
  e.preventDefault();
  var data = $('#supplier_form')[0];
  var formData = new FormData(data);
  $.ajax({
  data: formData,
  type: $('#supplier_form').attr('method'),
  url: $('#supplier_form').attr('action'),
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
    $('#exampleModal').modal('hide');
    $('#supplier_form')[0].reset();
  }
  }
  });
});
</script>     
@endsection