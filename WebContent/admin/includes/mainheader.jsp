

<%@page import="com.model.Instructor"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>OASAES~Platform</title>
<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
<style type="text/css">
body {
	background: url("../img/bg.png") no-repeat;
	background-size: 100%;
	font-family: serif;
	color: black;
}
</style>
</head>
<body>

	<!-- <img alt="header" src="img/hr.jpg" style="height: 100px;"> -->

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark"> <a
		class="navbar-brand" href="aindex.jsp">OASaAES</a>

	<div class="collapse navbar-collapse" id="navbarColor02">
		<ul class="navbar-nav mr-auto">

			<li class="nav-item"><a class="nav-link" href="viewAccounts.jsp">Account</a></li>
			<li class="nav-item"><a class="nav-link"
				href="viewDepartment.jsp">Department</a></li>
			<li class="nav-item"><a class="nav-link" href="viewStudent.jsp">Student</a></li>
			<li class="nav-item"><a class="nav-link" href="viewProfile.jsp">My
					Profile</a></li>
		</ul>
		<!-- <form class="form-inline my-2 my-lg-0">
			<input class="form-control mr-sm-2" placeholder="Search" type="text">
			<button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
		</form> -->
		<ul class="nav navbar-nav navbar-right">
			<%
				String admin = (String) session.getAttribute("adminUser");
				if (admin != null && admin != "") {
			%>

			<li style="float: right; margin-top: 7px; color: red;">Welcome:
				<a href="viewProfile.jsp"><%=admin%></a>
			</li>
			<%
				} else {
			%>
			<li style="float: right; margin-top: 7px; color: red;">Welcome:
				<a href="logout.jsp">Session Destroyed, Re-Login.</a>
			</li>
			<%
				}
			%>
			<li class="nav-item"><a class="nav-link" href="logout.jsp">Logout</a></li>
		</ul>
	</div>
	</nav>