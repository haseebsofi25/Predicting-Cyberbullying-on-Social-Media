<%-- 
    Document   : Comm_Action
    Created on : Dec 14, 2019, 5:17:31 PM
    Author     : Acer
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.resultset.ResultSetReturnImpl"%>
<%@page import="com.update.UpdatePerform"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String name=(String)session.getAttribute("username");
    
String id=(String)session.getAttribute("pid");
String title=(String)session.getAttribute("title");
String comment=request.getParameter("comment");


try{
    
  
    
    String sql="insert into comment values('"+name+"','"+id+"','"+title+"','"+comment+"','1')";
    UpdatePerform up=new UpdatePerform();
    int i=up.getQuery(sql);
    if(i>0){
        String d="select * from filter";
    ResultSetReturnImpl r=new ResultSetReturnImpl();
    ResultSet rr=r.getExecuteQuery(d);
    while(rr.next()){
       String fil=rr.getString(1); 
       String word=rr.getString(2);
        if(comment.contains(word)){
          String sql1="insert into cybercomment values('"+name+"','"+id+"','"+title+"','"+comment+"','1','"+fil+"','"+word+"')";
      UpdatePerform up1=new UpdatePerform();
    up1.getQuery(sql1);
        }
    }
       %>
    <script type="text/javascript">
        window.alert("Commented Success...!!");
        window.location="VF_Post.jsp";
        </script>
    <%   
    }else{
%>
    <script type="text/javascript">
        window.alert("Commenting Faiiled...!!");
        window.location="VF_Post.jsp";
        </script>
    <%
}
}catch(Exception e){
 out.println(e);   
}

%>
