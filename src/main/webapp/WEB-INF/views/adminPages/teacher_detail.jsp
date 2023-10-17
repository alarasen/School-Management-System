<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="../base.jsp"%>

<style type="text/css">
.image {
	background: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.9)),
		url("resources/img/University2.jpg");
	background-size: cover;
	background-attachment: fixed;
	background-position: center;
	height: 500px;
	width: auto;
}

</style>

</head>
<body class="image">

	<%@include file="../allComponents/navbartwo.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<a href="teacher_panel" style="cursor: pointer;"><i class="fa-solid fa-arrow-left fa-3x text-white mt-3"></i></a>

				<h3 class="text-white text-center py-4">Welcome to Teacher
					Detail</h3>

				<c:if test="${not empty deltMsg }">
					<h4 class="text-center" style="color: #fadf35;">${deltMsg }</h4>
					<c:remove var="deltMsg" />
				</c:if>

				<div class="table-responsive">
				<table
					class="table table-bordered border-white text-center text-white mt-3">

					<thead>
						<tr style="color: #fadf35;">
							<th scope="col">No</th>
							<th scope="col">Full Name</th>
							<th scope="col">Phone No</th>
							<th scope="col">DOB</th>
							<th scope="col">Gender</th>
							<th scope="col">CNIC</th>
							<th scope="col">Status</th>
							<th scope="col">Subject</th>
							<th scope="col">Address</th>
							<th scope="col">City</th>
							<th scope="col">Country</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${add1 }" var="t">
							<tr>
								<th scope="row">${t.id }</th>
								<th>${t.name }</th>
								<th>${t.numb }</th>
								<th>${t.dob }</th>
								<th>${t.gender }</th>
								<th>${t.cnic }</th>
								<th>${t.status }</th>
								<th>${t.course }</th>
								<th>${t.address }</th>
								<th>${t.country }</th>
								<th>${t.city }</th>
								<th><a href="delete/${t.id }"> <i
										class="fa-solid fa-trash me-1" style="color: #ff0a0a;"></i>
								</a> <a href="update/${t.id }"><i class="fa-solid fa-pen-nib"></i></a></th>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				</div>
			</div>
		</div>
	</div>

</body>
</html>