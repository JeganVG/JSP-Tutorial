<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"   errorPage="error.jsp" %>
   <%! int j=10; %>
   <%@ page import="java.sql.*" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

	String url = "jdbc:postgresql://localhost:5432/appranix";
	String username = "postgres";
	String password = "postgres";
	
	String sql = "select * from public.\"user\" where username='jegan';";
 	Class.forName("org.postgresql.Driver");
 	
	Connection con = DriverManager.getConnection(url, username, password);
	Statement st = con.createStatement();
	
	ResultSet rs = st.executeQuery(sql);
	rs.next();
	
%>
	
	name : <%= rs.getString(1)%><br></br>
	age : <%= rs.getInt(3)%><br></br>
	nationality : <%= rs.getString(4)%><br></br>
	gender : <%= rs.getString(5)%><br></br>
	
</body>
</html>