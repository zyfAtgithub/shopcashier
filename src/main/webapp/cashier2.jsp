<%@ page contentType="text/html; charset=UTF-8"%>
<html lang="zh">
<head>
	<title>收银台</title>
	<link rel="stylesheet" href="webResources/plugins/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="webResources/plugins/bootstrap-table/bootstrap-table.min.css">
	<link rel="stylesheet" href="webResources/plugins/layui/css/layui.css">
	<style type="text/css">
		.panel>table.table>tbody>tr>th, .panel>table.table>tbody>tr>td {
			font-size: 14px;
		}
		.branch-nav-top{
		    font-size: 13px;
		    display: block;
		    color: #ffffff;
		    padding: 15px 15px;
		}
		.content{
			margin-top:60px;
		}
		
		nav.navbar-inverse {
		    border:none;
		    border-radius: 0px;
		}
		
		.panel-shop-cart {
			height:350px;
		}
		.balance-info{
			display:none;
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
				<div class="panel panel-success panel-shop-cart">
					<div class="panel-heading">
						<span class="glyphicon glyphicon-shopping-cart"></span> 消费信息
						<button type="button" class="btn btn-default pull-right" id="refresh-btn" title="刷新">
						  <span class="glyphicon glyphicon-refresh"></span>
						</button>
					</div>
					<table id="dataTb"></table>
				</div>
			</div>
			<div class="col-lg-3">
				<div class="panel panel-info">
					<div class="panel-heading" style="">
						<div class="input-group col-md-12" style="margin-top:0px positon:relative">  
					       <input type="text" class="form-control"placeholder="请输入会员卡号" />  
					            <span class="input-group-btn">  
					               <button class="btn btn-info btn-search">
					               		<span class="glyphicon glyphicon-search"></span>&nbsp;
					               	</button>  
					            </span>  
					 	</div>  
					</div>
					<table class="table table-bordered table-hover table-condensed">
						<tbody>
							<tr class="">
								<th>会员号</th>
								<td>56089760611</td>
							</tr>
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
				
				<div class="panel panel-info">
					<div class="panel-heading" style="">
						<span class="glyphicon glyphicon-pencil"></span> 结算
					</div>
					<table class="table table-bordered">
						<tbody>
							<tr>
								<th>应收</th>
								<td>1289.00</td>
								<td rowspan="3" align="center" valign="middle" style="padding: 30px">
									<button class="btn btn-danger btn-lg" id="balance">结  算</button>
								</td>
							</tr>
							<tr>
								<th>实收</th>
								<td>1300.00</td>
							</tr>
							<tr>
								<th>找零</th>
								<td>11.00</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-lg-3">
			
			</div>
			<div class="col-lg-4">
				<div class="alert alert-success alert-dismissable balance-info">
					结算完成！  
				</div>
			</div>
		</div>
	</div>
</body>

<script type="text/javascript" src="webResources/js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="webResources/plugins/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="webResources/plugins/bootstrap-table/bootstrap-table.min.js"></script>
<script src="webResources/plugins/bootstrap-table/bootstrap-table-zh-CN.min.js"></script>
<script src="webResources/plugins/layui/layui.js"></script>
<script type="text/javascript">
	$(function(){
		$("#balance").click(function(){
			$(".balance-info").fadeIn();
			$(".balance-info").fadeOut(6000);
		});
		
	});

	$('#dataTb').bootstrapTable({
	    url: 'cashier.json',
	    height:309,
	    showFooter:true,
	    iconsPrefix:'glyphicon',
	    striped:true,
	    columns:[
	    	{
	    		field:"index",
	    		title:"序号",
	    		width:50,
	    		align:"center",
	    		valign:'middle',
	    	},
	    	{
	    		field:"barcode",
	    		title:"商品条形码",
	    		width:100,
	    		align:"center",
	    		valign:'middle',
	    	},
	    	{
	    		field:"proname",
	    		title:"商品名称",
	    		width:160,
	    		align:"center",
	    		valign:'middle',
	    	},
	    	{
	    		field:"price",
	    		title:"单价（元）",
	    		width:120,
	    		align:"center",
	    		valign:'middle',
	    	},
	    	{
	    		field:"count",
	    		title:"数量",
	    		align:"center",
	    		valign:'middle',
	    		width:120,
	    		formatter:function(value, row, index){
	    			var editElem = '<input type="number" data-index='+index+' class="form-control" min="1" ' +
	    			'style="height: 100%; margin: 0px;" value="'+value+'" name="count"'+
	    			' onkeyup="forPositiveInt(this);" onblur="forPositiveInt(this);" onchange="countChg(this);"/>';
	    			return editElem;
	    		},
	    		footerFormatter:'总计',
	    	},
	    	{
	    		field:"subtotal",
	    		title:"小计",
	    		width:160,
	    		align:"center",
	    		valign:'middle',
	    		formatter:function(value, row, index){
	    			var subtotal = Number(row.price) * Number(row.count);
	    			return  subtotal;
	    		},
	    		footerFormatter:function(value){
	    			var total = 0;
	    			for (var i in value) {
	    				var subtotal = Number(value[i].price) * Number(value[i].count);
	    				total += subtotal;
	    			}
	    			return total;
	    		},
	    	},
	    	{
	    		field:"operation",
	    		title:"操作",
	    		formatter:function(value, row, index){
	    			return '<button type="button" class="btn btn-xs btn-danger" onclick="delgoods('+index+');">删除</button>';
	    		},
	    		width:80,
	    		align:"center",
	    		valign:'middle',
	    	},
	    ],
	});
	
	//input正整数
	 function forPositiveInt(input) {
		if ($(input).val().length == 1) {
			$(input).val($(input).val().replace(/[^1-9]/g, '0'));
		} else {
			$(input).val($(input).val().replace(/\D/g, ''));
		}
		if (!$(input).val()) {//为空时，置1
			$(input).val(1);
		}
	 }
	
	//input change
	function countChg(input) {
		var index = $(input).attr('data-index');
		
		
	}
	
	function delgoods(index) {
		console.log(index);
	}
	
	$("#refresh-btn").click(function(){
		//$('#dataTb').refresh();
		$('#dataTb').bootstrapTable('refresh', {});
	});
</script>
</html>