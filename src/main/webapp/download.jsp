<%@page import="com.entity.regentity"%>
<%@page import="com.controler.reg"%>
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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="shortcut icon" href="assets/images/fav.png" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css?family=Merriweather&display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="assets/images/fav.jpg">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/fontawsom-all.min.css">
    <link rel="stylesheet" href="assets/plugins/grid-gallery/css/grid-gallery.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css" />
    <style type="text/css">
    
    .outer-border{
    width:800px; height:800px; padding:20px; text-align:center; border: 10px solid red;    margin-left: 21%;
}

.inner-dotted-border{
    width:750px; height:750px; padding:20px; text-align:center; border: 5px solid red;border-style: dotted;
}

.certification{
    font-size:50px; font-weight:bold;    color: #663ab7;
}

.certify{
    font-size:25px;
}

.name{
    font-size:30px;    color: green;
}

.fs-30{
    font-size:30px;
}
    </style>
</head>
<body>


<div class="outer-border mt-5">
<div class="inner-dotted-border">
<%
int id = Integer.parseInt(request.getParameter("id"));

try{
	pro_module obj = new pro_module(connection.getConnection());
	List<regentity>l = obj.certificate(id);
	for(regentity r:l){



%>
        <img alt="" src="assets/images/logo.jpg">
       <br><span class="certification">Certificate of Blood Donation</span><br>
       <span class="certify"><i>This is to certify that</i></span>
       <br><br>
       <span class="name"><b><%=r.getName() %></b></span><br/><br/>
       <span class="certify"><i>has Donate The Blood IN Our </i></span> <br/>
       <span class="fs-30"></span> Blood Donation Camp<br/><br/>
       <span class="fs-20">in city of <b><%=r.getCity() %></b></span> <br/>
       <span class="certify"><i>dated</i></span><br>
      
      <span class="fs-30"><%=r.getD_date() %></span>
      
      <div>
      <div>
       
       <span class="certify">in under supervision of </span><br>
      <span class="fs-30">Dr.Sravan Jagadannavar</span>
      <span class="certify">M.D.</span><br>
      </div>
      </div>
<%
	}}catch(Exception e){
		e.printStackTrace();
	}
%>
</div>
<button class="btn text-bg-primary mt-2 " onclick="window.print()">download</button>
</div>


		
		
		
		
 <script src="assets/js/jquery-3.2.1.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/plugins/grid-gallery/js/grid-gallery.min.js"></script>
    <script src="assets/plugins/scroll-fixed/jquery-scrolltofixed-min.js"></script>
    <script src="assets/js/script.js"></script>
</body>
</html>