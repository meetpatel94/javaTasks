 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Change Password</title>
</head>
<body>
<h2>Change Password</h2>
	<form action="updatepassword" method="post">
	 
		Email: <input type="text" name="email"/><br><br> 
		
				OTP: <input type="text" name="otp"/><br><br> 
		
		New Password: <input type="password" name="password"/><br><br> 
		Confirm Password: <input type="password" name="confirmPassword"/><br><br> 
	
		<input type="submit" value="Update Password"/>
	${error }
	</form>
</body>
</html> --%>
<!DOCTYPE html>
	<html lang="en">
	  <!--begin::Head-->
	  <head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>Change Password</title>
		<!--begin::Primary Meta Tags-->
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<meta name="title" content="AdminLTE 4 | Register Page v2" />
		<meta name="author" content="ColorlibHQ" />
		<meta
		  name="description"
		  content="AdminLTE is a Free Bootstrap 5 Admin Dashboard, 30 example pages using Vanilla JS."
		/>
		<meta
		  name="keywords"
		  content="bootstrap 5, bootstrap, bootstrap 5 admin dashboard, bootstrap 5 dashboard, bootstrap 5 charts, bootstrap 5 calendar, bootstrap 5 datepicker, bootstrap 5 tables, bootstrap 5 datatable, vanilla js datatable, colorlibhq, colorlibhq dashboard, colorlibhq admin dashboard"
		/>
		<!--end::Primary Meta Tags-->
		<!--begin::Fonts-->
		<link
		  rel="stylesheet"
		  href="https://cdn.jsdelivr.net/npm/@fontsource/source-sans-3@5.0.12/index.css"
		  integrity="sha256-tXJfXfp6Ewt1ilPzLDtQnJV4hclT9XuaZUKyUvmyr+Q="
		  crossorigin="anonymous"
		/>
		<!--end::Fonts-->
		<!--begin::Third Party Plugin(OverlayScrollbars)-->
		<link
		  rel="stylesheet"
		  href="https://cdn.jsdelivr.net/npm/overlayscrollbars@2.10.1/styles/overlayscrollbars.min.css"
		  integrity="sha256-tZHrRjVqNSRyWg2wbppGnT833E/Ys0DHWGwT04GiqQg="
		  crossorigin="anonymous"
		/>
		<!--end::Third Party Plugin(OverlayScrollbars)-->
		<!--begin::Third Party Plugin(Bootstrap Icons)-->
		<link
		  rel="stylesheet"
		  href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"
		  integrity="sha256-9kPW/n5nn53j4WMRYAxe9c1rCY96Oogo/MKSVdKzPmI="
		  crossorigin="anonymous"
		/>
		<!--end::Third Party Plugin(Bootstrap Icons)-->
		<!--begin::Required Plugin(AdminLTE)-->
		<link rel="stylesheet" href="./dist/css/adminlte.css" />
		<!--end::Required Plugin(AdminLTE)-->
	  </head>
	  <!--end::Head-->
	  <!--begin::Body-->
	  <body class="register-page bg-body-secondary ">
		<div style="margin-top: 20px; margin-bottom: 20px;">
		<div class="register-box"  >
		  <!-- /.register-logo -->
		  <div class="card card-outline card-primary">
			<div class="card-header">
			  <a
				href="../index2.html"
				class="link-dark text-center link-offset-2 link-opacity-100 link-opacity-50-hover">
				<h1 class="mb-0"><b>Change Password</b></h1>
			  </a>
			</div>
			<div class="card-body register-card-body">
			  <p class="register-box-msg">Enter OTP and Change Your Password</p>
			  <form action="updatepassword" method="post">
							  
				<!-- Email -->
				<div class="input-group mb-1">
				  <div class="form-floating">
					<input id="registerEmail" type="email" class="form-control" placeholder="" name="email" />
					<label for="registerEmail">Email</label>
				  </div>
				  <div class="input-group-text"><span class="bi bi-envelope-fill"></span></div>
				</div>

				<!-- OTP -->
				<div class="input-group mb-1">
					<div class="form-floating">
					  <input id="registerEmail" type="text" class="form-control" placeholder="" name="otp" />
					  <label for="registerEmail">OTP</label>
					</div>
					<div class="input-group-text"><span class="bi bi-key-fill"></span></div>
				  </div>
	
				<!-- Password -->
				<div class="input-group mb-1">
				  <div class="form-floating">
					<input id="registerPassword" type="password" class="form-control" placeholder="" name="password" />
					<label for="registerPassword">Password</label>
				  </div>
				  <div class="input-group-text"><span class="bi bi-lock-fill"></span></div>
				</div>
				
				<!-- confirm Password -->
				<div class="input-group mb-1">
				  <div class="form-floating">
					<input id="registerPassword" type="password" class="form-control" placeholder="" name="confirmPassword" />
					<label for="registerPassword">Confirm Password</label>
				  </div>
				  <!-- <div class="input-group-text"><span class="bi bi-lock-fill"></span></div> -->
				</div>
				<p style="position: fixed; top: auto;">${error }</p>
				
				<!--begin::Row-->
				<div class="row">
				  <div class="col-4 d-inline-flex align-items-center">
				  </div>
				  <!-- /.col -->
				  <div class="col-4"><br>
					<div class="d-grid gap-2">
					  <button type="submit" class="btn btn-primary" style="background-color: green;">Submit</button>
					</div>
				  </div>
				  <!-- /.col -->
				</div>
				<!--end::Row-->
			  </form>
			  <br>
			  <!-- /.social-auth-links -->
			  <p class="mb-0">
				<a href="login" class="link-primary text-center"> I already have a SignUp </a>
			  </p>
			</div>
			<!-- /.register-card-body -->
		  </div>
		  <div class="card card-outline card-primary"></div>
		</div>
	</div>
		<!-- /.register-box -->
		<!--begin::Third Party Plugin(OverlayScrollbars)-->
		<script
		  src="https://cdn.jsdelivr.net/npm/overlayscrollbars@2.10.1/browser/overlayscrollbars.browser.es6.min.js"
		  integrity="sha256-dghWARbRe2eLlIJ56wNB+b760ywulqK3DzZYEpsg2fQ="
		  crossorigin="anonymous"
		></script>
		<!--end::Third Party Plugin(OverlayScrollbars)--><!--begin::Required Plugin(popperjs for Bootstrap 5)-->
		<script
		  src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
		  integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
		  crossorigin="anonymous"
		></script>
		<!--end::Required Plugin(popperjs for Bootstrap 5)--><!--begin::Required Plugin(Bootstrap 5)-->
		<script
		  src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
		  integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
		  crossorigin="anonymous"
		></script>
		<!--end::Required Plugin(Bootstrap 5)--><!--begin::Required Plugin(AdminLTE)-->
		<script src="../../../dist/js/adminlte.js"></script>
		<!--end::Required Plugin(AdminLTE)--><!--begin::OverlayScrollbars Configure-->
		<script>
		  const SELECTOR_SIDEBAR_WRAPPER = '.sidebar-wrapper';
		  const Default = {
			scrollbarTheme: 'os-theme-light',
			scrollbarAutoHide: 'leave',
			scrollbarClickScroll: true,
		  };
		  document.addEventListener('DOMContentLoaded', function () {
			const sidebarWrapper = document.querySelector(SELECTOR_SIDEBAR_WRAPPER);
			if (sidebarWrapper && typeof OverlayScrollbarsGlobal?.OverlayScrollbars !== 'undefined') {
			  OverlayScrollbarsGlobal.OverlayScrollbars(sidebarWrapper, {
				scrollbars: {
				  theme: Default.scrollbarTheme,
				  autoHide: Default.scrollbarAutoHide,
				  clickScroll: Default.scrollbarClickScroll,
				},
			  });
			}
		  });
		</script>
		<!--end::OverlayScrollbars Configure-->
		<!--end::Script-->
	  </body>
	  <!--end::Body-->
	</html>
	