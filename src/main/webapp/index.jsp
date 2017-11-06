<%@ page contentType="text/html; charset=UTF-8"%>
<html lang="zh">
<head>
	<title>Home</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

	<link rel="stylesheet" href="webResources/frameworks/58/css/bootstrap.min.css" />
	<link rel="stylesheet" href="webResources/frameworks/58/css/bootstrap.min.css" />
	<link rel="stylesheet" href="webResources/frameworks/58/css/matrix-style.css" />
	<link rel="stylesheet" href="webResources/frameworks/58/css/matrix-media.css" />
	<link href="webResources/frameworks/58/font-awesome/css/font-awesome.css" rel="stylesheet" />
	<link rel="stylesheet" href="webResources/frameworks/58/css/jquery.gritter.css" />

	
	<style type="text/css">
		::-webkit-scrollbar{
		  display:none;
		}
		#sidebar {
			overflow: hidden;
			height:500px
		}
		#sidebar > ul {
			overflow-x: none;
			overflow-y: auto;
			height:500px;
			/**
			width: -webkit-calc(100% + 17px);
			width: -moz-calc(100% + 17px);
			width: calc(100% + 17px);
			*/
		}
		
		#main-page{
			padding: 5px 20px;
		}
	</style>
	
</head>
<body>
	
	<!--头部 图标-->
	<div id="header">
	  <h1><a href="#">shopCashier</a></h1>
	</div>
	<!--头部图标 end--> 

	<!--top-Header-menu-->
	<div id="user-nav" class="navbar navbar-inverse">
	  <ul class="nav">
	    <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">Welcome User</span><b class="caret"></b></a>
	      <ul class="dropdown-menu">
	        <li><a href="#"><i class="icon-user"></i> My Profile</a></li>
	        <li class="divider"></li>
	        <li><a href="#"><i class="icon-check"></i> My Tasks</a></li>
	        <li class="divider"></li>
	        <li><a href="login.html"><i class="icon-key"></i> Log Out</a></li>
	      </ul>
	    </li>
	    <li class="dropdown" id="menu-messages"><a href="#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle"><i class="icon icon-envelope"></i> <span class="text">Messages</span> <span class="label label-important">5</span> <b class="caret"></b></a>
	      <ul class="dropdown-menu">
	        <li><a class="sAdd" title="" href="#"><i class="icon-plus"></i> new message</a></li>
	        <li class="divider"></li>
	        <li><a class="sInbox" title="" href="#"><i class="icon-envelope"></i> inbox</a></li>
	        <li class="divider"></li>
	        <li><a class="sOutbox" title="" href="#"><i class="icon-arrow-up"></i> outbox</a></li>
	        <li class="divider"></li>
	        <li><a class="sTrash" title="" href="#"><i class="icon-trash"></i> trash</a></li>
	      </ul>
	    </li>
	    <li class=""><a title="" href="#"><i class="icon icon-cog"></i> <span class="text">Settings</span></a></li>
	    <li class=""><a title="" href="login.html"><i class="icon icon-share-alt"></i> <span class="text">Logout</span></a></li>
	  </ul>
	</div>
	<!--close-top-Header-menu-->
	
	<!--sidebar-menu-->
	<div id="sidebar">
		<ul>
			<li class="active"><a href="javascript:void" data-target="welcome.jsp"><i class="icon icon-home"></i> <span>首页</span></a> </li>
			<li> <a href="javascript:void" data-target="cashier.jsp"><i class="icon icon-shopping-cart"></i> <span>收银台</span></a> </li>
			<li> <a href="javascript:void" data-target="hello2.jsp"><i class="icon icon-inbox"></i> <span>Widgets</span></a> </li>
			<li><a href="javascript:void" data-target="hello3.jsp"><i class="icon icon-th"></i> <span>Tables</span></a></li>
			<li><a href="javascript:void" data-target="hello4.jsp"><i class="icon icon-fullscreen"></i> <span>Full width</span></a></li>
			<li class="submenu"> <a href="javascript:void"><i class="icon icon-th-list"></i> <span>Forms</span> <span class="label label-important">3</span></a>
				<ul>
					<li><a href="javascript:void" data-target="hello1.jsp">Basic Form</a></li>
					<li><a href="javascript:void" data-target="hello1.jsp">Form with Validation</a></li>
					<li><a href="javascript:void" data-target="hello1.jsp">Form with Wizard</a></li>
				</ul>
			</li>
			<li><a href="javascript:void" data-target="hello5.jsp"><i class="icon icon-tint"></i> <span>Buttons &amp; icons</span></a></li>
			<li><a href="javascript:void" data-target="hello5.jsp"><i class="icon icon-pencil"></i> <span>Eelements</span></a></li>
			<li class="submenu"> <a href="javascript:void"><i class="icon icon-file"></i> <span>Addons</span> <span class="label label-important">5</span></a>
				<ul>
					<li><a href="javascript:void">Dashboard2</a></li>
					<li><a href="javascript:void">Gallery</a></li>
					<li><a href="javascript:void">Calendar</a></li>
					<li><a href="javascript:void">Invoice</a></li>
					<li><a href="javascript:void">Chat option</a></li>
				</ul>
			</li>
			<li class="submenu"> <a href="#"><i class="icon icon-info-sign"></i> <span>Error</span> <span class="label label-important">4</span></a>
				<ul>
					<li><a href="javascript:void">Error 403</a></li>
					<li><a href="javascript:void">Error 404</a></li>
					<li><a href="javascript:void">Error 405</a></li>
					<li><a href="javascript:void">Error 500</a></li>
				</ul>
			</li>
		</ul>
	</div>
	<!--sidebar-menu-->

	<!--main-container-part-->
	<div id="content">
		<!--breadcrumbs-->
		<div id="content-header">
			<div id="breadcrumb">
				<a href="index.html" title="Go to Home" class="tip-bottom">
					<i class="icon-home"></i> 首页
				</a>
			</div>
		</div>
		<!--End-breadcrumbs-->
		<!--Action boxes-->
		<div id="main-page">
			<!--End-Action boxes-->  
			欢迎！！！
		</div>
	</div>

<!--end-main-container-part-->
	<script src="webResources/frameworks/58/js/excanvas.min.js"></script> 
	<script src="webResources/frameworks/58/js/jquery-2.2.2.min.js"></script> 
	<script src="webResources/frameworks/58/js/jquery.ui.custom.js"></script> 
	<script src="webResources/frameworks/58/js/bootstrap.min.js"></script> 
	
	<script type="text/javascript">
		$(function(){
			$("#sidebar>ul>li>a").click(function(event){
				event.preventDefault();
				$("#sidebar>ul>li").removeClass('active');
				$(this).parent().addClass('active');
				var target = $(this).attr("data-target");
				$("#main-page").load(target);
				
				var cur = $("#content>#content-header>#breadcrumb>a.current")[0];
				if ("welcome.jsp" != target) {
					if (cur) {
						$(cur).html($(this).children("span:eq(0)").html());
					}
					else {
						cur = '<a href="#" class="current">'+ $(this).children("span:eq(0)").html() +'</a>';
						$("#content>#content-header>#breadcrumb").append(cur);
					}
				}
				else if (cur){
					$("#content>#content-header>#breadcrumb").remove(cur);
				}
			});
			$("#main-page").load("welcome.jsp");
			
		});
	</script>
</body>
</html>
