<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.resultset.ResultSetReturnImpl"%>
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
height:auto;
background-color:Snow;
}
</style>
<link href="table.css" rel="stylesheet">
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
    <div id="name" style="width:100%;height:40px;border-bottom:1px solid graytext;">
        <%String email=(String)session.getAttribute("email");
        String username=(String)session.getAttribute("username");%>
        <h2 style="margin:0px;"> WelCome To User Home Page...!! <%=username%></h2>
    </div>
    <div id="link2" style="width:35%;height:400px;border-left:1px solid graytext;float:right">
        <ul>
            <ul style="float:left;margin-left:150px;margin-top:10px;"><a href="UserHome.jsp">Home</a></ul>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <ul style="float:left;margin-left:150px;margin-top:10px;"><a href="MyProfile.jsp">My Profile</a></ul>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <ul style="float:left;margin-left:150px;margin-top:10px;"><a href="SearchFriends.jsp">Search Friends</a></ul>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <ul style="float:left;margin-left:150px;margin-top:10px;"><a href="Fr_Requests.jsp">Friends Request</a></ul>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <ul style="float:left;margin-left:150px;margin-top:10px;"><a href="Add_Posts.jsp">Add Posts</a></ul>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <ul style="float:left;margin-left:150px;margin-top:10px;"><a href="MyPost.jsp">My Post</a></ul>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <ul style="float:left;margin-left:150px;margin-top:10px;"><a href="VF_Post.jsp">View Friends Post</a></ul>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <ul style="float:left;margin-left:150px;margin-top:10px;"><a href="CyberComments.jsp">My Cyber Comments</a></ul>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <ul style="float:left;margin-left:150px;margin-top:10px;"><a href="User.jsp">Logout</a></ul>
            
            
        </ul>
        <%
        String pattern = "MM-dd-yyyy";
SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
String date = simpleDateFormat.format(new Date());
System.out.println(date);
        %>
    </div>
    <h3 style="color:orange">Add Post Here</h3>
    <form action="AddPost" method="post" enctype="multipart/form-data">
    <table>
<tr><th style="width:200px;height:50px;background-color:red;color:white;">Post Title</th><td><input type="text" name="title" required=""></td></tr>
<tr><th style="width:200px;height:50px;background-color:red;color:white;">Post Date</th><td><input type="text" name="pdate" required="" value="<%=date%>" readonly ></td></tr>
<tr><th style="width:200px;height:50px;background-color:red;color:white;">Post Uses</th><td><input type="text" name="puses" required=""></td></tr>

<tr><th style="width:200px;height:50px;background-color:red;color:white;">Post Description</th><td><textarea cols="20" rows="10" name="desc"></textarea></td></tr>

<tr><th style="width:200px;height:50px;background-color:red;color:white;">Select Image</th><td><input type="file" name="emage" required=""></td></tr>

<tr><th></th><td><input type="submit" value="POST">
<input type="reset" value="RESET"></td></tr>
<tr></tr><tr></tr>

</table>
    
        
        
    </table>
    
</div>
</div>
</center>
</body>
</html>