<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/848830b72b.js"crossorigin="anonymous"></script>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"/>
<link>

</head>
<body>
<nav class="navbar navbar-expand-lg text-bg-light sticky-top">
    <div class="container">
      <a class="navbar-brand fw-bold fs-3" href="<%= request.getContextPath() %>">ABC Jobs</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse text-center" id="navbarNav">
        <ul class="navbar-nav ms-auto me-0 me-lg-auto fw-semibold text-uppercase">
          <li class="nav-item me-0 me-lg-3">
            <a class="nav-link" href="<%= request.getContextPath() %>"><i class="fa-solid fa-house"></i> Home</a>
          </li>
          <li class="nav-item me-0 me-lg-3">
            <a class="nav-link" href="login"><i class="fa-solid fa-user-group"></i> People</a>
          </li>
          <li class="nav-item me-0 me-lg-3">
            <a class="nav-link" href="login"><i class="fa-solid fa-briefcase"></i> Jobs</a>
          </li>
        </ul>
        <div class="nav-button d-flex flex-column flex-lg-row">
          <a href="login" class="btn btn-outline-secondary me-0 me-lg-3 mb-3 mb-lg-0">Login</a>
          <a href="registration" class="btn btn-primary mb-3 mb-lg-0">Register</a>
        </div>
      </div>
    </div>
  </nav>
<section class="vh-100">
    <div class="container-fluid h-custom">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-md-9 col-lg-6 col-xl-5">
          <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
            class="img-fluid" alt="Sample image">
        </div>
        <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
            <div class="divider d-flex align-items-center my-4">
                <h1>Growth Is In Our DNA</h1>
              </div>
                        <div class="row gx-4 gx-lg-5 justify-content-center">
                        <div class="col-lg-8 col-xl-6 text-center">
                      
                        <hr class="divider" />
                        <p class="text-muted mb-5">For any type of query about our company,job you can contact with us.We are always with you</p>
                    </div>
                </div>
          <form id="contactForm" data-sb-form-api-token="API_TOKEN">
                            <!-- Name input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="name" type="text" placeholder="Enter your name..." data-sb-validations="required" />
                                <label for="name">Full name</label>
                                <div class="invalid-feedback" data-sb-feedback="name:required">A name is required.</div>
                            </div>
                            <!-- Email address input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="email" type="email" placeholder="name@example.com" data-sb-validations="required,email" />
                                <label for="email">Email address</label>
                                <div class="invalid-feedback" data-sb-feedback="email:required">An email is required.</div>
                                <div class="invalid-feedback" data-sb-feedback="email:email">Email is not valid.</div>
                            </div>
                            <!-- Phone number input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="phone" type="tel" placeholder="(123) 456-7890" data-sb-validations="required" />
                                <label for="phone">Phone number</label>
                                <div class="invalid-feedback" data-sb-feedback="phone:required">A phone number is required.</div>
                            </div>
                            <!-- Message input-->
                            <div class="form-floating mb-3">
                                <textarea class="form-control" id="message" type="text" placeholder="Enter your message here..." style="height: 10rem" data-sb-validations="required"></textarea>
                                <label for="message">Message</label>
                                <div class="invalid-feedback" data-sb-feedback="message:required">A message is required.</div>
                            </div>
                        
                            <div class="d-none" id="submitSuccessMessage">
                                <div class="text-center mb-3">
                                    <div class="fw-bolder">Form submission successful!</div>
                                    To activate this form, sign up at
                                    <br />
                                    <a href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
                                </div>
                            </div>
                          
                            <div class="d-none" id="submitErrorMessage"><div class="text-center text-danger mb-3">Error sending message!</div></div>
                            <!-- Submit Button-->
                            <div class="d-grid"><button class="btn btn-primary btn-xl disabled" id="submitButton" type="submit">Submit</button></div>
                        </form>
        </div>
      </div>
    </div>
  </section>

<!-- Topics -->
<section id="topics" class="mt-5">
    <div class="container">
      <div class="heading">
        <h3>Topics you may interested in</h3>
      </div>
      <div class="d-flex flex-wrap mt-3">
        <div class="topic-tag me-3 mb-3">
          <span class="btn">Work from home</span>
           <span class="btn">Apprenticeship</span>
            <span class="btn">Outsourcing</span>
             <span class="btn">Learning</span>
              <span class="btn">Remote Job</span>
               <span class="btn">REspect from world wide</span>
        </div>
      </div>
    </div>
  </section>
  
  <!-- Featured Jobs -->
  <section id="featured-jobs" class="mt-5">
    <div class="container">
      <div class="heading">
        <h3>Featured Jobs</h3>
      </div>
     <div class="card4" style="display:flex;cursor:pointer;">
     <div class="card" style="width: 18rem;padding: 10px;">
  <a href="login">    <img class="card-img-top" src="resource/images/image01.png" alt="Card image cap"></a>

    <div class="card-body">
    <p class="card-text">Glassdorr.com/Software developer/1300USD.</p>
  </div>
 </div>
 <div class="card" style="width: 18rem;padding: 10px;">
