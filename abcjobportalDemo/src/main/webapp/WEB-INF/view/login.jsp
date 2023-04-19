<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
  
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Login</title>
<script src="https://kit.fontawesome.com/848830b72b.js"crossorigin="anonymous"></script>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"/>
 
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
</head>
<div class="container mt-5">
<div class="card" style="height: 40rem;">
 
  <c:if test="${success != null}">
 <div  style="color: green;font-size: 20px;" role="alert"><c:out value="${success}"/></div>
</c:if>
<c:if test="${error != null}">
 <div  style="color: green;font-size: 20px;" role="alert"><c:out value="${error}"/></div>
</c:if>
 
    
<main>
<section class="vh-100">
    <div class="container py-5 h-100">
      <div class="row d-flex align-items-center justify-content-center h-100">
        <div class="col-md-8 col-lg-7 col-xl-6">
          <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.svg"
            class="img-fluid" alt="Phone image">
        </div>
        <div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">
            <h1>Log in here</h1>
            	<form action="login" method="post"
									class="mt-4 d-flex flex-column" id="form">
         
            <!-- Email input -->
            <div class="form-outline mb-4">
              <input type="text" id="email" name="email" class="form-control form-control-lg" />
              <label class="form-label" for="form1Example13">Email address</label>
            </div>
  
            <!-- Password input -->
            <div class="form-outline mb-4">
              <input type="password" id="password" name="password" class="form-control form-control-lg"/>
              <label class="form-label" for="form1Example23">Password</label>
            </div>
  
            <div class="d-flex justify-content-around align-items-center mb-4">
              <!-- Checkbox -->
              <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="form1Example3" checked />
                <label class="form-check-label" for="form1Example3"> Remember me </label>
              <div class="forgot-password mt-3 mb-3 text-end">
                    <a class="text-decoration-none" href="forgotpassform">Forgot Password?</a>
                  </div>
  
            <!-- Submit button -->
           <button type="submit" class="btn btn-primary btn-lg btn-block" name="signin" id="signin">Sign in</button>
  
            <div class="divider d-flex align-items-center my-4">
              <p class="text-center fw-bold mx-3 mb-0 text-muted">OR</p>
            </div>
  
            <a class="btn btn-primary btn-lg btn-block" style="background-color: #3b5998" href="#!"
              role="button">
              <i class="fab fa-facebook-f me-2"></i>Continue with Facebook
            </a>
            <a class="btn btn-primary btn-lg btn-block" style="background-color: #55acee" href="#!"
              role="button">
              <i class="fab fa-twitter me-2"></i>Continue with Twitter</a>
  
          </form>
        </div>
      </div>
    </div>
  </section>
      </main>

   	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>