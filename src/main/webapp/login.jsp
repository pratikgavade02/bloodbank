<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

</head>
<body class="bg-black" >
<img alt="" src="assets/images/gallery/g1.jpg" style="width: 100%;height: 760px; opacity: 50%;">
<div style="position: absolute; top: 10%; left:30%">


 <div class="container text-bg-light" style="max-width: 600px; padding: 50px;box-shadow: rgba(100,100, 111, 0.2) 0px 7px 29px 0px; margin-top:80px; border-radius: 20px;">
 <div align="center">
<img alt="" src="assets/images/logo.jpg">
<h2 class="mt-2">login</h2>
</div>

  <form class="row g-3 " style="padding: 50px" action="log" method="post" >
               
                 <div >
                   <input type="email" class="form-control" placeholder="Email" name="email">
                 </div>
                <div class="form-item">
                  <input type="password" class="form-control" placeholder="Password" name="pass">
                </div>
               
                <div class="text-center">
                  <button type="submit" class="btn btn-primary">Login</button> 
                </div>
              </form><!-- End No Labels Form -->
              <p>Clict heare to <a href="register.jsp" style="text-decoration: none;">Register</a></p>
</div>
  </div>
</body>
</html>