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
height:700px;
background-color:Snow;
margin-bottom: 50px;
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
    </div>
     <h2 style="color:orange">Cyber Comments</h2>
    <table>
       
        <%
        try{
            String sql="select * from post where email='"+username+"'";
               ResultSetReturnImpl rr=new ResultSetReturnImpl();
            ResultSet r=rr.getExecuteQuery(sql);
            while(r.next()){
                String pid=r.getString("id");
              String email1=r.getString("email");
               session.setAttribute("pid",r.getString("id"));
               session.setAttribute("title",r.getString("title"));
              %>
              <tr>
    <td colspan="2"><image src="view.jsp?email=<%=email1%>"</td>
  </tr>
              <tr><th>Post title</th><td><%=r.getString("title")%></td></tr>
              <tr><th>Post Date</th><td><%=r.getString("pdate")%></td></tr>
              <tr><th>Check CyberComments</th><td><a href="Check.jsp?pid=<%=pid%>"><input type="button" value="Check"></a></td></tr>
             
       
        <%
            }
        }catch(Exception e){
            System.out.println(e);
        }
        
        %>
            
        
        
    </table>
    
</div>
</div>
</center>
</body>
</html>