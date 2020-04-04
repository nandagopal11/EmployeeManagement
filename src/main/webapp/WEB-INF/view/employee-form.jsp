<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Form</title>
<style>
		.error{
		color: 	#FF6347;
		 font-size: 14px;	
	}
	
	body {
 background-color: #F3EBF6;     
font-family: 'Ubuntu', sans-serif;
   }

table{ 

padding-left:20px;
font-family: 'Roboto', sans-serif;
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
h1{
font-family: 'Roboto', sans-serif;
    color: #8C55AA;
}

.button{
	margin-top:25px;
	margin-left:23px;
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

.tab{
background: white;
border-radius: 1.5em; 
padding: 55px;   
position: absolute;
   top:20%;  
  left: 22%;  
width: 42%;

}
	
</style>
</head>
<body>

	<h1 align="center" >Add Employee Details</h1>
	
	<div style="  background-color: #F3EBF6;height:25px;">	
		
	<input type="button" value="Employee List"
		onclick="window.location.href = 'list'; return false;"
		class="add-button" style="margin-left:1000px;" />
		<input type="button" value="Logout"
		onclick="window.location.href = 'logout'; return false;"
		class="add-button" />
	</div>
	<div class="tab">
	<form:form action="addEmployee" modelAttribute="employee"
		method="POST">
		
	<table>
		<tr>
			<td>Employee Id:</td>
			<td>
				<form:input path="employee_id"/>
				<form:errors path="employee_id" cssClass="error"/>
			</td>
		</tr>
		<tr>
			<td>First Name:</td>
			<td>
				<form:input path="first_name"/>
				<form:errors path="first_name" cssClass="error"/>
			</td>
		</tr>
		<tr>
			<td>Last Name:</td>
			<td><form:input path="last_name"/>
				<form:errors path="last_name" cssClass="error"/>
			</td>
		</tr>
		<tr>
			<td>Gender:</td>
			<td><form:radiobutton path="gender" value="Male" />Male
				<form:radiobutton  path="gender" value="Female"/>Female
				<form:radiobutton  path="gender" value="Other"/>Other
				<form:errors path="gender" cssClass="error"/>
			</td>
		</tr>
		<tr>
			<td>Contact No:</td>
			<td><form:input path="contact_no"/>
				<form:errors path="contact_no" cssClass="error"/>
			</td>
		</tr>
		<tr>
			<td>Email:</td>
			<td><form:input path="email"/>
				<form:errors path="email" cssClass="error"/>
			</td>
		</tr>
		<tr>
			<td>Age:</td><td><form:input path="age"/>
			<form:errors path="age" cssClass="error"/></td>
		</tr>
		<tr>
			<td>Manager Id:</td><td><form:input path="manager_id"/>
			<form:errors path="manager_id" cssClass="error"/></td>
		</tr>
		<tr>
			<td>Business Unit:</td><td><form:input path="business_unit"/>
			<form:errors path="business_unit" cssClass="error"/></td>
		</tr>
		<tr>
			<td>Job Title:</td><td><form:input path="job_title"/>
			<form:errors path="job_title" cssClass="error"/></td>
			</tr>
		<tr>
			<td>Salary:</td><td><form:input path="salary"/>
			<form:errors path="salary" cssClass="error"/></td>
		</tr>
		<tr>
			<td>Date of Joining:</td><td><form:input type="date" path="date_of_joining"/>
			<form:errors path="date_of_joining" cssClass="error"/></td>
		</tr>
	</table>	
	<input type="submit" value="Insert" class="button"/>
	<input type="reset" value="Reset" class="button"/>
	
	</form:form>
	</div>
	
</body>
</html>