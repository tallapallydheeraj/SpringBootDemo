<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!-- JSTL Dependency -->	
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>

<style type="text/css">
.error {
	color: red;
}
</style>
</head>
<body>

	<div class="container">

		<h2 align="center">Customer Registration</h2>
	</div>
	<div class="container">
		<form action="/add" method="post">
		<c:if test="${error != null}">
			<span class='error'><c:out value="${error}"></c:out></span>
		</c:if>
			<div class="row">
				<div class="col-lg-6 col-lg-offset-3">
					<div class="form-group">
						<label for="name">Customer Name:</label> <input type="text"
							class="form-control" id="customerName" placeholder="Enter Name"
							name="customerName">
					</div>

					<div class="form-group">
						<label for="address">Address:</label> <input type="text"
							class="form-control" id="address" placeholder="Enter address."
							name="customerAddress">
					</div>
					<div class="form-group">
						<label for="customerIdentity">Identity Type:</label> <select
							name="customerIdentity">
							<option value="">Select One--</option>
							<c:forEach items="${types}" var="type">

								<option value="${type }"><c:out value="${type }"></c:out></option>

							</c:forEach>
						</select>
					</div>
					<div class="form-group">
						<label for="customerEmailId">EmailId: </label> <input type="text"
							class="form-control" id="customerEmailId" placeholder="Enter EmailId"
							name="customerEmailId">
					</div>
					<div class="form-group">
						<label for="password">PASSWORD: </label> <input type="text"
							class="form-control" id="password" placeholder="Enter Password"
							name="password">
					</div>
					<div class="form-group">
						<label for="password">Annual Income:</label> <input type="text"
							class="form-control" id="income" 
							value="0.0"
							placeholder="Enter Annual Income"
							name="annualIncome">
					</div>
					<div class="form-group">
						<label for="tax">Income Tax Returns Attached:</label>
						 <input type="checkbox"
							 id="tax"
							name="incomeTaxReturnAttached">
					</div>
					
					<div align="center">
						<input type="submit" class="btn btn-primary" value="Register">
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>