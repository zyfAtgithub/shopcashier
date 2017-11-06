<%@ page contentType="text/html; charset=UTF-8"%>
<html lang="zh">
<head>
	<title>收银台</title>
	<link rel="stylesheet" href="webResources/plugins/bootstrap/3.3.7/css/bootstrap.min.css">
	<style type="text/css">
		.panel>table.table>tbody>tr>th, .panel>table.table>tbody>tr>td {
			font-size: 14px;
		}
		.branch-nav-top{
		    font-size: 13px;
		    display: block;
		    color: #9d9d9d;
		    padding: 15px 15px;
		}
		.content{
			margin-top:60px;
		}
	</style>
</head>

<body>
	<nav class="navbar navbar-inverse" role="navigation">
	    <div class="container-fluid"> 
	        <div class="navbar-header"> 
				<a href="#" class="navbar-brand">
				<img src="webResources/images/logo1.png" style="max-width:100px;margin-top:-7px;" src="...">
				</a>
	        </div> 
	        <ul class="nav navbar-nav navbar-right"> 
	            <li><span class="branch-nav-top"><span class="glyphicon glyphicon-flag"></span> 百悦广场水果店</span></li> 
	            <li><a href="#"><span class="glyphicon glyphicon-user"></span>李华</a></li> 
	            <li><a href="#"><span class="glyphicon glyphicon-log-out"></span>退出</a></li> 
	        </ul> 
	    </div> 
	</nav>
	<div class="container">
		<div class="row">
			<div class="col-lg-9">
				<div class="panel panel-success">
					<div class="panel-heading">
						<span class="glyphicon glyphicon-shopping-cart"></span> 消费信息
					</div>
					<table class="table">
						<thead>
							<tr>
								<th>序号</th>
								<th>商品条形码</th>
								<th>商品名称</th>
								<th>单价</th>
								<th>数量</th>
								<th>小计</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th>1</th>
								<td>6922868286096</td>
								<td>芬达</td>
								<td>4.00</td>
								<td>3</td>
								<td>12.00</td>
								<td><button type="button" class="btn btn-xs btn-danger">删除</button></td>
							</tr>
							<tr>
								<th>2</th>
								<td>6909995113709</td>
								<td>旺旺小小酥</td>
								<td>11.50</td>
								<td>1</td>
								<td>9.50</td>
								<td><button type="button" class="btn btn-xs btn-danger">删除</button></td>
							</tr>
							<tr>
								<th>3</th>
								<td>6924187832657</td>
								<td>恰恰香瓜子</td>
								<td>9.50</td>
								<td>1</td>
								<td>9.50</td>
								<td><button type="button" class="btn btn-xs btn-danger">删除</button></td>
							</tr>
							<tr>
								<th>4</th>
								<td>69012941528</td>
								<td>六神花露水</td>
								<td>12.30</td>
								<td>1</td>
								<td>12.30</td>
								<td><button type="button" class="btn btn-xs btn-danger">删除</button></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="col-lg-3">
				<div class="panel panel-info">
					<div class="panel-heading" style="">
						<span class="glyphicon glyphicon-user"></span>会员信息
					</div>
					<table class="table table-bordered table-hover table-condensed">
						<tbody>
							<tr class="">
								<th>会员姓名</th>
								<td>王晓雨</td>
							</tr>
							<tr class="">
								<th>A类积分</th>
								<td>1360</td>
							</tr>
							<tr class="">
								<th>B类积分</th>
								<td>200</td>
							</tr>
							<tr class="">
								<th>C类积分</th>
								<td>160</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-lg-12" style="height:100px;border:1px solid gray;">
			</div>
		</div>
	</div>
</body>

<script type="text/javascript" src="webResources/js/jquery-2.1.1.min.js"></script>
<script type="text/javascript"
	src="webResources/plugins/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</html>