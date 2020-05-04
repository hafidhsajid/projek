<?php
include('header.php');
?>

<div class="hero-wrap js-fullheight" style="background-image: url('images/bg_2.jpg');" data-stellar-background-ratio="0.5">
  <div class="overlay"></div>
  <div class="container">
    <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start" data-scrollax-parent="true">
      <div class="col-md-8 ftco-animate text-center text-md-left mb-5" data-scrollax=" properties: { translateY: '70%' }">
        <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-3"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Post a Job</span></p>
        <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Post a Job</h1>
      </div>
    </div>
  </div>
</div>

<div class="ftco-section bg-light">
  <div class="container">
    <div class="row">

      <div class="col-md-12 col-lg-8 mb-5">

        <form action="insertposisi.php" class="p-5 bg-white" method="POST">


          <div class="row form-group">
            <div class="col-md-12 mb-3 mb-md-0">
              <label class="font-weight-bold" for="fullname">Job Title</label>
              <input type="text" id="fullname" name="fullname" class="form-control" placeholder="eg. Professional UI/UX Designer">
            </div>
          </div>

          <div class="row form-group">
            <div class="col-md-12">
              <h3>Job Description</h3>
            </div>
            <div class="col-md-12 mb-3 mb-md-0">
              <textarea name="deskripsi" class="form-control" id="deskripsi" cols="30" rows="5"></textarea>
            </div>
          </div>

          <div class="row form-group">
            <div class="col-md-12">
              <input type="submit" name="submit" value="Post" class="btn btn-primary  py-2 px-5">
            </div>
          </div>


        </form>
      </div>

      <div class="col-lg-4">
        <div class="p-4 mb-3 bg-white">
          <h3 class="h5 text-black mb-3">Contact Info</h3>
          <p class="mb-0 font-weight-bold">Address</p>
          <p class="mb-4">203 Fake St. Mountain View, San Francisco, California, USA</p>

          <p class="mb-0 font-weight-bold">Phone</p>
          <p class="mb-4"><a href="#">+1 232 3235 324</a></p>

          <p class="mb-0 font-weight-bold">Email Address</p>
          <p class="mb-0"><a href="#"><span class="__cf_email__" data-cfemail="671e081215020a060e0b2703080a060e094904080a">[email&#160;protected]</span></a></p>

        </div>

        <div class="p-4 mb-3 bg-white">
          <h3 class="h5 text-black mb-3">More Info</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa ad iure porro mollitia architecto hic consequuntur. Distinctio nisi perferendis dolore, ipsa consectetur</p>
          <p><a href="#" class="btn btn-primary  py-2 px-4">Learn More</a></p>
        </div>
      </div>
    </div>
  </div>
</div>


<section class="ftco-section-parallax">
  <div class="parallax-img d-flex align-items-center">
    <div class="container">
      <div class="row d-flex justify-content-center">
        <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
          <h2>Subcribe to our Newsletter</h2>
          <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in</p>
          <div class="row d-flex justify-content-center mt-4 mb-4">
            <div class="col-md-8">
              <form action="#" class="subscribe-form">
                <div class="form-group d-flex">
                  <input type="text" class="form-control" placeholder="Enter email address">
                  <input type="submit" value="Subscribe" class="submit px-3">
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>




<?php include('footer.php') ?>