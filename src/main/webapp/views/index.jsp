<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html SYSTEM "about:legacy-compat">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="robots" content="all,follow">
<meta name="googlebot" content="index,follow,snippet,archive">
<meta name="viewport" content="width=device-width, initial-scale=1">



<title>MyToDo</title>

<meta name="keywords" content="">

<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,500,700,800'
	rel='stylesheet' type='text/css'>

<!-- Bootstrap and Font Awesome css -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- Css animations  -->
<link href="<c:url value="/resources/css/animate.css"/>"
	rel="stylesheet">

<!-- Theme stylesheet, if possible do not edit this stylesheet -->
<link href="<c:url value="/resources/css/style.default.css"/>"
	rel="stylesheet" id="theme-stylesheet">

<!-- Custom stylesheet - for your changes -->
<link href="<c:url value="/resources/css/custom.css"/>" rel="stylesheet">

<!-- Responsivity for older IE -->

<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>


<!-- Favicon and apple touch icons-->
<link rel="shortcut icon"
	href="<c:url value="/resources/img/favicon.ico"/>" type="image/x-icon" />
<link rel="apple-touch-icon" href="img/apple-touch-icon.ico" />
<link rel="apple-touch-icon" sizes="57x57"
	href="<c:url value="/resources/img/apple-touch-icon-57x57.ico"/>" />
<link rel="apple-touch-icon" sizes="72x72"
	href="<c:url value="/resources/img/apple-touch-icon-72x72.ico"/>" />
<link rel="apple-touch-icon" sizes="76x76"
	href="<c:url value="/resources/img/apple-touch-icon-76x76.ico"/>" />
<link rel="apple-touch-icon" sizes="114x114"
	href="<c:url value="/resources/img/apple-touch-icon-114x114.ico"/>" />
<link rel="apple-touch-icon" sizes="120x120"
	href="<c:url value="/resources/img/apple-touch-icon-120x120.ico"/>" />
<link rel="apple-touch-icon" sizes="144x144"
	href="<c:url value="/resources/img/apple-touch-icon-144x144.ico"/>" />
<link rel="apple-touch-icon" sizes="152x152"
	href="<c:url value="/resources/img/apple-touch-icon-152x152.ico"/>" />
<!-- owl carousel css -->

<link href="<c:url value="/resources/css/owl.carousel.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/owl.theme.css"/>"
	rel="stylesheet">
</head>

<body ng-app="toDoApp">
	<%@include file="/includes/header.jsp"%>


	<div id="heading-breadcrumbs">
		<div class="container">
			<div class="row">
				<div class="col-md-7">
					<h1>My List Todo</h1>
				</div>

			</div>
		</div>
	</div>

	<div id="content">
		<div class="container">
		<div class="row">
				<div class="col-md-7">
					<h1>Add Task Todo</h1>
				</div>

			</div>
		
			<form action="addtask" method="post">
				<div class="form-group">
					<label for="name-login">Title</label> <input type="text"
						class="form-control" name="title">
				</div>
				<div class="form-group">
					<label for="name-login">Description</label> <input type="text"
						class="form-control" name="description">
				</div>
				<div class="text-center">
					<button type="submit" class="btn btn-template-main">
						<i class="fa fa-user-md"></i> Add Task
					</button>
				</div>
			</form>

			<div class="row">

				<!-- *** LEFT COLUMN ***
			 _________________________________________________________ -->

				<div class="col-md-9" id="customer-orders">



					<div class="box">

						<div class="table-responsive" ng-controller="ToDoController">
							<table class="table table-hover">
								<thead>
									<tr>
										<th>Title</th>
										<th>Details</th>
										<th>Action</th>
										<th>Status</th>
										<th>Delete</th>
										
									</tr>
								</thead>

								<tbody ng-class="{disabled: todo.done}">
									<c:if test="${!empty todoList}">
										<c:forEach items="${todoList}" var="todo">
											<tr>
												<th>${todo.title}</th>
												<td>${todo.description}</td>
												<td><a href="<c:url value="completed"/>"
													class="label label-info">completed</a></td>
												<td><button class="label label-success"
														ng-show="!todo.done">Task Completed</button>
													<button class="label label-warning" ng-show="todo.done">Task
														Incomplete</button></td>
												<td><a href="<c:url value="${todo.id}"/>"
													class="label label-danger">delete</a></td>
												
											</tr>
										</c:forEach>
									</c:if>

								</tbody>

							</table>
						</div>
						<!-- /.table-responsive -->

					</div>
					<!-- /.box -->

				</div>
				<!-- /.col-md-9 -->

				<!-- *** LEFT COLUMN END *** -->


			</div>


		</div>
		<!-- /.container -->
	</div>
	<!-- /#content -->


	<!-- *** FOOTER ***
_________________________________________________________ -->
	<%@include file="/includes/footer.jsp"%>

	<!-- /#all -->

	<!-- #### JAVASCRIPT FILES ### -->

	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="js/jquery-1.11.0.min.js"><\/script>')
	</script>
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

	<script src="<c:url value="/resources/js/jquery.cookie.js"/>"></script>
	<script src="<c:url value="/resources/js/waypoints.min.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery.counterup.min.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery.parallax-1.1.3.js"/>"></script>
	<script src="<c:url value="/resources/js/front.js"/>"></script>



	<!-- owl carousel -->
	<script src="<c:url value="/resources/js/owl.carousel.min.js"/>"></script>
	<script
		src="<c:url value="https:s://ajax.googleapis.com/ajax/libs/angularjs/1.3.3/angular.min.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/app.js"/>"></script>


</body>

</html>
