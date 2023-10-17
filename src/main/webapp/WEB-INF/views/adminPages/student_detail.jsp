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
				<a href="student_panel" style="cursor: pointer;"><i
					class="fa-solid fa-arrow-left fa-3x text-white mt-3"></i></a>

				<h3 class="text-white text-center py-4">Welcome to Student
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
							<th scope="col">Roll No</th>
							<th scope="col">Full Name</th>
							<th scope="col">Father's Name</th>
							<th scope="col">Phone No</th>
							<th scope="col">DOB</th>
							<th scope="col">Address</th>
							<th scope="col">Age</th>
							<th scope="col">Email</th>
							<th scope="col">Gender</th>
							<th scope="col">CNIC</th>
							<th scope="col">Status</th>
							<th scope="col">Branch</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${studentdata }" var="student">
							<tr>
								<th scope="row">${student.id }</th>
								<th>${student.rollNo }</th>
								<th>${student.name }</th>
								<th>${student.fName }</th>
								<th>${student.numb }</th>
								<th>${student.dob }</th>
								<th>${student.address }</th>
								<th>${student.age }</th>
								<th>${student.email }</th>
								<th>${student.gender }</th>
								<th>${student.cnic }</th>
								<th>${student.status }</th>
								<th>${student.branch }</th>
								<th><a href="deletestudent/${student.id }"> <i
										class="fa-solid fa-trash me-1" style="color: #ff0a0a;"></i>
								</a> <a href="updatestudent/${student.id }"><i
										class="fa-solid fa-pen-nib"></i></a></th>
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