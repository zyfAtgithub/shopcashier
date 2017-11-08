<%@ page contentType="text/html; charset=UTF-8"%>
<link rel="stylesheet" href="webResources/frameworks/58/css/bootstrap-table.css">
<script src="webResources/frameworks/58/js/bootstrap-table.js"></script>
<style type="text/css">
	#dataTb .th-inner {
	    padding: 8px 0;
	    background: #0078D7;
	    font-size: 16px;
	    color: white;
		text-align: center;
	} 
	.clearfix{
   		height: 0px;
	}
</style>
	<table id="dataTb"></table>
<div class="container-fluid">
    <div class="row-fluid">
      <div class="span3">
        <div class="widget-box">
            <div class="widget-title"> <span class="icon"> <i class="icon-list"></i> </span>
            	<h5>One third width <code>class=Span4</code></h5>
          </div>
          <div class="widget-content nopadding">
            <table class="table table-bordered">
              <thead>
              </thead>
              <tbody>
                <tr>
                  <td>会员名称</td>
                  <td>李云龙</td>
                </tr>
                <tr>
                  <td>A类积分</td>
                  <td class="taskStatus"><span class="done">129</span></td>
                </tr>
                <tr>
                  <td>B类积分</td>
                  <td class="taskStatus"><span class="done">233</span></td>
                </tr>
                <tr>
                  <td>C类积分</td>
                  <td class="taskStatus"><span class="done">138</span></td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
<script>
$('#dataTb').bootstrapTable({
    url: 'cashier.json',
    height:300,
    columns:[
    	{
    		field:"index",
    		title:"序号",
    		align:"center",
    		width:100,
    	},
    	{
    		field:"barcode",
    		title:"商品条形码",
    		align:"center",
    		width:200,
    	},
    	{
    		field:"proname",
    		title:"商品名称",
    		align:"center",
    		width:200,
    	},
    	{
    		field:"price",
    		title:"单价（元）",
    		align:"center",
    		width:200,
    	},
    	{
    		field:"count",
    		title:"数量",
    		align:"center",
    		width:200,
    		formatter:function(value, row){
    			var editElem = '<input type="number" class="form-control input-positive" min="1" ' +
    			'style="width: 100%; height: 100%; margin: 0px;" value="'+value+'" name="count"'+
    			' onkeyup="forPositiveInt(this);" onblur="forPositiveInt(this);"/>';
    			return editElem;
    		}
    	},
    	{
    		field:"subtotal",
    		title:"小计",
    		align:"center",
    		width:200,
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
</script>