<!DOCTYPE html>
<head>
	<meta charset="utf-8">
	<title>Medisen Medical</title>
	<meta name="description" content="">
	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- <link rel="shortcut icon" href="img/favicon.png"> -->

	<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700' rel='stylesheet'>

	<!-- Syntax Highlighter -->
	<link rel="stylesheet" type="text/css" href="syntax-highlighter/styles/shCore.css" media="all">
	<link rel="stylesheet" type="text/css" href="syntax-highlighter/styles/shThemeDefault.css" media="all">

	<!-- Font Awesome CSS-->
	<link rel="stylesheet" href="css/font-awesome.min.css">
	 <!-- Bootstrap CSS -->
	 <link rel="stylesheet" href="css/bootstrap.min.css">
	<!-- Normalize/Reset CSS-->
	<link rel="stylesheet" href="css/normalize.min.css">
	<!-- Main CSS-->
	<link rel="stylesheet" href="css/main.css">

</head>

<body>

	<aside class="left-sidebar">
		<div class="logo" style="text-align: center; padding-left: 0 !important;">
			<h1>admin panel</h1>
			<br><hr>
		</div>
		<br>
		<div style="text-align: center;">
			<h2  style="color: wheat;">profile</h2><br>
			<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTreksTEerNOVl1wm7JRykQifXUI_RKimR8jjtzG-e1AcyrTajW&usqp=CAU" alt="profile_picture" style="width: 250px; height: 300px;">
			<br><br>
			<h3 style="color: white;">name : </h3>
			<br>
			<h3 style="color: white;">email : </h3>
		</div>
		<br><br>
		<div class="doctor_procceses">
		    <p><a href="#">admins</a></p><br>
		    <p><a href="#">add admin</a></p><br>
			<p><a href="#">patients</a></p><br>
		    <p><a href="#">appointments</a></p><br>
	        <p><a href="#">contact messages</a></p><br>
		</div>
		<div id="admin_logout_btn">
			<a href="../views/index.php">log out</a>
		</div>
	</aside>

<!-- ressponsive panel -->
	<div class="responsive_logo">
		<h1>admin panel</h1>
		<br><hr>
	</div>
	<div class="responsive_panel">
		<br><br><br>
		<div class="responsive_doctor_profile">
			<h2  style="color: wheat;">profile</h2><br>
			<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTreksTEerNOVl1wm7JRykQifXUI_RKimR8jjtzG-e1AcyrTajW&usqp=CAU" alt="profile_picture" style="width: 100px; height: 100px;">
			<br><br>
			<h3 style="color: white;">name : </h3>
			<br>
			<h3 style="color: white;">email : </h3>
		</div>
		<br><br>
		<div class="responsive_doctor_procceses">
			<div id="inner">
			    <p><a href="#">admins</a></p><br>
		        <p><a href="#">add admin</a></p><br>
				<p><a href="#">patients</a></p><br>
				<p><a href="#">appointments</a></p><br>
				<p><a href="#">contact messages</a></p><br>
			</div>
		</div>
		<div id="responsive_admin_logout_btn">
			<a href="../views/index.php">log out</a>
		</div>
	</div>

	

		</body>
		</html>
