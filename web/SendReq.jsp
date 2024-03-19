<%-- 
    Document   : RegAction
    Created on : Dec 14, 2019, 12:16:44 PM
    Author     : Acer
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.resultset.ResultSetReturnImpl"%>
<%@page import="com.update.UpdatePerform"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{
   String semail=(String)session.getAttribute("email");
    String sname=(String)session.getAttribute("username");
   String email=request.getParameter("email");

   String username=request.getParameter("uname");

   
   
   ResultSetReturnImpl rr=new ResultSetReturnImpl();
   UpdatePerform up=new UpdatePerform();
   
   String sql="select count(*) from request where semail='"+email+"' and sname='"+username+"' or remail='"+email+"'and runame='"+username+"'";
   String sql1="insert into request values('"+semail+"','"+sname+"','"+email+"','"+username+"',now(),'waiting')";
   
   ResultSet r=rr.getExecuteQuery(sql);
   int count=0;
   while(r.next()){
       count=r.getInt(1);
       System.out.println(count);
   }
   if(count==0){
      int i=up.getQuery(sql1);
      if(i>0){
          
       %>
    <script type="text/javascript">
        window.alert("Request Send Successfully...!!");
        window.location="SearchFriends.jsp";
        </script>
    <%   
      }else{
          %>
    <script type="text/javascript">
        window.alert("Request Send Filed...!!");
        window.location="SearchFriends.jsp";
        </script>
    <%
      }
   }else{
 %>
    <script type="text/javascript">
        window.alert("The User Already Send Request...!!");
        window.location="SearchFriends.jsp";
        </script>
    <%
}
   
}catch(Exception e){
  System.out.println(e);
}


%>