<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@page isELIgnored="false" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>edit</title>
    <link href="resources/css/UserProfile.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" />
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page isELIgnored="false"%>
</head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<body>
    <%@ include file="headafterlogin.jsp" %>
        <div class="d-flex flex-wrap align-items-center justify-content-center mx-auto pt-3 pb-5 mb-5 rounded bg-crm"
            style="width: 50%">
            <form class="form-detail" action="${pageContext.request.contextPath}/update" method="POST" modelAttribute="user">
                <div class="row justify-content-center">
                    <div class="col-lg-12 col-md-8">
                        <div class="d-flex flex-column regis-wrapper">
                            <div class="heading">
                                <h2>Edit Profile</h2>
                            </div>
                            </div>
                            <input type="text" class="form-control" value="${user.id }" name="id" />
                            <!-- Full Name -->
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="name">Name</label>
                                        	<input type="text" name="name" class="form-control"placeholder="Name" value="${user.name}" path="${user.name}"required />
                                    </div>
                                </div>
                            <div class="form-group">
                                <label for="first_name">Email</label>
							    <input type="text" name="email" class="form-control" placeholder="Email" value="${user.email}" path="${user.email}"required />
                            </div>
                            <!-- Mobile -->
                            <div class="form-group">
                                <label for="country">Mobile</label>
                                	<input type="text" name="contact" class="form-control" placeholder="Phone" value="${user.contact}" path="${user.contact}"required />
                            </div>
                            <button type="submit" class="btn btn-primary mt-4" value="save">Save
                                Profile</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <%@ include file="footer.jsp" %>
</body>

</html>               