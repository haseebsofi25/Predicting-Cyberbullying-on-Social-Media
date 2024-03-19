<%-- 
    Document   : Authorize
    Created on : Dec 14, 2019, 2:06:26 PM
    Author     : Acer
--%>

<%@page import="com.update.UpdatePerform"%>
<%@page import="com.resultset.ResultSetReturnImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String email=request.getParameter("email");
try{
  UpdatePerform rr=new UpdatePerform();
 String sql="update register set status='Authorized' where email='"+email+"'";
    int i=rr.getQuery(sql);
    if(i>0){
       %>
    <script type="text/javascript">
        window.alert("User Authorization Success...!!");
        window.location="ViewUser.jsp";
        </script>
    <%     
    }else{
%>
    <script type="text/javascript">
        window.alert("User Authorization Failed...!!");
        window.location="ViewUser.jsp";
        </script>
    <% 
}
}catch(Exception e){
   System.out.println(e); 
}

%>
