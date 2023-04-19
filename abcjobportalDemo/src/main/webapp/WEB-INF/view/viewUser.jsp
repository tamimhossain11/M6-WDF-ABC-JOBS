<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
   <title>User Management Data Table</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script> 
 <%@include file="./base.jsp" %>
</head>
<body>  
<header> <%@ include file="headbeforelogin.jsp" %></header>    
	<p>
 <a> <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
   Add User <i class="material-icons">add</i></a>
  </button>
</p>
<div class="collapse" id="collapseExample">
  <div class="card card-body">
   <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
<section class="vh-100" style="background-color: #eee;">
    <div class="h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="">
          <div class="card text-black">
            <div class=" p-md-5">
              <div class="row justify-content-center">
                <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">
  
                  <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Add an user</p>
  					<div id ="error"></div>
              <div class="container mt-5 mb-5">
       <form action="adduser" method="post" id="form" onsubmit="return checkValidation()">
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
                    <input type="repassword" name="re_pass"  class="form-control" id="re_pass" required/>
                  </div>
                 
                    </div>
					 </div>
                  </div>
                  <button type="submit" class="btn btn-success mt-4">Register</button>
                     </form>
                   
             	  </div>
             	  </div>           
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  </div>
</div>
  
<table border="2" width="100%" bg-dark; style="pdaaing-left="10px"">
<tr>
<th>User id</th>
<th>User name</th>
<th>User email</th>
<th>User contact</th>
<th>User password</th>
<th>Action</th>
</tr>

		<c:forEach items="${data}" var="u">
				<tr >
					<td>${u.id}</td>
					<td>${u.contact}</td>
					<td>${u.email}</td>
					<td>${u.name}</td>
					<td>${u.password}</td>
					<td>
					 <form action="login" method="post">

					<a href="delete?id=${u.id}" title="Delete" data-toggle="tooltip" type="submit"
						style="font-size: 18px;" value="delete"
						class="btn btn-outline-secondary me-0 me-lg-3 mb-3 mb-lg-0"
						onclick="return confirm('Are you sure delete it?')"><i
						class="material-icons">delete_forever</i></a>
						 </form>
						<button class="btn btn-outline-secondary me-0 me-lg-3 mb-3 mb-lg-0" style="font-size: 18px;"><a href="editprofile"><i class="material-icons">create</i><a></button> </td>		
				</tr>
					
			</c:forEach>
</table>
</body>
</html>