<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/848830b72b.js"crossorigin="anonymous"></script>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"/>

<link>
   
<meta charset="ISO-8859-1">
<title>Registration</title>
<%@include file="./base.jsp" %>
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

<div class="card" style="height: 60rem; ">
 
  <c:if test="${success != null}">
 <div  style="color: green;font-size: 20px;" role="alert"><c:out value="${success}"/></div>
</c:if>
 
  
<section class="vh-100" style="background-color: #eee;">
    <div class="h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="">
          <div class="card text-black">
            <div class=" p-md-5">
              <div class="row justify-content-center">
                <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">
  
                  <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>
  					<div id ="error"></div>
              <div class="container mt-5 mb-5">
       <form action="registration" method="post" id="form" onsubmit="return checkValidation()">
      <div class="row justify-content-left">
            <div class="col-lg-5 col-md-8">
                <div class="d-flex flex-column regis-wrapper">  
                   <!-- First Name -->
                  <div class="form-group"style="width: 36rem;height:4rem">
                    <label for="fristname">Name</label>
                    <input type="text" name="name"class="form-control" id="name" required/>
                  </div>

                  <!-- Email -->
                  <div class="form-group"style="width: 36rem;height:4rem">
                    <label for="email">Email</label>
                    <input type="text" name="email"class="form-control" id="email" required/>
                  </div>
                  
                   <!-- phone -->
                  <div class="form-group" style="width: 36rem;height:4rem">
                    <label for="phone">Phone</label>
                    <input type="number" name="contact"class="form-control" id="contact" required/>
                  </div>
                 
                
                  <!-- Password -->
                  <div class="form-group" style="width: 36rem;height:4rem">
                    <label for="password">Password</label>
                    <input type="password" name="password"class="form-control" id="pass" required/>
                  </div>
                 
                  
                  <!-- Password -->
                  <div class="form-group" style="width: 36rem;height:4rem">
                    <label for="repassword">Repeat Password</label>
                    <input type="password" name="re_pass"  class="form-control" id="re_pass" required/>
                  </div>
                 
                    </div>
					 </div>
                  </div>
                  <button type="submit" class="btn btn-primary mt-4">Register</button>
                     </form>
                   
             	  </div>
             	  </div>           
                	<div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">
                   <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp"
                  class="img-fluid" alt="Sample image">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</div>

 

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-eMNCOe7tC1doHpGoWe/6oMVemdAVTMs2xqW4mwXrXsW0L84Iytr2wi5v2QjrP/xp" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js" integrity="sha384-cn7l7gDp0eyniUwwAZgrzD06kc/tftFf19TOAs2zVinnD/C7E91j9yyk5//jjpt/" crossorigin="anonymous"></script>

</body>
</html>