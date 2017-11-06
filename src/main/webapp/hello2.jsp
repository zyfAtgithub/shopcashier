<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html> 
<html> 
<head> 
<title></title> 
<meta charset="UTF-8"> 
<link rel="stylesheet" type="text/css" href="https://cdn.bootcss.com/bootstrap/2.3.0/css/bootstrap.min.css">
<link href="https://cdn.bootcss.com/bootstrap-table/1.11.1/bootstrap-table.css" rel="stylesheet">
<link href="https://cdn.bootcss.com/x-editable/1.5.1/bootstrap-editable/css/bootstrap-editable.css" rel="stylesheet">
<style type="text/css">
		table.table-striped thead tr th {
			background: #0078D7;
			color: white;
			font-size: 16px;
			line-height: 30px;
		}
	</style>
</head> 
<body>
  <div class="container">
    <p></p>
    <table id="table" class="table table-bordered table-hover">
    </table>
  </div>
  <!-- jQuery 2.2.0 -->
	<script src="webResources/frameworks/58/js/jquery.min.js"></script> 
	<script src="webResources/frameworks/58/js/bootstrap.min.js"></script> 
	<script src="https://cdn.bootcss.com/bootstrap-table/1.11.1/bootstrap-table.js"></script>
	<script src="https://cdn.bootcss.com/x-editable/1.5.1/bootstrap-editable/js/bootstrap-editable.js"></script>
  <script src="https://cdn.bootcss.com/bootstrap-table/1.11.1/locale/bootstrap-table-zh-CN.min.js"></script>
  <script src="https://cdn.bootcss.com/bootstrap-table/1.11.1/extensions/editable/bootstrap-table-editable.js"></script>
  <script type="text/javascript">
    $(function(){
        $('#table').bootstrapTable({
            url:'data.json',
            columns:[
                {field: 'id',title: 'ID', editable: true},
                {field: 'name',title: '名称'},
                {field: 'price',title: '单价'},
                {field: 'number',title: '数量', sortable:true,
                    cellStyle:function(value,row,index) {
                        return {
                            "css":{
                                padding:'0px'
                            }
                        };
                    },
                    formatter:function(value,row,index){
                        if(value == undefined) return "0";
                        else return value;
                    },
                    editable:{
                        type:'text',
                        clear:false,
                        validate:function(value){
                            if(isNaN(value)) return {newValue:0, msg:'只允许输入数字'};
                            else if(value<0) return {newValue:0, msg:'数量不能小于0'};
                            else if(value>=1000000) return {newValue:0, msg:'当前最大只能输入999999'};
                        },
                        display:function(value){
                            $(this).text(Number(value));
                        },
                        //onblur:'ignore',
                        showbuttons:false,
                        defaultValue:0,
                        mode:'inline'
                    }
                },
                {field:'amount', title: '总价'}
            ],
            //height:300,
            idField:'id',
            onEditableHidden: function(field, row, $el, reason) { // 当编辑状态被隐藏时触发
                if(reason === 'save') {
                    var $td = $el.closest('tr').children();
                    $td.eq(-1).html((row.price*row.number).toFixed(2));
                    $el.closest('tr').next().find('.editable').editable('show'); //编辑状态向下一行移动
                } else if(reason === 'nochange') {
                    $el.closest('tr').next().find('.editable').editable('show');
                }
            }
        });
        $('#table').on( 'click', 'td:has(.editable)', function (e) {
            //e.preventDefault();
            e.stopPropagation(); // 阻止事件的冒泡行为
           $(this).find('.editable').editable('show'); // 打开被点击单元格的编辑状态
        } );

    });
  </script>

</body>
</html>