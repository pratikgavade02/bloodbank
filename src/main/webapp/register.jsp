<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="assets/images/fav.png" type="image/x-icon">
    <script type="text/javascript">
    function myfunction(){
    	
    	var name=document.forms["myform"]["name"].value;
    	var email=document.forms["myform"]["email"].value;
    	var pass=document.forms["myform"]["pass"].value;
    	var add =document.forms["myform"]["add"].value;
    	var city=document.forms["myform"]["city"].value;
    	
    	if(name=="" || email=="" || pass=="" || add=="" ||city=="" ){
    		alert("All Filds are requare")
    		return false;
    	}
    	else if(pass.length>4 || pass.length<4){
    		alert("pass word must be 4 caractor");
    		return false;
    		
    	}
    	
    	else{
    		
    		return true;
    	
    	}
    }

    </script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body class="bg-black">

  
  <img alt="" src="assets/images/gallery/g2.jpg" style="width: 100%;height: 760px; opacity: 50%;">
  <div style="position: absolute; top: 10%; left:30%">
  <div class="container text-bg-light" style="max-width: 600px; padding: 40px;box-shadow: rgba(100,100, 111, 0.2) 0px 7px 29px 0px; margin-top:80px;border-radius: 20px; margin-bottom: 50px;">
 <div align="center">
<img alt="" src="assets/images/logo.jpg">
<h2 class="mt-2">Registration</h2>
</div>

<form class="row g-3" style="padding: 50px" action="reg" method="post"  name="myform" onsubmit="myfunction()">
                <div class="col-md-12">
                  <input type="text" class="form-control" placeholder="Your Name" name="name">
                </div>
                <div class="col-md-6">
                  <input type="email" class="form-control" placeholder="Email" name="email">
                </div>
                <div class="col-md-6">
                  <input type="password" class="form-control" placeholder="Password" name="pass">
                </div>
                <div class="col-12">
                  <input type="text" class="form-control" placeholder="Address" name="add">
                </div>
                <div class="col-md-6">
                  <input type="text" class="form-control" placeholder="City" name="city">
                </div>
                
               
                <div class="text-center">
                  <button type="submit" class="btn btn-primary">Submit</button>
                  <button type="reset" class="btn btn-secondary">Reset</button>
                </div>
              </form><!-- End No Labels Form -->
</div>
  </div>
  
</body>
</html>