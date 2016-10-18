<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
   <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/ielts" user="root" password="cong12"/>
	
	<form action ="NewFile1.jsp" method = "post">
		Filter Express: 
		<input name ="txtSearch" value = "${param['txtSearch']}">
		<input type = "submit" name = "btnSearch" value ="search">
	</form>
	<c:if test = "${!empty param['btnSearch'] }">
	<sql:query var="result">
		
		
		select * from tblbaitestreading
			where testID like '%${param['txtSearch']}%';
			
	</sql:query>
	</c:if>
	<c:forEach var ="pro" items = "${result.rows}">
		<p> IDla : ${pro.testID }</p>
		<p>TenLA: ${pro.tenbai } </p>
		
	</c:forEach>
</body>
</html>