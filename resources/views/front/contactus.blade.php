@extends('front.layout.master')
@section('description')
Eureka Mellon
@endsection
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
            <h1>{!!$data['contactus']->heading!!}</h1>
          </div>
      
    </div>
  </section>
  <section class="section10 grid grid-col70">
    <div class="block__inner">
      <div class="section10_Body">
          <div class="section10_BodyBox">
            <h5>Address</h5>
            <h6>
              <div class="section10_BodyBox_">
                <i class="fa-solid fa-location-dot"></i>
              </div>
              {!!$data['contactus']->address!!}
            </h6>
          </div>
          <div class="section10_BodyBox">
            <h5>Email</h5>
            <h6>
                <div class="section10_BodyBox_">
                    <i class="fa-solid fa-envelope"></i>
                 </div>
                 {!!$data['contactus']->email!!}
            </h6>
          </div>
          <div class="section10_BodyBox">
            <h5>Contact</h5>
            <h6>
                <div class="section10_BodyBox_">
                    <i class="fa-solid fa-phone-volume" style="transform: rotate(-36deg);"></i>
                 </div>
              {!!$data['contactus']->contact_no!!}
            </h6>
          </div>
      </div>
    </div>
  </section>
  <section class="section12">
    <div class="block__inner">
      <div class="section12__left">
        <div class="map">
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3635.4459947456276!2d54.47674018925584!3d24.330952164052405!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3e5e407d9be87091%3A0xf66190993fcec2fc!2s26%20Al%20Tibr%20St%20-%20Abu%20Dhabi%20Industrial%20City%20-%20ICAD%20I%20-%20Abu%20Dhabi%20-%20United%20Arab%20Emirates!5e0!3m2!1sen!2s!4v1714467196788!5m2!1sen!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
      </div>
      <div class="section12__right">
        <h2>Reach Out To Us</h2>



        <form action="{{route('contactus.store')}}" id="contact_form" method="POST">
          <p class="success" style="color:green;text-align: center;"></p>
          <div class="section12__right_">
            <div class="section12__right_l">
              @csrf
              <div class="input_box mb-3">
                <input type="text" autocomplete="false" name="full_name" id="Name" required="required" placeholder="a" />
                <label for="Name">Full Name</label>
              </div>
              <div class="input_box mb-3">
                <input type="text" name="email" id="Email" required="required" placeholder="a" />
                <label for="Email">Email</label>
              </div>
              <div class="input_box mb-3">
                <input type="text" name="number" id="Number" required="required" placeholder="a" />
                <label for="Number">Number</label>
              </div>
              <div class="input_box mb-3">
                <input type="text" name="address" id="Address" required="required" placeholder="a" />
                <label for="Address">Address</label>
              </div>
            
             
            </div>
            <div class="section12__right_r">
              <div class="input_box mb-3">
                <input type="text" name="subject" id="Subject" required="required" placeholder="a" />
                <label for="Subject">Subject</label>
              </div>
              <div class="input_box">
                <textarea name="message" id="Message" placeholder="a"></textarea>
                <label for="Message">Message</label>
              </div>
            </div>
            <button type="submit" class="btn btn-secondary" id="add_form_btn"><span>Submit</span></button>
          </div>
        </form>
      </div>
    </div>
  </section>
</main>
<!-- /page content -->
@endsection
@section('scripts')
<script type="text/javascript">
  // code for add form
$('#add_form_btn').on('click', function(e) {
  //var data = $('#add_form').serializeArray();
  e.preventDefault();
  var data = $('#contact_form')[0];
  var formData = new FormData(data);
  $.ajax({
  data: formData,
  type: $('#contact_form').attr('method'),
  url: $('#contact_form').attr('action'),
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
    $('#contact_form')[0].reset();
  }
  }
  });
});

</script>     
@endsection