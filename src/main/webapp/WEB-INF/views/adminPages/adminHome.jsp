<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

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

a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
	color: black;
}

.card {
	position: relative;
	width: 198px;
	height: 158px;
	border-radius: 14px;
	z-index: 1111;
	overflow: hidden;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	
}

.bg {
	position: absolute;
	top: 3px;
	left: 3px;
	width: 190px;
	height: 149px;
	z-index: 2;
	background: rgba(255, 255, 255, .95);
	backdrop-filter: blur(24px);
	border-radius: 10px;
	overflow: hidden;
	outline: 2px solid white;
}

.blob {
	position: absolute;
	z-index: 1;
	top: 50%;
	left: 50%;
	width: 150px;
	height: 150px;
	border-radius: 50%;
	background-color: #01579b;
	opacity: 1;
	filter: blur(12px);
	animation: blob-bounce 5s infinite ease;
}

@keyframes blob-bounce {
  0% {
    transform: translate(-100%, -100%) translate3d(0, 0, 0);
  }

  25% {
    transform: translate(-100%, -100%) translate3d(100%, 0, 0);
  }

  50% {
    transform: translate(-100%, -100%) translate3d(100%, 100%, 0);
  }

  75% {
    transform: translate(-100%, -100%) translate3d(0, 100%, 0);
  }

  100% {
    transform: translate(-100%, -100%) translate3d(0, 0, 0);
  }
}

</style>

</head>
<body class="image">
	<%@include file="../allComponents/navbartwo.jsp"%>
	
	<div class="container">
		<div class="row p-5">
			<div class="col-md-3 mb-5">
				<a href="teacher_panel">
					<div class="card mb-2">
						<div class="card-body text-center bg">
							<i class="fa-solid fa-users fa-3x text-primary"></i>
							<h4>Teacher</h4>
							----------
						</div>
						<div class="blob"></div>
					</div>
				</a>
			</div>
			<div class="col-md-3 mb-5">
				<a href="student_panel">
					<div class="card mb-2">
						<div class="card-body text-center bg">
							<i class="fa-solid fa-users fa-3x text-secondary"></i>
							<h4>Student</h4>
							----------
						</div>
						<div class="blob"></div>
					</div>
				</a>
			</div>
			<div class="col-md-3 mb-5">
				<a href="attendance_panel">
					<div class="card mb-2">
						<div class="card-body text-center bg">
							<i class="fa-solid fa-clipboard-user fa-3x text-danger"></i>
							<h4>Attendance</h4>
							----------
						</div>
						<div class="blob"></div>
					</div>
				</a>
			</div>
			<div class="col-md-3 mb-5">
				<a href="orders.jsp">
					<div class="card mb-2">
						<div class="card-body text-center bg">
							<i class="fa-solid fa-building-columns fa-3x text-dark"></i>
							<h4>Fees</h4>
							----------
						</div>
						<div class="blob"></div>
					</div>
				</a>
			</div>
			<div class="col-md-3 mb-5">
				<a href="orders.jsp">
					<div class="card mb-2">
						<div class="card-body text-center bg">
							<i class="fa-solid fa-square-poll-vertical fa-3x text-success"></i>
							<h4>Result</h4>
							----------
						</div>
						<div class="blob"></div>
					</div>
				</a>
			</div>
			<div class="col-md-3 mb-5">
				<a href="orders.jsp">
					<div class="card mb-2">
						<div class="card-body text-center bg">
							<i class="fa-solid fa-school fa-3x text-dark"></i>
							<h4>About</h4>
							----------
						</div>
						<div class="blob"></div>
					</div>
				</a>
			</div>
			<div class="col-md-3 mb-5">
				<a href="#">
					<div class="card">
						<div class="card-body text-center bg">
							<i
								class="fa-sharp fa-solid fa-right-from-bracket fa-3x text-primary"></i>
							<h4>Logout</h4>
							----------
						</div>
						<div class="blob"></div>
					</div>
				</a>
			</div>
		</div>
	</div>
	

</body>
</html>