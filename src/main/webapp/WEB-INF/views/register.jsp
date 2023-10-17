<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%@page isELIgnored="false"%>

<!-- jstl uri -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%@include file="base.jsp"%>

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
}

.form {
  display: flex;
  flex-direction: column;
  gap: 10px;
  max-width: 350px;
  background-color: #fff;
  padding: 20px;
  border-radius: 20px;
  position: relative;
}

.title {
  font-size: 28px;
  color: royalblue;
  font-weight: 600;
  letter-spacing: -1px;
  position: relative;
  display: flex;
  align-items: center;
  padding-left: 30px;
}

.title::before,.title::after {
  position: absolute;
  content: "";
  height: 16px;
  width: 16px;
  border-radius: 50%;
  left: 0px;
  background-color: royalblue;
}

.title::before {
  width: 18px;
  height: 18px;
  background-color: royalblue;
}

.title::after {
  width: 18px;
  height: 18px;
  animation: pulse 1s linear infinite;
}

.message, .signin {
  color: rgba(88, 87, 87, 0.822);
  font-size: 14px;
}

.signin {
  text-align: center;
}

.signin a {
  color: royalblue;
}

.signin a:hover {
  text-decoration: underline royalblue;
}

.flex {
  display: flex;
  width: 100%;
  gap: 6px;
}

.form label {
  position: relative;
}

.form label .input {
  width: 100%;
  padding: 10px 10px 20px 10px;
  outline: 0;
  border: 1px solid rgba(105, 105, 105, 0.397);
  border-radius: 10px;
}

.form label .input + span {
  position: absolute;
  left: 10px;
  top: 15px;
  color: grey;
  font-size: 0.9em;
  cursor: text;
  transition: 0.3s ease;
}

.form label .input:placeholder-shown + span {
  top: 15px;
  font-size: 0.9em;
}

.form label .input:focus + span,.form label .input:valid + span {
  top: 30px;
  font-size: 0.7em;
  font-weight: 600;
}

.form label .input:valid + span {
  color: green;
}

.submit {
  border: none;
  outline: none;
  background-color: royalblue;
  padding: 10px;
  border-radius: 10px;
  color: #fff;
  font-size: 16px;
  transform: .3s ease;
}

.submit:hover {
  background-color: rgb(56, 90, 194);
}

@keyframes pulse {
  from {
    transform: scale(0.9);
    opacity: 1;
  }

  to {
    transform: scale(1.8);
    opacity: 0;
  }
}

</style>

</head>
<body class="image">
	<%@include file="allComponents/navbar.jsp"%>

	<div class="abc mt-4">
		<form class="form" action="register" method="post">
			<p class="title">Register</p>
			
			<c:if test="${not empty succMsg }">
				<h5 class="text-success">${succMsg } <a href="login" style="">click here</a> </h5>
				<c:remove var="succMsg"/>
			</c:if>
			
			<c:if test="${not empty failedMsg }">
				<h5 class="text-danger">${failedMsg }</h5>
				<c:remove var="failedMsg"/>
			</c:if>
			
			
			<p class="message">Signup now and get full access to our app.</p>
			<div class="flex">
				<label> 
					<input required="" placeholder="" type="text"
					class="input" name="firstName"> <span>Firstname</span>
				</label> 
				<label> 
					<input required="" placeholder="" type="text"
					class="input" name="lastName"> <span>Lastname</span>
				</label>
			</div>

			<label> 
				<input required="" placeholder="" type="email"
				class="input" name="email"> <span>Email</span>
			</label> 
			<label> 
				<input required="" placeholder="" type="password"
				class="input" name="password"> <span>Password</span>
			</label> 
			<label> 
				<input required="" placeholder="" type="password"
				class="input" name="conformPassword"> <span>Confirm password</span>
			</label>
			<button type="submit" class="submit">Submit</button>
			<p class="signin">
				Already have an acount ? <a href="login">Signin</a>
			</p>
		</form>
	</div>

</body>
</html>