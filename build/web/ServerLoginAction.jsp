<%@page import="java.sql.ResultSet"%>
<%@page import="com.resultset.ResultSetReturnImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String username=request.getParameter("uname");
String password=request.getParameter("pwd");
String sql="select * from admin where username='"+username+"'and password='"+password+"'";
ResultSetReturnImpl r=new ResultSetReturnImpl();
ResultSet rs=r.getExecuteQuery(sql);
if(rs.next()){
    %>
    <script type="text/javascript">
        window.alert("Server Login Successful...!!");
        window.location="ServerHome.jsp";
        </script>
    <%
}else{
 %>
    <script type="text/javascript">
        window.alert("Server Login Filed...!!");
        window.location="OSNServer.jsp";
        </script>
    <%
}
%>
</body>
</html>