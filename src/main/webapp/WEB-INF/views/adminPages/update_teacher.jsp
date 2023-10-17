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
/* .image {
	background: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.9)),
		url("resources/img/University2.jpg");
	background-size: cover;
	background-attachment: fixed;
	background-position: center;
	height: 500px;
	width: auto;
} */
.abc {
	display: flex;
	justify-content: center;
	margin-top: 50px;
}

.container {
	position: relative;
	max-width: 500px;
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
			<header>Update Teacher Form</header>

			<c:if test="${not empty sucMsg }">
				<h5 class=" text-success">${sucMsg }<a href="chechDetail">Check here</a> </h5>
				<c:remove var="sucMsg" />
			</c:if>

			<form class="form" action="../updateData" method="post">

				<input type="hidden" class="form-control" name="id"
					value="${update.id }">

				<div class="input-box">
					<label>Full Name</label> <input name="name"
						placeholder="Enter full name" value="${update.name }" type="text">
				</div>

				<div class="column1">
					<div class="input-box">
						<label>Phone Number</label> <input name="numb"
							placeholder="Enter phone number" value="${update.numb }"
							type="text">
					</div>

					<div class="input-box">
						<label>Birth Date</label> <input name="dob"
							placeholder="dd/mm/yyyy" value="${update.dob }" type="text">
					</div>

				</div>
				
				<div class="gender-box">

					<label>Gender</label>
					<div class="gender-option">

						<div class="gender">
							<input name="gender" value="Male" id="check-male"
								type="radio"> <label for="check-male">Male</label>
						</div>

						<div class="gender">
							<input name="gender" value="Female" id="check-female"
								type="radio"> <label for="check-female">Female</label>
						</div>
					</div>

				</div>
				

				<div class="input-box address">

					<label>C-N-I-C</label> <input name="cnic"
						placeholder="Enter CNIC Number" value="${update.cnic }"
						type="text">

				</div>

				<div class="input-box address">

					<div class="column">

						<div class="select-box">
							<select name="status">
								<option>${update.status }</option>
								<option>Active</option>
								<option>InActive</option>
							</select>
						</div>

						<div class="select-box">
							<select name="course">
								<option>${update.course }</option>
								<option>English</option>
								<option>Mathematics</option>
								<option>JAVA</option>
								<option>Python</option>
							</select>
						</div>
					</div>
				</div>

				<div class="input-box address">

					<label>Address</label> <input name="address"
						placeholder="Enter street address" value="${update.address }"
						type="text">

					<div class="column">

						<div class="select-box">
							<select name="country">
								<option>${update.country }</option>
								<option>USA</option>
								<option>Pakistan</option>
								<option>Germany</option>
								<option>Japan</option>
							</select>
						</div>

						<input name="city" placeholder="Enter your city"
							value="${update.city }" type="text">
					</div>
				</div>
				<button>Submit</button>

			</form>
		</section>
	</div>

</body>
</html>