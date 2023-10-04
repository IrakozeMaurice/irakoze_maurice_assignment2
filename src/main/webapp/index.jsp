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
<title>Student admission system</title>
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
		<div class="auth_links">
			<a href="/login" class="btn"><fmt:message key="label.login" /></a> <a href="/register"
				class="btn"><fmt:message key="label.register" /></a>
		</div>
	</div>
	<div class="container content mt-3">
		<h1>
			<fmt:message key="label.welcome" />
		</h1>
		<div>Lorem ipsum dolor sit amet consectetur adipisicing elit.
			Totam atque architecto labore et sequi fugit officiis tempora quod
			eaque fugiat quidem harum, beatae quae quas mollitia, consequuntur
			facilis rerum laudantium.</div>
	</div>

	<script src="js/app.js"></script>
</body>
</html>
