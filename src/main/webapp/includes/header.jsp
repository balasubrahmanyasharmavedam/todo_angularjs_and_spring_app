<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html SYSTEM "about:legacy-compat">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<div id="all">

	<header>
		<!-- *** TOP ***
_________________________________________________________ -->
		

<!-- *** TOP END *** -->
<!-- *** NAVBAR ***
    _________________________________________________________ -->

<div class="navbar-affixed-top" data-spy="affix" data-offset-top="200">

	<div class="navbar navbar-default yamm" role="navigation" id="navbar">

		<div class="container">
			<div class="navbar-header">

				<a class="navbar-brand home" href="index"> <img
					src="<c:url value="/resources/img/mds.png"/>" alt="my dream store logo"
					class="hidden-xs hidden-sm"> <img
					src="<c:url value="/resources/img/mdssmall.png"/>"
					alt="mydream store logo" class="visible-xs visible-sm"><span
					class="sr-only">aegean - go to homepage</span>
				</a>
				<div class="navbar-buttons">
					<button type="button" class="navbar-toggle btn-template-main"
						data-toggle="collapse" data-target="#navigation">
						<span class="sr-only">Toggle navigation</span> <i
							class="fa fa-align-justify"></i>
					</button>
				</div>
			</div>
			<!--/.navbar-header -->

			<div class="navbar-collapse collapse" id="navigation">

				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown active"><a href="javascript: void(0)"
						class="dropdown-toggle" data-toggle="dropdown">More <b
							class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="<c:url value="https://mydreamstore.in/"/>" target="_blank">MyDreamStore</a></li>
							<li><a href="<c:url value="https://mydreamstore.in/design-tool"/>" target="_blank">DesignYourOwn</a></li>

						</ul></li>


				
					
					<c:choose>
						<c:when test="${loggedin==true}">
							<li class="dropdown"><a href="javascript: void(0)"
								class="dropdown-toggle" data-toggle="dropdown">${user1.email}<b
									class="caret"></b>
							</a> <c:choose>
									<c:when test="${isuser==true}">
										<ul class="dropdown-menu">
											<li><a href="<c:url value="contact"/>">your orders</a></li>
											<li><a href="<c:url value="contact"/>">your profile</a></li>
										</ul>
									</c:when>
								</c:choose></li>

						</c:when>
					</c:choose>
			</div>
			<!--/.nav-collapse -->



			<div class="collapse clearfix" id="search">

				<form class="navbar-form" role="search">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Search">
						<span class="input-group-btn">

							<button type="submit" class="btn btn-template-main">
								<i class="fa fa-search"></i>
							</button>

						</span>
					</div>
				</form>

			</div>
			<!--/.nav-collapse -->

		</div>


	</div>
	<!-- /#navbar -->

</div>

<!-- *** NAVBAR END *** -->
</header>

<!-- *** LOGIN MODAL ***
_________________________________________________________ -->

<div class="modal fade" id="login-modal" tabindex="-1" role="dialog"
	aria-labelledby="Login" aria-hidden="true">
	<div class="modal-dialog modal-sm">

		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="Login">Customer login</h4>
			</div>
			<div class="modal-body">
				<form action="login" method="post">
					<div class="form-group">
						<input type="text" class="form-control" id="email_modal"
							name="email" placeholder="username">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" id="password_modal"
							name="password" placeholder="password">
					</div>

					<p class="text-center">
						<button class="btn btn-template-main">
							<i class="fa fa-sign-in"></i> Log in
						</button>
					</p>

				</form>

				<p class="text-center text-muted">Not registered yet?</p>
				<p class="text-center text-muted">
					<a href="<c:url value="register"/>"><strong>Register
							now</strong></a>! It is easy and done in 1&nbsp;minute and gives you access to
					special discounts and much more!
				</p>

			</div>
		</div>
	</div>
</div>


<!-- *** LOGIN MODAL END *** -->

</html>
