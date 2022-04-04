<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage = "loginError.jsp" %>
    <%@ page import = "java.sql.*" %>
    <%@ page import = "java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
<%
	String emailId = request.getParameter("email");
	String password=request.getParameter("password");

	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinefood","root","dips@20101999");
		Statement statement = connection.createStatement();
		ResultSet resultSet = statement.executeQuery("select * from customer where emailID='"+emailId+"'");
		while(resultSet.next()) {
			if((resultSet.getString(4)).equals(password))	{ %>
				<jsp:forward page="Welcome.jsp"/>
				<% }
			else { %>
				<jsp:include page="loginError.jsp"/>
				<% }
		}
	}
	catch(Exception e)	{
		e.printStackTrace();
		}
%>

</body>
</html>