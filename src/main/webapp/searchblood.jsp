<%@page import="javax.print.attribute.standard.PrinterName"%>
<%@page import="com.entity.donate"%>
<%@page import="java.util.List"%>
<%@page import="com.connection.connection"%>
<%@page import="com.module.pro_module"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
                                        <li class="nav-item">
                                            <a class="nav-link" href="donate.jsp">Donate Blood</a>
                                        </li>
                                       
                                        <li class="nav-item active">
                                            <a class="nav-link" href="#gallery">Available blood</a>
                                        </li>
                                        
                                        <li class="nav-item ">
                                            <a class="nav-link" href="contact.jsp">Contact US</a>
                                        </li>
                                    </ul>
                                </div>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        
        
        
             <div class="container" style=" display: grid; display: grid;
  grid-template-columns: auto auto auto; margin-top: 50px;column-gap: 50px; row-gap: 50px; margin-bottom: 50px;">
        	<%
        	String bg = request.getParameter("bname");
        	System.out.print(bg);
	try{
		
		pro_module obj = new pro_module(connection.getConnection());
		List<donate>l=obj.searchblood(bg);
		System.out.print(l);
		 
		if(l.isEmpty()){
			%>
			 <div class="alert alert-danger alert-dismissible fade show" role="alert" align="center">
		        <strong>Blood is not Available</strong>
		        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <% 
		}
		else{
	for(donate r:l){
	%>
	
	
  <div class="grid-item" style="box-shadow: rgba(100,100, 111, 0.2) 0px 7px 29px 0px;">

          <!-- Card with an image on top -->
          <div class="card">
           <div class="card-body">
            <h4 class="card-text"><b><%=r.getBg() %></b></h4>
              <p class="card-title"><b>Donar Name:</b><%=r.getName() %></p>
             
               <p class="card-title"><b>Address:</b><%=r.getCity() %></p>
               
            </div>
          </div><!-- End Card with an image on top -->
</div>

<%}}
		
	}catch(Exception e){
		e.printStackTrace();
	}
        	

%>

        
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
</html>