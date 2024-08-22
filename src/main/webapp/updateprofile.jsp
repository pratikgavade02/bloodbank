<%@page import="com.entity.regentity"%>
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

</head>
<body>
<%
	String a = request.getParameter("id");
	int id =Integer.parseInt(a);
	try{
	pro_module obj = new pro_module(connection.getConnection());
	List<regentity>l=obj.profileup(id);
	for(regentity r:l){

%>
<div class="container p-5" style="max-width: 600px; padding: 50px;box-shadow: rgba(100,100, 111, 0.2) 0px 7px 29px 0px; margin-top:80px">
<form class="profileupdate" style="padding: 50px" action="profileupdate" method="post">
 				<div class="col-md-12 m-2">
                  <input type="text" class="form-control" placeholder="id" name="id" value="<%=r.getId()%>">
                </div>
                
                <div class="col-md-12 m-2">
                  <input type="text" class="form-control" placeholder="Your Name" name="name" value="<%=r.getName()%>">
                </div>
                <div class="col-md-12 m-2">
                  <input type="email" class="form-control" placeholder="id" name="email" value="<%=r.getEmail()%>">
                </div>
                 <div class="col-md-12 m-2">
                  <input type="text" class="form-control" placeholder="id" name="pass" value="<%=r.getPass()%>">
                </div>
                <div class="col-md-12 m-2">
                  <input type="text" class="form-control" placeholder="Address" name="add" value="<%=r.getAdd()%>">
                </div>
               
                <div class="col-md-12 m-2">
                  <input type="text" class="form-control" placeholder="City" name="city" value="<%=r.getCity()%>">
                </div>
                <div class="text-center m-2">
                  <button type="submit" class="btn btn-primary">Submit</button>
                  <button type="reset" class="btn btn-secondary">Reset</button>
                </div>
              </form><!-- End No Labels Form -->
              </div>

<%}}catch(Exception e){
	e.printStackTrace();
}


%>
</body>
</html>