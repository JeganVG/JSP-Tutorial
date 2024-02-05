<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<sql:setDataSource var="db" driver="org.postgresql.Driver" url="jdbc:postgresql://localhost:5432/appranix" user="postgres" password="postgres" />
<sql:query var="rs" dataSource="${db}">select * from public."user";</sql:query>
<c:forEach items="${rs.rows}" var="item">
	<c:out value="${item.username}"/><br></br><c:out value="${item.age}"/><br></br><c:out value="${item.gender}"/><br></br>
	<c:out value="----------"/><br></br>
</c:forEach>
<c:set var="str" value="hi jegan"/>
<c:forEach items="${fn:split(str,' ')}" var="s">
${s}
</c:forEach>

</body>
</html>