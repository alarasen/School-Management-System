<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%@include file="../base.jsp"%>

<style type="text/css">
.image {
	background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.2)),
		url("resources/img/University2.jpg");
	background-size: cover;
	background-attachment: fixed;
	background-position: center;
	height: 500px;
	width: auto;
}

.abc {
	display: flex;
	justify-content: center;
	margin-top: 50px;
}

.form {
	background-color: #fff;
	display: block;
	padding: 1rem;
	max-width: 350px;
	border-radius: 0.5rem;
	box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -2px
		rgba(0, 0, 0, 0.05);
}

.form-title {
	font-size: 1.25rem;
	line-height: 1.75rem;
	font-weight: 600;
	text-align: center;
	color: #000;
}

.input-container {
	position: relative;
}

.input-container input, .form button {
	outline: none;
	border: 1px solid #e5e7eb;
	margin: 8px 0;
}

.input-container select {
	background-color: #fff;
	padding: 1rem;
	padding-right: 3rem;
	font-size: 0.875rem;
	line-height: 1.25rem;
	width: 300px;
	border-radius: 0.5rem;
	box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.05);
}

.input-container input {
	background-color: #fff;
	padding: 1rem;
	padding-right: 3rem;
	font-size: 0.875rem;
	line-height: 1.25rem;
	width: 300px;
	border-radius: 0.5rem;
	box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.05);
}

.submit {
	display: block;
	padding-top: 0.75rem;
	padding-bottom: 0.75rem;
	padding-left: 1.25rem;
	padding-right: 1.25rem;
	background-color: #4F46E5;
	color: #ffffff;
	font-size: 0.875rem;
	line-height: 1.25rem;
	font-weight: 500;
	width: 100%;
	border-radius: 0.5rem;
	text-transform: uppercase;
}

.signup-link {
	color: #6B7280;
	font-size: 0.875rem;
	line-height: 1.25rem;
	text-align: center;
}

.signup-link a {
	text-decoration: underline;
}
</style>

</head>
<body class="image">

	<%@include file="../allComponents/navbartwo.jsp"%>
	<a href="attendance_panel" class="ms-5" style="cursor: pointer;"><i
		class="fa-solid fa-arrow-left fa-3x text-white mt-4"></i></a>

	<div class="abc">

		<form class="form" action="add-attendance" method="post">
			<p class="form-title">Student Attendance</p>
			
			<c:if test="${not empty addMsg }">
				<div class="text-center">
					<h5 class=" text-success">${addMsg }</h5>
					<a href="#" style="color: #ee4e34">Check Here</a>
				</div>
				<c:remove var="addMsg" />
			</c:if>
			
			<div class="input-container">
				<input type="text" placeholder="Enter Your Roll No">
			</div>
			<div class="input-container mt-3">
				<select name="attendance">
					<option>Attendance</option>
					<option>Present</option>
					<option>Absent</option>
					<option>Leave</option>
				</select>
			</div>
			<button type="submit" class="submit">Submit</button>

		</form>

	</div>

</body>
</html>