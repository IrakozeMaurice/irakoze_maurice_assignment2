<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Forgot password</title>
<link href="css/app.css" rel="stylesheet" type="text/css"/>
</head>
<body>
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
	<div class="container content">
		<div id="login_error" class="none"></div>
		<div class="form_login">
			<h1>Forgot password</h1>
			<p>
				Reset your password or <a href="/login">Sign in to your account</a>
			</p>
			<form method="POST" action="/forgot" id="forgot_form">
				<div>
					<label for="student_id">Student ID</label> <input type="text"
						id="student_id" name="student_id" />
				</div>
				<br />
				<div>
					<label for="password">Password</label> <input type="password"
						id="password" name="password" />
				</div>
				<br />
				<div>
					<button class="btn btn-block" type="submit">Reset password</button>
				</div>
			</form>
		</div>
	</div>

	<script src="js/auth.js"></script>
	<script src="js/app.js"></script>
</body>
</html>
