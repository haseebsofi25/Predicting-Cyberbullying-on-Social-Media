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
        <h2 style="margin:0px;">Server Home Page..!!</h2>
    </div>
    <div id="link2" style="width:30%;height:400px;border-left:1px solid graytext;float:right">
        <ul>
            <ul style="float:left;margin-left:60px;margin-top:10px;"><a href="ServerHome.jsp">Home</a></ul>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <ul style="float:left;margin-left:60px;margin-top:10px;"><a href="ViewUser.jsp">View User & Authorize</a></ul>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <ul style="float:left;margin-left:60px;margin-top:10px;"><a href="AddFilter.jsp">Add Filters</a></ul>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <ul style="float:left;margin-left:60px;margin-top:10px;"><a href="VAU_Comments.jsp">View All User Comments</a></ul>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <ul style="float:left;margin-left:60px;margin-top:10px;"><a href="VA_Posts.jsp">View All Posts</a></ul>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <ul style="float:left;margin-left:60px;margin-top:10px;"><a href="VFReq_Res.jsp">Friends Request & Response</a></ul>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <ul style="float:left;margin-left:60px;margin-top:10px;"><a href="VCB_Details.jsp">View Cyberbullying Details</a></ul>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <ul style="float:left;margin-left:60px;margin-top:10px;"><a href="VCB_Users.jsp">View Cyberbullying Users</a></ul>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <ul style="float:left;margin-left:60px;margin-top:10px;"><a href="VCB_CResult.jsp">Cyberbullying Chart Result</a></ul>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <ul style="float:left;margin-left:60px;margin-top:10px;"><a href="OSNServer.jsp">Logout</a></ul>
            
            
        </ul>
    </div>
    <h2 style="color:orange">View Cyber Bulling Users</h2>
    <table>
        <%
        try{
            String sql="select * from post";
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
             
               <%
         String sql1="select * from comment where pid='"+pid+"'";
           ResultSet r1=rr.getExecuteQuery(sql1);
            while(r1.next()){
                String comm=r1.getString("comment");
               String comby=r1.getString("commentby");
            String sq="select * from filter";
           ResultSet r11=rr.getExecuteQuery(sq);
            while(r11.next()){
                String word=r11.getString("word");
               
                
                if(comm.contains(word)){
                     String s="select * from filter where word='"+word+"'";
           ResultSet rd=rr.getExecuteQuery(s);
            while(rd.next()){
               
                String fil=rd.getString("filter");
                
                    %>
              <tr><th>Cyber Bulling User</th><td style="color:red"><%=comby%></td></tr>
 <tr><th>Cyber Comment</th><td style="color:red"><%=comm%></td></tr>
  <tr><th>Cyber Type</th><td style="color:red"><%=fil%></td></tr>          
<%
    }
                    
                    
                    
                }
                
                
            }    
                
                
            }
           %>
        
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