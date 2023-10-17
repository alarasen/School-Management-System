<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%@include file="../base.jsp"%>
<style type="text/css">

.abc {
	display: flex;
	justify-content: center;
	margin-top: 10vh;
}

.container {
	position: relative;
	max-width: 700px;
	width: 90%;
	background: #fcedda;
	padding: 25px;
	border-radius: 8px;
	box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
}

.container header {
	font-size: 1.2rem;
	color: #000;
	font-weight: 600;
	text-align: center;
}

.container .form {
	margin-top: 15px;
}

.form .input-box {
	width: 100%;
	margin-top: 10px;
}

.input-box label {
	color: #000;
}

.form :where(.input-box input, .select-box) {
	position: relative;
	height: 35px;
	width: 100%;
	outline: none;
	font-size: 1rem;
	color: #808080;
	margin-top: 5px;
	border: 1px solid #ee4e34;
	border-radius: 6px;
	padding: 0 15px;
	background: #fcedda;
}

.input-box input:focus {
	box-shadow: 0 1px 0 rgba(0, 0, 0, 0.1);
}

.form .column1 {
	display: flex;
	width: 100%;
	column-gap: 25px;
}

.form .column {
	display: flex;
	width: 100%;
	column-gap: 25px;
}

.form .gender-box {
	margin-top: 10px;
}

.form :where(.gender-option, .gender) {
	display: flex;
	align-items: center;
	column-gap: 50px;
	flex-wrap: wrap;
}

.form .gender {
	column-gap: 5px;
}

.gender input {
	accent-color: #ee4e34;
}

.form :where(.gender input, .gender label) {
	cursor: pointer;
}

.gender label {
	color: #000;
}

.address :where(input, .select-box) {
	margin-top: 10px;
}

.select-box select {
	height: 100%;
	width: 100%;
	outline: none;
	border: none;
	color: #808080;
	font-size: 1rem;
	background: #fcedda;
}

.form button {
	height: 40px;
	width: 100%;
	color: #000;
	font-size: 1rem;
	font-weight: 400;
	margin-top: 15px;
	border: none;
	border-radius: 6px;
	cursor: pointer;
	transition: all 0.2s ease;
	background: #ee4e34;
}

.form button:hover {
	background: #ee3e34;
}

</style>

</head>
<body style="background-color: #f0f2f2">

	<%@include file="../allComponents/navbartwo.jsp"%>
	
	<div class="abc">
		<section class="container">
			<header>Add Student Form</header>

			<c:if test="${not empty sucMsg }">
				<h5 class="text-center text-success">${sucMsg }<a href="CheckStudent">Check here</a> </h5>
				<c:remove var="sucMsg" />
			</c:if>
			
			<form class="form" action="../update-student" method="post">

				<input type="hidden" class="form-control" name="id"
					value="${update.id }">

				<div class="column1">
					<div class="input-box">
						<label>Full Name</label> <input required="required" name="name"
							value="${update.name }" placeholder="Enter full name" type="text">
					</div>
					<div class="input-box">
						<label>Father's Name</label> <input required="required" name="fName"
							value="${update.fName }" placeholder="Enter father's name" type="text">
					</div>
				</div>
				
				<div class="input-box">
					<label>Roll No</label> <input required="required" name="rollNo"
						value="${update.rollNo }" placeholder="Enter Roll No" type="text">
				</div>

				<div class="column1">
					<div class="input-box">
						<label>Phone Number</label> <input required="required" name="numb"
							value="${update.numb }" placeholder="Enter phone number" type="text">
					</div>

					<div class="input-box">
						<label>Birth Date</label> <input required="required" name="dob"
							value="${update.dob }" placeholder="dd/mm/yyyy" type="text">
					</div>

				</div>
				
				<div class="input-box address">
					<label>Address</label> <input required="required" name="address"
						value="${update.address }" placeholder="Enter street address" type="text">
				</div>
				
				<div class="column1">
					<div class="input-box">
						<input required="required" name="age"
							value="${update.age }" placeholder="Enter Your Age" type="text">
					</div>
					<div class="input-box">
						<input required="required" name="email"
							value="${update.email }" placeholder="Email Address" type="email">
					</div>
				</div>

				<div class="gender-box">

					<label>Gender</label>
					<div class="gender-option">

						<div class="gender">
							<input checked="" name="gender" value="Male" id="check-male"
								type="radio"> <label for="check-male">Male</label>
						</div>

						<div class="gender">
							<input name="gender" value="Female" id="check-female"
								type="radio"> <label for="check-female">Female</label>
						</div>
					</div>

				</div>

				<div class="input-box address">

					<label>C-N-I-C</label> <input required="required" name="cnic"
						value="${update.cnic }" placeholder="Enter CNIC Number" type="text">

				</div>

				<div class="input-box address">

					<div class="column">

						<div class="select-box">
							<select name="status">
								<option hidden="">${update.status }</option>
								<option>Active</option>
								<option>InActive</option>
							</select>
						</div>

						<div class="select-box">
							<select name="branch">
								<option hidden="">${update.branch }</option>
								<option>Computer Science</option>
								<option>Electronics</option>
								<option>Electrical</option>
								<option>Machanical</option>
								<option>Software</option>
								<option>Civil</option>
							</select>
						</div>
					</div>
				</div>

				<button>Submit</button>

			</form>
		</section>
	</div>

</body>
</html>