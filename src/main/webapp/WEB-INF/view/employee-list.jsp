<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored = "false" %>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee List</title>
<style>
body{
	 background-color: #F3EBF6;
}

.head1{
font-family: 'Roboto', sans-serif;
    color: #8C55AA;
}
.tab{
	background-color: #FFFFFF;   
    border-spacing: 10px; 
    box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);
    font-family: 'Ubuntu', sans-serif;
}
.searchbar{
	margin-left:767px; border-radius: 20px;
    outline: none;
    box-sizing: border-box;
    border: 2px solid beige;width:200px;height:30px;
}
.div1{
	background-color: #F3EBF6;
	height:25px;
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
.new-button{
border: 1px solid #666; 
	border-radius: 5px; 
	padding: 4px; 
	font-size: 12px;
	font-weight: bold;
	width: 100px; 
	padding: 5px 10px; 
	font-family: 'Ubuntu', sans-serif;
	margin-bottom: 3px;
	background: #F3EBF6;
	 cursor: pointer;
        border-radius: 5em;
        color:black;
        background: linear-gradient(to right, #F3EBF6,  #F3EBF6);
}
table{
	
	border-collapse:collapse;
	 border:1px solid #cccac6;
	 font-family: 'Roboto', sans-serif;
	}

th,td{
 	padding: 5px;
  border-collapse:collapse;
	border:1px solid #cccac6;
}

</style>
<body>
	
	<div id="wrapper">
		<div id="header">
			<h1 class="head1" align="center">EMPLOYEE LIST</h1>
		</div>
	</div>
	
	<div class="div1" style="  ">
	<form method="post" action="search">
		<input type="number" name="id" placeholder="search by employee id"  class="searchbar">
		<button type="submit" class="add-button">Search</button>
	
		<input type="button" value="add employee" onclick="window.location.href='/EmployeeManagement/employee/showForm';return false;"
		       class="add-button"/>
		<input type="button" value="Logout"
			   onclick="window.location.href = 'logout'; return false;"
		       class="add-button" />
	</form>
	</div>
	<br>
	
	
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
			<th>ACTION</th>
		</tr>
	
	<c:forEach var = "emp" items = "${EmployeeList}" >
	
	<c:url var="updateLink" value="/employee/updateForm">
	 <c:param name="employeeId" value="${emp.employee_id}"/>
	 </c:url>
	 <c:url var="deleteLink" value="/employee/deleteEmployee">
	 <c:param name="employeeId" value="${emp.employee_id }"/>
	 </c:url>
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
	<td><input type="button" value="Update"
		onclick="window.location.href ='${updateLink}'; return false;"
		class="new-button" /><br>
		<input type="button" value="Delete" onclick="window.location.href ='${deleteLink}'; return false;"
		class="new-button" />
	</tr>
	</c:forEach>
	
	</table>
</div>	
</body>
</html>