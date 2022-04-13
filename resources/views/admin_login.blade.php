

<!DOCTYPE html>
<head>
<title>Trang quản lý Admin website HuGear</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="{{asset('public/frontend/admin/css/bootstrap.min.css')}}" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="{{asset('public/frontend/admin/css/style.css')}}" rel='stylesheet' type='text/css' />
<link href="{{asset('public/frontend/admin/css/style-responsive.css')}}" rel="stylesheet"/>
<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="css/font.css" type="text/css"/>
<link href="{{asset('public/frontend/admin/css/font-awesome.css')}}" rel="stylesheet">
<!-- //font-awesome icons -->
<script src="{{asset('public/frontend/admin/js/jquery2.0.3.min.js')}}"></script>
</head>
<body>
<div class="log-w3">
<div class="w3layouts-main">
	<h2>Đăng nhập</h2>

	<?php
	$message = Session::get('message');
	if($message){
		echo '<span class="text-alert">'.$message.'</span>';
		Session::put('message',null);
	}
	?>
		<form action="{{URL('/admin-dashboard')}}" method="post">
			{{ csrf_field() }}
			<input type="text" class="ggg" name="admin_email" placeholder="Nhập email" required="">
			<input type="password" class="ggg" name="admin_password" placeholder="Nhập mật khẩu" required="">
			<span><input type="checkbox" />Nhớ đăng nhập</span>
			<h6><a href="#">Quên mật khẩu</a></h6>
				<div class="clearfix"></div>
				<input type="submit" value="ĐĂNG NHẬP" name="login">
		</form>
</div>
</div>
<script src="{{asset('public/frontend/admin/js/bootstrap.js')}}"></script>
<script src="{{asset('public/frontend/admin/js/jquery.dcjqaccordion.2.7.js')}}"></script>
<script src="{{asset('public/frontend/admin/js/scripts.js')}}"></script>
<script src="{{asset('public/frontend/admin/js/jquery.slimscroll.js')}}"></script>
<script src="{{asset('public/frontend/admin/js/jquery.nicescroll.js')}}"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="{{asset('public/frontend/admin/js/jquery.scrollTo.js')}}"></script>
</body>
</html>
