<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <script type="text/javascript">
function myfunction(){
	
	var name=document.forms["myform"]["uname"].value;
	var email=document.forms["myform"]["email"].value;
	var city=document.forms["myform"]["city"].value;
	var bg=document.forms["myform"]["bg"].value;
	var age=document.forms["myform"]["age"].value;
	if(name=="" || email=="" || city=="" || bg=="" || age==""){
		alert("All Filds are requare")
		if(pattern.test(email)){
            alert("done")
        }
		else{
			alert("invalid Email")
		}
	}
	else{
		
		return true;
	}
	
}


</script>
<title>Insert title here</title>
<link rel="shortcut icon" href="assets/images/fav.png" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css?family=Merriweather&display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="assets/images/fav.jpg">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/fontawsom-all.min.css">
    <link rel="stylesheet" href="assets/plugins/grid-gallery/css/grid-gallery.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css" />
    
   
</head>


<body>
		

       
        <header class="continer-fluid ">
            <div class="header-top">
                <div class="container">
                    <div class="row col-det">
                        <div class="col-lg-6 d-none d-lg-block">
                            <ul class="ulleft">
                                <li>
                                    <i class="far fa-envelope"></i>
                                   blooddonate@gmail.com
                                    <span>|</span></li>
                                <li>
                                    <i class="far fa-clock"></i>
                                    Service Time : 12:AM</li>
                            </ul>
                        </div>
                       
                    </div>
                </div>
            </div>
            <div id="menu-jk" class="header-bottom">
                <div class="container">
                    <div class="row nav-row">
                        <div class="col-md-3 logo">
                            <img src="assets/images/logo.jpg" alt="">
                        </div>
                        <div class="col-md-9 nav-col">
                            <nav class="navbar navbar-expand-lg navbar-light">

                                <button
                                    class="navbar-toggler"
                                    type="button"
                                    data-toggle="collapse"
                                    data-target="#navbarNav"
                                    aria-controls="navbarNav"
                                    aria-expanded="false"
                                    aria-label="Toggle navigation">
                                    <span class="navbar-toggler-icon"></span>
                                </button>
                                <div class="collapse navbar-collapse" id="navbarNav">
                                    <ul class="navbar-nav">
                                        <li class="nav-item ">
                                            <a class="nav-link" href="index.jsp">Home
                                            </a>
                                        </li>
                                        <li class="nav-item active">
                                            <a class="nav-link" href="donate.jsp">Donate Blood</a>
                                        </li>
                                       
                                        <li class="nav-item">
                                            <a class="nav-link" href="availableb.jsp">Available Blood</a>
                                        </li>
                                         
                                        <li class="nav-item">
                                            <a class="nav-link" href="contact.jsp">Contact US</a>
                                        </li>
                                         <li class="nav-item">
                                            <a class="nav-link" href="BloodR.jsp">Blood Req</a>
                                        </li>
                                        
                                    </ul>
                                </div>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        
        
        
        
        <div class="container" style="align-items: center;padding: 30px; padding-left: 20%; ">		
         <div class="col-lg-6 col-md-12 footer-form ml-5 p-5 " style="box-shadow: rgba(100,100, 111, 0.2) 0px 7px 29px 0px; margin-top:80px; padding-left: 20%;">
                    <h3>Donate Blood</h3>
                    <div class="form-card">
                        <div class="form-title">
                            <div class="sucess" name="sucess"></div>
                        </div>
                        <form action="donate" method="post" name="myform" onsubmit="myfunction()">
                        <div class="form-body">
                            <input type="text" placeholder="Enter Name" class="form-control" name="uname" >
                            <input type="text" placeholder="Enter Email Address" class="form-control" name="email" id="email">
                            <input type="text" placeholder="Enter city" class="form-control" name="city" id="city"> 
                              <select class="form-control" name="bg" id="bg">
                            <option  >Open this select blood gorup</option>
                            <option value="A+">A+</option>
                            <option value="A-">A-</option>
                            <option value="B">B</option>
                            <option value="O" >O</option>
                            <option value="O+">O+</option>
                            </select>
                             <input type="text" placeholder="Enter age" class="form-control" name="age" id="age"> 
                            <button class="btn btn-sm btn-primary w-100" >Donate</button>
                        </div>
                        </form>
                    </div>
                </div>
            </div>
       
        
        
        
        
        
        
        
      <!--*************** Footer  Starts Here *************** -->
    <footer id="contact" class="container-fluid">
        <div class="container">
            
            <div class="row content-ro">
                <div class="col-lg-4 col-md-12 footer-contact">
                    <h2>Contact Informatins</h2>
                    <div class="address-row">
                        <div class="icon">
                            <i class="fas fa-map-marker-alt"></i>
                        </div>
                        <div class="detail">
                            <p>46-29 Indra Street, Southernbank, Tigaione, Toranto, 3006 Canada</p>
                        </div>
                    </div>
                    <div class="address-row">
                        <div class="icon">
                            <i class="far fa-envelope"></i>
                        </div>
                        <div class="detail">
                            <p>blooddonatation@gmail.com <br>blooddonatation@gmail.com</p>
                        </div>
                    </div>
                    <div class="address-row">
                        <div class="icon">
                            <i class="fas fa-phone"></i>
                        </div>
                        <div class="detail">
                            <p>+91 9834000610 <br> +91 8888888888</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 footer-links">
                   <div class="row no-margin mt-2">
                    <h2>Quick Links</h2>
                    <ul>
                        <li>Home</li>
                        <li>About Us</li>
                        <li>Contacts</li>
                        <li>Pricing</li>
                        <li>Gallery</li>
                        <li>eatures</li>

                    </ul>
                    </div>
                   

                </div>
                 <div class="col-lg-4 col-md-12 footer-form">
                   <img alt="" src="assets/images/logo.jpg">
                </div>
               
            </div>
            <div class="footer-copy">
                <div class="row">
                    <div class="col-lg-8 col-md-6">
                        <p>Copyright © <a href="https://www.smarteyeapps.com">blooddonate.com</a> | All right reserved.</p>
                    </div>
                    <div class="col-lg-4 col-md-6 socila-link">
                        <ul>
                            <li><a><i class="fab fa-github"></i></a></li>
                            <li><a><i class="fab fa-google-plus-g"></i></a></li>
                            <li><a><i class="fab fa-pinterest-p"></i></a></li>
                            <li><a><i class="fab fa-twitter"></i></a></li>
                            <li><a><i class="fab fa-facebook-f"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    
    

</body>


 <script src="assets/js/jquery-3.2.1.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/plugins/grid-gallery/js/grid-gallery.min.js"></script>
    <script src="assets/plugins/scroll-fixed/jquery-scrolltofixed-min.js"></script>
    <script src="assets/js/script.js"></script>
</html>
