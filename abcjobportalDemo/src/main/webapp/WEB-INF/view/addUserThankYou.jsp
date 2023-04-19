<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/848830b72b.js"crossorigin="anonymous"></script>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"/>

<link href="assets/css/style.css" rel="stylesheet" />
    <%@include file="./base.jsp" %>
  
  

</head>
<body>
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
        <a href="viewUser" class="btn btn-primary mt-3">CONTINUE</a>
      </div>
    </div>
  </div>
</section>

</body>
</html>