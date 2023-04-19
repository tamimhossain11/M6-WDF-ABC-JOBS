<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
       
        <title>Home</title>
         <%@include file="./base.jsp" %>
         <link href="resources/css/Home.css" rel="stylesheet">
      <style type="text/css">
      @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}

p {
    margin: 0;
}

.container {
    margin: 20px auto;
}

.box {
    background-color: #e1f5fe;
    padding: 30px;
    border-radius: 10px;
}

.row {
    background-color: #FFFF;
    border: 1px solid #ddd;
    border-radius: 10px;

}

.viewbox {
    margin-left: 0px;
    padding: 10px 20px;
}

.blue {
    color: #2196F3;
    font-size: 30px;
}

.card {
    margin: 20px 0;
    padding: 20px 30px;
}

.mx1 {
    margin: 0 1px;
}

.p-green {
    background-color: #34df1d;
}

.progress {
    height: 12px;
    position: relative;
    overflow: visible;
}

.h-dash {
    font-size: 25px;
}

.textmuted {
    color: #7a7a7a;
    font-size: 14px;
}

.fas {
    font-size: 20px;
    color: #636363;
    padding-right: 20px;
}

.box2 {
    background-color: white;
    border: 1px solid #ddd;
    border-radius: 10px;
    padding: 10px 20px;
}

.icon1 {
    font-size: 10px;
    position: absolute;
    background-color: #FFFF;
    width: 30px;
    height: 30px;
    border: 1px solid #ddd;
    border-radius: 50%;
    right: 0;
    top: -10px;
}

.icon2 {
    font-size: 10px;
    position: absolute;
    background-color: #FFFF;
    width: 30px;
    height: 30px;
    border: 1px solid #ddd;
    border-radius: 50%;
    left: 50%;
    top: -10px;
}

.far.fa-star {
    font-size: 10px;
    padding: 10px;
}

.fas.fa-check {
    font-size: 10px;
    padding: 10px;
    color: #237518;
}
      </style>   
    </head>
    <body id="page-top">
        <!-- Navigation-->
        <%@ include file="headafterlogin.jsp" %>
	
       <div class="container">
        <div class="card">
            <div class="d-flex pb-3">
                <p class="text-muted">Profile Strength:</p>
                <p class="ps-1">Intermediate</p>
            </div>
            <div class="progress mb-2">
                <div class="progress-bar p-green mx1" role="progressbar" style="width: 50%" aria-valuenow="20"
                    aria-valuemin="0" aria-valuemax="100">
                </div>
                <div class="icon1 d-flex align-items-center justify-content-center">
                    <span class="far fa-star "></span>
                </div>
                <div class="icon2 d-flex align-items-center justify-content-center">
                    <span class="fas fa-check "></span>
                </div>
            </div>
        </div>
        <div class="box">
            <p class="h-dash">Your Dashboard</p>
            <p class="fst-italic textmuted">Private to you</p>
            <div class="row mx-0 mt-2">
                <div class="col-md-4 p-0 border-end">
                    <div class="viewbox">
                        <p class="blue">11</p>
                        <p>Job Applied</p>
                    </div>

                </div>
                <div class="col-md-4 p-0 border-end">
                    <div class="viewbox">
                        <p class="blue">0</p>
                        <p>Jobs Posted</p>
                    </div>
                </div>
                <div class="col-md-4 p-0">
                    <div class="viewbox">
                        <p class="blue">1</p>
                        <p>Job Response</p>
                    </div>
                </div>
            </div>
            <div>
                <div class="box2 mt-3">
                    <div class="d-flex mt-2 ">
                        <span class="fas fa-users-cog mt-1"></span>
                        <div class="w-100 border-bottom">
                            <p class="">Manage my network</p>
                            <p class="textmuted mb-2">Access and Manage your connection events and interests all in once
                                place</p>
                        </div>
                    </div>
                    <div class="d-flex mt-2">
                        <span class="fas fa-money-bill-alt mt-1"></span>
                        <div class="w-100 border-bottom">
                            <p class="">Salary insights</p>
                            <p class="textmuted mb-2">See how your Salary compares to others in the communtiy</p>
                        </div>
                    </div>
                    <div class="d-flex mt-2">
                        <span class="fas fa-bookmark ms-0 mt-1"></span>
                        <div class="w-100 ps-2">
                            <p class="">My items</p>
                            <p class="textmuted mb-2">keep track of your jobs courses and article</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
     <!-- Featured Jobs -->
  <section id="featured-jobs" class="mt-5">
    <div class="container">
      <div class="heading">
        <h3>New Posted Jobs</h3>
      </div>
     <div class="card4" style="display:flex;cursor:pointer;">
     <div class="card" style="width: 18rem;padding: 10px;">
     <img class="card-img-top" src="resource/images/image01.png" alt="Card image cap">
    <div class="card-body">
    <p class="card-text">Glassdorr.com/Software developer/1300USD.</p>
  </div>
 </div>
 <div class="card" style="width: 18rem;padding: 10px;">
  <img class="card-img-top" src="resource/images/image02.png" alt="Card image cap">
  <div class="card-body">
    <p class="card-text">Qualifician.com/Back-end developer/1100USD</p>
  </div>
</div>
<div class="card" style="width: 18rem;padding: 10px;">
  <img class="card-img-top" src="resource/images/image03.jpeg" alt="Card image cap">
  <div class="card-body">
    <p class="card-text">Valeo.com/Full-stack developer/1500USD</p>
  </div>
</div>
<div class="card" style="width: 18rem;padding: 10px;">
     <img class="card-img-top" src="resource/images/image04.png" alt="Card image cap">
    <div class="card-body">
    <p class="card-text">Flutter.com/Web designer/1000USD</p>
  </div>
 </div>
 </div> 

    </div>
  </section>
    
        <!-- Footer-->
        <footer class="bg-light">
           
        </footer>
          <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- SimpleLightbox plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>
    
       
  
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>