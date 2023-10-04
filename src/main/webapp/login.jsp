<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>

<fmt:setLocale value="${param.lang}" />
<fmt:setBundle basename="messages" />

<html lang="${param.lang}">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Login</title>
<link href="css/app.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="container lang">
		<a href="?lang=en"><fmt:message key="label.lang.en" /></a> <a
			href="?lang=fr"><fmt:message key="label.lang.fr" /></a>
	</div>
	<div class="container topbar flex">
		<div>
			<img src="img/logo.png" width="50" height="50" alt="college logo" />
		</div>
		<div>
			<p>123 Awd ave Kigali 8577</p>
			<p>email@example.ocm</p>
			<p>(250)788 45200</p>
		</div>
	</div>
	<div class="content">
		<div class="form_login">
			<h1>
				<fmt:message key="label.loginTitle" />
			</h1>
			<form method="POST" action="/login" id="login_form">
				<div>
					<label for="student_id"><fmt:message key="label.studentId" /></label> <input type="text"
						id="student_id" name="student_id" />
				</div>
				<br />
				<div>
					<label for="password"><fmt:message key="label.password" /></label> <input type="password"
						id="password" name="password" />
				</div>
				<br />
				<div>
					<button class="btn btn-block" type="submit"><fmt:message key="label.login" /></button>
				</div>
			</form>
		</div>
	</div>

	<script src="js/auth.js"></script>
	<script src="js/app.js"></script>
</body>
</html>
