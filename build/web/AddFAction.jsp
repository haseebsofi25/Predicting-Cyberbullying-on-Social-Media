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
   String filter=request.getParameter("filter");
   String word=request.getParameter("word");
  
   
   ResultSetReturnImpl rr=new ResultSetReturnImpl();
   UpdatePerform up=new UpdatePerform();
   
   String sql="select count(*) from filter where filter='"+filter+"' and word='"+word+"'";
   String sql1="insert into filter values('"+filter+"','"+word+"')";
   
   ResultSet r=rr.getExecuteQuery(sql);
   int count=0;
   while(r.next()){
       count=r.getInt(1);
   }
   if(count==0){
      int i=up.getQuery(sql1);
      if(i>0){
                %>
    <script type="text/javascript">
        window.alert("word Added Success...!!");
        window.location="AddFilter.jsp";
        </script>
    <%   
      }else{
          %>
    <script type="text/javascript">
        window.alert("Adding word Filed...!!");
        window.location="AddFilter.jsp";
        </script>
    <%
      }
   }else{
 %>
    <script type="text/javascript">
        window.alert("The category word Already Exist...!!");
        window.location="AddFilter.jsp";
        </script>
    <%
}
   
}catch(Exception e){
  System.out.println(e);
}


%>