<a href="login">   <img class="card-img-top" src="resource/images/image02.png" alt="Card image cap"></a>
  <div class="card-body">
    <p class="card-text">Qualifician.com/Back-end developer/1100USD</p>
  </div>
</div>
<div class="card" style="width: 18rem;padding: 10px;">
<a href="login">   <img class="card-img-top" src="resource/images/image03.jpeg" alt="Card image cap"></a>
  <div class="card-body">
    <p class="card-text">Valeo.com/Full-stack developer/1500USD</p>
  </div>
</div>

<div class="card" style="width: 18rem;padding: 10px;">
    <a href="login">  <img class="card-img-top" src="resource/images/image04.png" alt="Card image cap"></a>
    
    <div class="card-body">
    <p class="card-text">Flutter.com/Web designer/1000USD</p>
  </div>
 </div>
 </div> 

    </div>
  </section>
  <!-- Hero -->
<div class="p-5 text-center bg-image rounded-3" style="background-image:url(../../images/image00.png);height: 400px;">
<div class="mask" style="background-color: rgba(0, 0, 0, 0.6);">
<div class="d-flex justify-content-center align-items-center h-100">
  <div class="text-white">
    <h1 class="mb-3">Lets get the people you like to engage.</h1>
    <h4 class="mb-3">Here will be your journey start.Lets bring you a better and easy world with us</h4>
    <a class="btn btn-outline-light btn-lg" href="#!" role="button">Start Tour</a>
  </div>
</div>
</div>
</div>
</body>

 
 <!-- Footer -->
<footer class="text-center text-lg-start bg-light text-muted">
  <!-- Section: Social media -->
  <section class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">
    <!-- Left -->
    <div class="me-5 d-none d-lg-block">
      <span>Get connected with us on social networks:</span>
    </div>
    <!-- Left -->

    <!-- Right -->
    <div>
      <a href="" class="me-4 text-reset">
        <i class="fab fa-facebook-f"></i>
      </a>
      <a href="" class="me-4 text-reset">
        <i class="fab fa-twitter"></i>
      </a>
      <a href="" class="me-4 text-reset">
        <i class="fab fa-google"></i>
      </a>
      <a href="" class="me-4 text-reset">
        <i class="fab fa-instagram"></i>
      </a>
      <a href="" class="me-4 text-reset">
        <i class="fab fa-linkedin"></i>
      </a>
      <a href="" class="me-4 text-reset">
        <i class="fab fa-github"></i>
      </a>
    </div>
    <!-- Right -->
  </section>
  <!-- Section: Social media -->

  <!-- Section: Links  -->
  <section class="">
    <div class="container text-center text-md-start mt-5">
      <!-- Grid row -->
      <div class="row mt-3">
        <!-- Grid column -->
        <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
          <!-- Content -->
          <h6 class="text-uppercase fw-bold mb-4">
            <i class="fas fa-gem me-3"></i>ABC Jobs pte.
          </h6>
          <p>
            Lorem ipsum dolor sit amet consectetur adipisicing elit.
            Delectus quo repudiandae cumque nulla velit sed distinctio accusantium alias optio dolor?
          </p>
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
          <!-- Links -->
          <h6 class="text-uppercase fw-bold mb-4">
            Products
          </h6>
          <p>
            <a href="#!" class="text-reset">Angular</a>
          </p>
          <p>
            <a href="#!" class="text-reset">React</a>
          </p>
          <p>
            <a href="#!" class="text-reset">Vue</a>
          </p>
          <p>
            <a href="#!" class="text-reset">Laravel</a>
          </p>
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
          <!-- Links -->
          <h6 class="text-uppercase fw-bold mb-4">
            Useful links
          </h6>
          <p>
            <a href="#!" class="text-reset">Pricing</a>
          </p>
          <p>
            <a href="#!" class="text-reset">Settings</a>
          </p>
          <p>
            <a href="#!" class="text-reset">Orders</a>
          </p>
          <p>
            <a href="#!" class="text-reset">Help</a>
          </p>
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
          <!-- Links -->
          <h6 class="text-uppercase fw-bold mb-4">
            Contact
          </h6>
          <p><i class="fas fa-home me-3"></i> New York, NY 10012, US</p>
          <p>
            <i class="fas fa-envelope me-3"></i>
            info@example.com
          </p>
          <p><i class="fas fa-phone me-3"></i> + 01 234 567 88</p>
          <p><i class="fas fa-print me-3"></i> + 01 234 567 89</p>
        </div>
        <!-- Grid column -->
      </div>
      <!-- Grid row -->
    </div>
  </section>
  <!-- Section: Links  -->

  <!-- Copyright -->
  <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
    © 2021 Copyright:
    <a class="text-reset fw-bold" href="https://mdbootstrap.com/">AbC JOBS PTE</a>
  </div>
  <!-- Copyright -->
</footer>
<!-- Footer -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>

</html>
