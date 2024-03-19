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
 String sql="update request set status='Accepted' where semail='"+email+"'";
    int i=rr.getQuery(sql);
   if(i>0){

       %>
    <script type="text/javascript">
        window.alert("Request Accepted Success...!!");
        window.location="Fr_Requests.jsp";
        </script>
    <%     
    }else{
%>
    <script type="text/javascript">
        window.alert("Accepting Request Failed...!!");
        window.location="Fr_Requests.jsp";
        </script>
    <% 
}
}catch(Exception e){
   System.out.println(e); 
}

%>
