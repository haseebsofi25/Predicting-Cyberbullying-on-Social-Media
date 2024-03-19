<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Predicting Cyberbullying</title>
<style type="text/css">
body{
margin:0px;
padding:0px;
}
#head{
background-color:DarkCyan;
width:100%;
height:100px;
border:1px solid DarkCyan;
}
#link{
background-color:Cyan;
width:100%;
height:50px;
}
ul{

margin:0px;
padding:0px;

list-style:none;
}
ul li {
text-align:center;
float:left;
width:100px;
margin-top:15px;

}
ul li a{
color:gold;
text-decoration:none;
font-weight:bold;
}
a:hover{
color:red;
}
#image{
width:76%;
height:320px;
border:1px solid Cyan;
background-color:Cyan;
}
#abstract{
width:76%;
height:500px;
background-color:Snow;
}
</style>
</head>
<body bgcolor="DarkSlateGray">
<div id="head">
<center>
<h2 style="width:80%;color:gold">Predicting Cyberbullying on Social Media in the Big Data Era Using Machine Learning Algorithms: Review of Literature and Open Challenges</h2>
</center>
</div>
<div id="link">
<center>
<ul>
<li><a href="index.html" style="margin-left:400px;">HOME</a></li>
<li><a href="User.jsp"style="margin-left:400px;">USER</a></li>
<li><a href="OSNServer.jsp"style="margin-left:400px;">OSNServer</a></li>
</ul>
</center>
</div>
<center>
<div id="image">
<image src="images/Capture.PNG"/>
</div>
<div id="abstract">

<image src="images/userlogin.jpg" style="float:left"/>

<div id="log" style="width:400px;height:200px;border:1px solid white;float:left">
<h2>WelCome To User Registration</h2>
<form action="RegAction.jsp" method="post">
<table>
<tr><th style="width:200px;height:50px;background-color:red;color:white;">Name:</th><td><input type="text" name="name" required=""></td></tr>
<tr><th style="width:200px;height:50px;background-color:red;color:white;">Email:</th><td><input type="email" name="email" required=""></td></tr>
<tr><th style="width:200px;height:50px;background-color:red;color:white;">Mobile:</th><td><input type="number" name="mobile" required=""></td></tr>
<tr><th style="width:200px;height:50px;background-color:red;color:white;">Address:</th><td><input type="text" name="address" required=""></td></tr>
<tr><th style="width:200px;height:50px;background-color:red;color:white;">UserName:</th><td><input type="text" name="uname" required=""></td></tr>
<tr><th style="width:200px;height:50px;background-color:red;color:white;">Password:</th><td><input type="password" name="pwd" required=""></td></tr>

<tr><th></th><td><input type="submit" value="REGISTER">
<input type="reset" value="RESET"></td></tr>
<tr></tr><tr></tr>
<tr><th>Already Have An Account:?</th><th><a href="User.jsp">Login Here</a></th></tr>
</table>
</form>

</div>
</div>
</center>
</body>
</html>