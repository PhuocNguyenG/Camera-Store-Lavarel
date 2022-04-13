
<!DOCTYPE html>
<head>
<title>Trang Admin</title>
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
<link rel="stylesheet" href="{{asset('public/frontend/admin/css/font.css')}}" type="text/css"/>
<link href="{{asset('public/frontend/admin/css/font-awesome.css')}}" rel="stylesheet">
<link rel="stylesheet" href="{{asset('public/frontend/admin/css/morris.css')}}" type="text/css"/>
<!-- calendar -->
<link rel="stylesheet" href="{{asset('public/frontend/admin/css/monthly.css')}}">
<!-- //calendar -->
<!-- //font-awesome icons -->
<script src="{{asset('public/frontend/admin/js/jquery2.0.3.min.js')}}"></script>
<script src="{{asset('public/frontend/admin/js/raphael-min.js')}}"></script>
<script src="{{asset('public/frontend/admin/js/morris.js')}}"></script>
</head>
<body>
<section id="container">
<!--header start-->
<header class="header fixed-top clearfix">
<!--logo start-->
<div class="brand">
    <a href="{{URL('dashboard')}}" class="logo">
        Hyper
    </a>
    <div class="sidebar-toggle-box">
        <div class="fa fa-bars"></div>
    </div>
</div>

<div class="top-nav clearfix">
    <!--search & user info start-->
    <ul class="nav pull-right top-menu">
        <li>
            <input type="text" class="form-control search" placeholder=" Search">
        </li>
        <!-- user login dropdown start-->
        <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                <img alt="" src="{{asset('public/frontend/admin/images/5.png')}}">
                <span class="username">
                	<?php
					$name = Session::get('admin_name');
					if($name)
					{
					echo $name;
				}
				?></span>
                <b class="caret"></b>
            </a>
            <ul class="dropdown-menu extended logout">
{{--                <li><a href="#"><i class=" fa fa-suitcase"></i>Profile</a></li>--}}
{{--                <li><a href="#"><i class="fa fa-cog"></i> Settings</a></li>--}}
                <li><a href="{{URL('/logout')}}"><i class="fa fa-key"></i>Đăng xuất</a></li>
            </ul>
        </li>
        <!-- user login dropdown end -->

    </ul>
    <!--search & user info end-->
</div>
</header>
<!--header end-->
<!--sidebar start-->
<aside>
    <div id="sidebar" class="nav-collapse">
        <!-- sidebar menu start-->
        <div class="leftside-navigation">
            <ul class="sidebar-menu" id="nav-accordion">
                <li>
                    <a class="active" href="{{URL('/dashboard')}}">
                        <i class="fa fa-dashboard"></i>
                        <span>Tổng quan</span>
                    </a>
                </li>

                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-book"></i>
                        <span>Danh mục sản phẩm</span>
                    </a>
                    <ul class="sub">
						<li><a href="{{URL('/add-category-product')}}">Thêm danh mục sản phẩm</a></li>
						<li><a href="{{URL('/all-category-product')}}">Liệt kê danh mục sản phẩm</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-book"></i>
                        <span>Thương hiệu sản phẩm</span>
                    </a>
                    <ul class="sub">
						<li><a href="{{URL('/add-brand-product')}}">Thêm thương hiệu sản phẩm</a></li>
						<li><a href="{{URL('/all-brand-product')}}">Liệt kê thương hiệu sản phẩm</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-book"></i>
                        <span>Sản phẩm</span>
                    </a>
                    <ul class="sub">
						<li><a href="{{URL('/add-product')}}">Thêm sản phẩm</a></li>
						<li><a href="{{URL('/all-product')}}">Liệt kê sản phẩm</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-book"></i>
                        <span>Tin Tức</span>
                    </a>
                    <ul class="sub">
						<li><a href="{{URL('/add-news')}}">Thêm tin tức</a></li>
						<li><a href="{{URL('/all-news')}}">Liệt kê tin tức</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-book"></i>
                        <span>Liên hệ</span>
                    </a>
                    <ul class="sub">
						<li><a href="{{URL('/add-contact')}}">Thêm thông tin liên hệ</a></li>
						<li><a href="{{URL('/all-contact')}}">Liệt kê thông tin liên hệ</a></li>
                    </ul>
                </li>

            </ul>
        </div>
        <!-- sidebar menu end-->
    </div>
</aside>
<!--sidebar end-->
<!--main content start-->
<section id="main-content">
	<section class="wrapper">
        @yield('admin_content')
</section>
</section>
<!--main content end-->
</section>
<script src="{{asset('public/frontend/admin/js/bootstrap.js')}}"></script>
<script src="{{asset('public/frontend/admin/js/jquery.dcjqaccordion.2.7.js')}}"></script>
<script src="{{asset('public/frontend/admin/js/scripts.js')}}"></script>
<script src="{{asset('public/frontend/admin/js/jquery.slimscroll.js')}}"></script>
<script src="{{asset('public/frontend/admin/js/jquery.nicescroll.js')}}"></script>
<script src="{{asset('public/frontend/admin/ckeditor/ckeditor.js')}}"></script>
<script type="text/javascript"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script>
	CKEDITOR.replace('ckeditor1');
	CKEDITOR.replace('ckeditor2');
	CKEDITOR.replace('ckeditor3');
	CKEDITOR.replace('ckeditor4');
	CKEDITOR.replace('ckeditor5');
</script>
<!-- morris JavaScript -->
<script>
	$(document).ready(function() {
		//BOX BUTTON SHOW AND CLOSE
	   jQuery('.small-graph-box').hover(function() {
		  jQuery(this).find('.box-button').fadeIn('fast');
	   }, function() {
		  jQuery(this).find('.box-button').fadeOut('fast');
	   });
	   jQuery('.small-graph-box .box-close').click(function() {
		  jQuery(this).closest('.small-graph-box').fadeOut(200);
		  return false;
	   });

	});
	</script>
</body>
