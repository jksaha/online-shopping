<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!-- This is the testing code for upto part 02 - 04 -->
<!-- DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Shopping</title>
</head>
<body>
	${contextRoot} says  ${greeting}
</body>
</html -->

<!-- Bootstrap styled template code goes here -->


<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Online Shopping - ${title}</title>

<script type="text/javascript">
	window.menu = '${title}';
</script>

<!-- Bootstrap core CSS -->
<!-- link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" -->

<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Bootswatch cosmo theme added here -->

<link href="${css}/bootstrap-cosmo-theme.css" rel="stylesheet">



<!-- Custom styles for this template -->
<!-- link href="css/shop-homepage.css" rel="stylesheet" -->

<link href="${css}/myapp.css" rel="stylesheet">

</head>

<body>
	<div class="wrapper">

		<!-- Navigation -->
		<%@include file="./shared/navbar.jsp"%>

		<!-- Page Content -->
		<div class="content">
			<!-- Home page goes here -->

			<c:if test="${ userClickHome == true}">
				<%@include file="home.jsp"%>
			</c:if>

			<c:if test="${ userClickAbout == true}">
				<%@include file="about.jsp"%>
			</c:if>

			<c:if test="${ userClickContact == true}">
				<%@include file="contact.jsp"%>
			</c:if>

		</div>

		<!-- Footer -->
		<%@include file="./shared/footer.jsp"%>

		<!-- Bootstrap core JavaScript -->
		<!-- script src="vendor/jquery/jquery.min.js"></script-->
		<script src="${js}/jquery.js"></script>
		<!-- script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script-->

		<script src="${js}/bootstrap.bundle.min.js"></script>

		<!-- Self coded Java Script -->

		<script src="${js}/myapp.js"></script>

	</div>

</body>

</html>
