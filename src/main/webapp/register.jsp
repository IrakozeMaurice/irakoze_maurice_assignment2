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
<title>Sign up</title>
<link href="css/app.css" rel="stylesheet" type="text/css" />
</head>
<body>

	<div class="container lang">
		<a href="?lang=en"><fmt:message key="label.lang.en" /></a>
		<a href="?lang=fr"><fmt:message key="label.lang.fr" /></a>
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
	<div class="container">
		<h2><fmt:message key="label.register" /></h2>
		<form method="POST" action="/register" id="register_form"
			class="form_register box mt-3" enctype="multipart/form-data">

			<div class="form_control">
				<div>
					<label for="student_id"><fmt:message key="label.studentId" /></label> <input type="text"
						id="student_id" name="student_id" /> <span
						class="student_id format hidden">5 digits Example: 21435</span>
				</div>

				<div>
					<label for="firstname"><fmt:message key="label.firstname" /></label> <input type="text"
						id="firstname" name="firstname" /> <span
						class="firstname format hidden">at least 2 characters(max
						30)</span>
				</div>
				
				<div>
					<label for="lastname"><fmt:message key="label.lastname" /></label> <input type="text"
						id="lastname" name="lastname" /> <span
						class="lastname format hidden">at least 2 characters(max
						30)</span>
				</div>
			</div>

			<div class="form_control">
				<div>
					<label for="faculty"><fmt:message key="label.faculty" /></label> <select name="faculty"
						id="faculty">
						<option disabled selected hidden>Please select</option>
					</select>
				</div>

				<div>
					<label for="department"><fmt:message key="label.department" /></label> <select
						name="department" id="department">
						<option value="">Please select</option>
					</select>
				</div>
			</div>

			<div class="form_control">
				<div>
					<label for="address"><fmt:message key="label.address" /></label> <input type="text"
						id="address" name="address" /> <span
						class="address format hidden">at least 2 characters(max 30)</span>
				</div>

				<div>
					<label for="phone_number"><fmt:message key="label.phone" /></label> <input type="text"
						id="phone_number" name="phone_number" /> <span
						class="phone_number format hidden">10 digit phone number
						starting with 078, 079, 073 or 072</span>
				</div>

			</div>

			<div class="form_control">

				<div>
					<label for="email"><fmt:message key="label.email" /></label> <input type="text" id="email"
						name="email" /> <span class="email format hidden">Example:
						johndoe@example.com</span>
				</div>

				<div>
					<label for="password"><fmt:message key="label.password" /></label> <input type="password"
						id="password" name="password" /> <span
						class="password format hidden">at least 6 characters</span>
				</div>

				<div>
					<label for="confirm_password"><fmt:message key="label.passwordConfirm" /></label> <input
						type="password" id="confirm_password" name="confirm_password" />
					<span class="confirm_password format hidden">at least 6
						characters</span>
				</div>
			</div>

			<div class="form_control">

				<div>
					<label for="photo"><fmt:message key="label.photo" /></label>
					<input type="file" id="photo" name="photo" required/>
					<span class="photo format format_file hidden">
						<fmt:message key="label.photoMessage" />
					</span>
				</div>

				<div>
					<label for="diploma"><fmt:message key="label.diploma" /></label>
					<input type="file" id="diploma" name="diploma" required/>
					<span class="diploma format format_file hidden">
						<fmt:message key="label.diplomaMessage" />
					</span>
				</div>

			</div>


			<div class="form_control">
				<button class="btn btn-block" id="register_btn" type="submit">
					<fmt:message key="label.register" />
				</button>
			</div>
		</form>
	</div>

	<script src="js/app.js"></script>
</body>
</html>
