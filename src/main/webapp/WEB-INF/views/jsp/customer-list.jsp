<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Helo Spring MVC + JDBC</title>

	<link href="<c:url value="/resources/css/home.css" />" rel="stylesheet">

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

	<!-- jQuery library -->
	<script type="text/javascript" src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" />"></script>

	<!-- Latest compiled JavaScript -->
	<script type="text/javascript" src="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js" />"></script>

</head>
<body>
	<c:url value="/customer-save" var="urlSave"/>
	<c:url value="/customer-view/" var="urlView"/>
	<c:url value="/customer-update/" var="urlUpdate"/>
	<c:url value="/customerDelete/" var="urlDelete"/>
	<h1>List Customer:</h1>
	<a href="${urlSave}">Add Customer</a>
	<br />
	<br />

	<div class="container">
		<table class="table">
			<thead class="thead-light">
			<tr>
				<th scope="col">Id</th>
				<th scope="col">CMND</th>
				<th scope="col">Name</th>
				<th scope="col">Address</th>
				<th scope="col">DoB</th>
				<th scope="col">View</th>
				<th scope="col">Edit</th>
				<th scope="col">Delete</th>
			</tr>
			</thead>
			<tbody>
			<c:if test="${not empty listCustomer}">
				<c:forEach var="customer" items="${listCustomer}">
					<tr>
						<td>${customer.id}</td>
						<td>${customer.cmnd}</td>
						<td>${customer.name}</td>
						<td>${customer.address}</td>
						<td>${customer.dob}</td>
						<td> <a href="${urlView}/${customer.id}">View</a></td>
						<td> <a href="${urlUpdate}/${customer.id}">Edit</a></td>
						<td> <a href="${urlDelete}/${customer.id}">Delete</a></td>
					</tr>
				</c:forEach>
			</c:if>
			</tbody>
		</table>
	</div>
	<div>
		<c:if test="${not empty user}">
			${user.name}
		</c:if>
	</div>





</body>
</html>