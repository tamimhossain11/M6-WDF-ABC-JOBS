<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<style>
.src {
   width: 400px;
  }
  
 body{
    margin-top:20px;
    background:#FAFAFA;   
}
.style {
    margin-top: 30px;
}

.people-nearby .google-maps{
  background: #f8f8f8;
  border-radius: 4px;
  border: 1px solid #f1f2f2;
  padding: 20px;
  margin-bottom: 20px;
}

.people-nearby .google-maps .map{
  height: 300px;
  width: 100%;
  border: none;
}

.people-nearby .nearby-user{
  padding: 20px 0;
  border-top: 1px solid #f1f2f2;
  border-bottom: 1px solid #f1f2f2;
  margin-bottom: 20px;
}

img.profile-photo-lg{
  height: 80px;
  width: 80px;
  border-radius: 50%;
}
</style>
<%@ include file="headbeforelogin.jsp" %>
<div class="container d-flex flex-column">
 <div class="heading mt-4">
        <h2 class="fw-semibold">Search People Here</h2>
 </div>
  <form:form action="searchUser" method="post" modelAttribute="bean" class="search-user-form d-flex">
        <form:input path="name" class="src" type="text" id="search-user" placeholder="Search" />
        <button type="submit" value="Search" class="btn btn-outline-secondary btn-search">
            <i   class="fa-solid fa-magnifying-glass"></i>
        </button>
    </form:form>
      <div class="style">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="people-nearby">
    <c:forEach var="tab" items="${data}">
    <div class="nearby-user">
                    <div class="row">
                      <div class="col-md-2 col-sm-2">
                        <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="user" class="profile-photo-lg">
                      </div>
                      <div class="col-md-7 col-sm-7">
             
                        <h5>${tab.contact}</h5>
                        <p>${tab.email}</p>
                        <p>${tab.name}</p>
                      </div>
                      <div class="col-md-3 col-sm-3">
                        <a href="viewProfileForAdmin/${tab.id}" class="btn btn-primary pull-right">View Profile</a>
                      </div>
                    </div>
                  </div>
                  </c:forEach>
                  </div>
                 </div>
                </div>
               </div>
              </div>    
              </div>
         </body>
       </html>