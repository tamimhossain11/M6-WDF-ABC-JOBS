
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
    <title>thankyou</title>
<script src="https://kit.fontawesome.com/848830b72b.js"crossorigin="anonymous"></script>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"/>

<link href="assets/css/style.css" rel="stylesheet" />
    <%@include file="./base.jsp" %>
  
  

<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<body>
<div class="nav-option">
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
            <a class="nav-link" href="search-user"><i class="fa-solid fa-user-group"></i> People</a>
          </li>
          <li class="nav-item me-0 me-lg-3">
            <a class="nav-link" href="jobs"><i class="fa-solid fa-briefcase"></i> Jobs</a>
          </li>
        </ul>
        <div class="nav-button d-flex flex-column flex-lg-row">
          <a href="login" class="btn btn-outline-secondary me-0 me-lg-3 mb-3 mb-lg-0">Login</a>
          <a href="registration" class="btn btn-primary mb-3 mb-lg-0">Register</a>
        </div>
      </div>
    </div>
  </nav>
<section id="registration-confirmation" class="mt-5">
  <div class="container d-flex justify-content-center">
    <div class="confirmation d-flex flex-column text-center">
      <i class="fa-solid fa-check text-success"></i>
      <h2 class="fw-semibold">Thank You For Your Registration</h2>
      <p class="text-secondary">
        We have send you an confirmation email to</br>
        <div  style="color:blue;font-size:160%;">
       <c:out value="${user.email}"></c:out></h6>
       </div></br> Please confirm your email address to activate your account
      </p>
      <div class="wrapper">
        <a href="login" class="btn btn-primary mt-3">CONTINUE</a>
      </div>
    </div>
  </div>
</section>
<%@ include file="footer.jsp" %>

</body>
</html>