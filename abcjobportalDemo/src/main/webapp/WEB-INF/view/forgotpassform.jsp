<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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


	<div class="container padding-bottom-3x mb-2 mt-5">
    <div class="row justify-content-center">
      <div class="col-lg-8 col-md-10">
        <div class="forgot">
            
            <h2>Forgot your password?</h2>
        <p>Change your password in three easy steps. This will help you to secure your password!</p>
        <ol class="list-unstyled">
          <li><span class="text-primary text-medium">1. </span>Enter your email address below.</li>
          <li><span class="text-primary text-medium">2. </span>Our system will send you a temporary link</li>
          <li><span class="text-primary text-medium">3. </span>Use the link to reset your password</li>
        </ol>

        </div>	
      <form action="emailConfirm" method="post" id="formValidation">

    <div class="form-group">
    <label for="exampleInputEmail1" class="font-weight-bold">Email address</label>
    <input type="email" class="form-control" name="email" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" required>
      </div>

<div class="container text-center mb-3">
  <input type="submit" value="Reset Password"  onclick="submitData();" class="btn btn-primary mt-2">
 </div>
</form>
      </div>
    </div>
  </div>  



<%@ include file="footer.jsp" %>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>
    <script type="text/javascript">
</body>
</html>