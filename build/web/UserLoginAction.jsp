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
  
   String username=request.getParameter("uname");
   String pwd=request.getParameter("pwd");
   
   
   ResultSetReturnImpl rr=new ResultSetReturnImpl();
   UpdatePerform up=new UpdatePerform();
   
   String sql="select * from register where username='"+username+"' and password='"+pwd+"'";
   
   ResultSet r=rr.getExecuteQuery(sql);
   String status=null;
   if(r.next()){
      status=r.getString("status");
   
   if(status.equals("waiting")){
       %>
    <script type="text/javascript">
        window.alert("Registration Filed...!!");
        window.location="Register.jsp";
        </script>
    <% 
   }
      
      
          session.setAttribute("email",r.getString("email"));
                   session.setAttribute("username",username);
       %>
    <script type="text/javascript">
        window.alert("Login Success...!!");
        window.location="UserHome.jsp";
        </script>
    <%   
     
   }else{
 %>
    <script type="text/javascript">
        window.alert("Login Failed...!!");
        window.location="User.jsp";
        </script>
    <%
}
   
}catch(Exception e){
  System.out.println(e);
}


%>