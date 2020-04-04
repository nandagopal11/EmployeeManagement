<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Result</title>
<style>
	body{
	 background-color: #F3EBF6;
}
	
	div{
		background-color: #F3EBF6;
		height:25px;
	}
	table{
	
	border-collapse:collapse;
	
	 
	 border:1px solid #cccac6;
	 font-family: 'Roboto', sans-serif;
	}
	th{
 	padding: 5px;
  border-collapse:collapse;
	border:1px solid #cccac6;
}

td{
  padding: 5px;
  border-collapse:collapse;
	border:1px solid #cccac6;
}
	
	.tab{
	margin-top:70px;
	background-color: #FFFFFF;   
    border-spacing: 10px; 
    box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);
    font-family: 'Ubuntu', sans-serif;
}
.head1{
font-family: 'Roboto', sans-serif;
    color: #8C55AA;
}

.add-button {
  
  border: 1px solid #666; 
	padding: 4px; 
	font-size: 12px;
	font-weight: bold;
	width: 120px; 
	padding: 5px 10px; 
	font-family: 'Ubuntu', sans-serif;
	border-radius: 1.5em;
    box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);
	margin-bottom: 15px;
	background: #d9d3db;
	 cursor: pointer;
        border-radius: 5em;
        color: #fff;
        background: linear-gradient(to right, #9C27B0, #E040FB);
  
}

</style>
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h1 class="head1" align="center">EMPLOYEE LIST</h1>
		</div>
	</div>
	<br>
	<div style="  background-color: #F3EBF6;height:25px;">	
		
	<input type="button" value="Employee List"
		onclick="window.location.href = 'list'; return false;"
		class="add-button" style="margin-left:1000px;" />
		<input type="button" value="Logout"
		onclick="window.location.href = 'logout'; return false;"
		class="add-button" />
	</div>
	<div class="table">
	<table class="tab">
	
	<tr>
			<th>EMP ID</th>
			<th>FIRST NAME</th>
			<th>LAST NAME</th>
			<th>EMAIL ID</th>
			<th>CONTACT NUMBER</th>
			<th>GENDER</th>
			<th>AGE</th>
			<th>MANAGER ID</th>
			<th>BUSINESS UNIT</th>
			<th>JOB TITLE</th>
			<th>SALARY</th>
			<th>DATE OF JOINING</th>
	</tr>
	
	<c:forEach var = "emp" items = "${emplist}" >
	<tr>
	<td>${emp.employee_id}</td>
	<td>${emp.first_name }</td>
	<td>${emp.last_name }</td>
	<td>${emp.email }</td>
	<td>${emp.contact_no }</td>
	<td>${emp.gender}</td>
	<td>${emp.age }</td>
	<td>${emp.manager_id}</td>
	<td>${emp.business_unit }</td>
	<td>${emp.job_title }</td>
	<td>${emp.salary}</td>
	<td>${emp.date_of_joining }</td>
	</tr>
	</c:forEach>
	
	</table>
</div>	
</body>
</html>