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
		<div class="row p-5" style="margin-top: 110px">
			<div class="col-12 col-sm-6 col-md-4 col-lg-3 ms-5" style="">
				<a href="add_student">
					<div class="card mb-2">
						<div class="card-body text-center bg">
							<i class="fa-solid fa-square-plus fa-3x text-primary"></i>
							<h4>Add Student</h4>
							----------
						</div>
						<div class="blob"></div>
					</div>
				</a>
			</div>
			<div class="col-12 col-sm-6 col-md-4 col-lg-3 ms-5">
				<a href="CheckStudent">
					<div class="card mb-2">
						<div class="card-body text-center bg">
							<i class="fa-solid fa-user-check fa-3x text-secondary"></i>
							<h4>Ckeck Detail</h4>
							----------
						</div>
						<div class="blob"></div>
					</div>
				</a>
			</div>
			<div class="col-12 col-sm-6 col-md-4 col-lg-3 ms-5">
				<a href="back">
					<div class="card mb-2">
						<div class="card-body text-center bg">
							<i class="fa-solid fa-arrow-left fa-3x text-dark"></i>
							<h4>Back</h4>
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