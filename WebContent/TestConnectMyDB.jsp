<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
   <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
    
	
		
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css.css" rel="stylesheet">
<style type="text/css">
	#DIV_1 {
    color: rgb(37, 37, 37);
    height: 142px;
    max-height: 392px;
    text-align: left;
    width: 794px;
    column-rule-color: rgb(37, 37, 37);
    perspective-origin: 405px 79px;
    transform-origin: 405px 79px;
    border: 1px solid rgb(210, 210, 210);
    font: normal normal normal normal 12px / 16.8px "Arial Unicode MS", "Arial Unicode", Arial, "URW Gothic L", Helvetica, Tahoma, "Cambria Math", sans-serif;
    list-style: none outside none;
    outline: rgb(37, 37, 37) none 0px;
    overflow: auto;
    padding: 14px 0px 0px 14px;
}
#DIV_2 {
    color: rgb(37, 37, 37);
    height: 142px;
    max-height: 392px;
    text-align: left;
    width: 794px;
    column-rule-color: rgb(37, 37, 37);
    perspective-origin: 405px 79px;
    transform-origin: 405px 79px;
    border: 1px solid rgb(210, 210, 210);
    font: normal normal normal normal 12px / 16.8px "Arial Unicode MS", "Arial Unicode", Arial, "URW Gothic L", Helvetica, Tahoma, "Cambria Math", sans-serif;
    list-style: none outside none;
    outline: rgb(37, 37, 37) none 0px;
    overflow: auto;
    padding: 14px 0px 0px 14px;
}
	</style>
	<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.0.min.js"></script>
	<script>
    $(document).ready(function(){
    	$("#hl").click(function(){
            $("#DIV_1").toggle();
            $("#DIV_2").hide();
           

        })
        $("#ab").click(function(){
        	$("#DIV_2").toggle();
        	
        	$("#DIV_1").hide();
        })	
    })
</script>
</head>
<body>
<sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/journaldb" user="root" password="cong12"/>


<span> <button id="ab">Abstract</button> | <button id="hl">Highlights</button> | <a href = "" download>Download</a></span>

	<div id="DIV_1">
	<sql:query var="items" sql="SELECT highlights FROM articles where articleID = 111"/>
		<strong>Hilight</strong>
		<p class="text-justify">
			<c:forEach items="${items.rowsByIndex}" var="row"> 
			<c:forEach items="${row}" var="col"> 
			${col}
			</c:forEach>
			</c:forEach>
		</p>
</div>
<sql:query var="items" sql="SELECT abstract FROM articles where articleID=111"/>
<div id="DIV_2" hidden>
		<strong>Abstract</strong>
		<p class="text-justify">
			<c:forEach items="${items.rowsByIndex}" var="row"> 
			<c:forEach items="${row}" var="col"> 
			${col}
			</c:forEach>
			</c:forEach>
		</p>
</div>


</body>
</html>