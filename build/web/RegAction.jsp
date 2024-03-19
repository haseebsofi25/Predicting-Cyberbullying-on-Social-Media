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
   String name=request.getParameter("name");
   String email=request.getParameter("email");
   String mobile=request.getParameter("mobile");
   String address=request.getParameter("address");
   String username=request.getParameter("uname");
   String pwd=request.getParameter("pwd");
   
   
   ResultSetReturnImpl rr=new ResultSetReturnImpl();
   UpdatePerform up=new UpdatePerform();
   
   String sql="select count(*) from register where email='"+email+"' and username='"+username+"'";
   String sql1="insert into register values('"+name+"','"+email+"','"+mobile+"','"+address+"','"+username+"','"+pwd+"','waiting')";
   
   ResultSet r=rr.getExecuteQuery(sql);
   int count=0;
   while(r.next()){
       count=r.getInt(1);
   }
   if(count==0){
      int i=up.getQuery(sql1);
      if(i>0){
          session.setAttribute("email",email);
                   session.setAttribute("username",username);
       %>
    <script type="text/javascript">
        window.alert("Registration Success...!!");
        window.location="User.jsp";
        </script>
    <%   
      }else{
          %>
    <script type="text/javascript">
        window.alert("Registration Filed...!!");
        window.location="Register.jsp";
        </script>
    <%
      }
   }else{
 %>
    <script type="text/javascript">
        window.alert("The User Already Exist...!!");
        window.location="Register.jsp";
        </script>
    <%
}
   
}catch(Exception e){
  System.out.println(e);
}


%>