<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <title>全民发布</title>
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport"/>
  <link rel="stylesheet" type="text/css" href="https://cdn.bootcss.com/bootstrap/2.3.0/css/bootstrap.min.css">
  <link href="https://cdn.bootcss.com/bootstrap-table/1.11.1/bootstrap-table.css" rel="stylesheet">
  <link href="https://cdn.bootcss.com/x-editable/1.5.1/bootstrap-editable/css/bootstrap-editable.css" rel="stylesheet">
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <div class="content-wrapper">
  
    <section class="content-header">
      <h1>
                     系统管理
        <small>幻灯片管理</small>
      </h1>
    </section>
    <section class="content">
      <div class="row">
         <div class="panel-body" style="padding-bottom:0px;">
        <div id="toolbar" class="btn-group">
            <button id="btn_add" type="button" class="btn  btn-success" onclick="btn_add()">
                <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
            </button>
           <button id="remove" class="btn btn-danger" >
            <i class="glyphicon glyphicon-remove"></i> 删除
           </button>
        </div>
           <div class="box">
            <!-- /.box-header -->
            <div class="box-body">
        <table id="tb_customer" data-response-handler="responseHandler">
        </table>
         </div>
        </div>
    </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  
</div>
<!-- ./wrapper -->

  <script src="https://cdn.bootcss.com/jquery/2.2.2/jquery.min.js"></script>
	<script src="https://cdn.bootcss.com/bootstrap/2.3.0/bootstrap.min.js"></script> 
	<script src="https://cdn.bootcss.com/bootstrap-table/1.11.1/bootstrap-table.js"></script>
	<script src="https://cdn.bootcss.com/x-editable/1.5.1/bootstrap-editable/js/bootstrap-editable.js"></script>
  <script src="https://cdn.bootcss.com/bootstrap-table/1.11.1/locale/bootstrap-table-zh-CN.min.js"></script>
<!-- jQuery 2.2.3 -->
<script src="/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="/bootstrap/js/bootstrap.min.js"></script>
<script src="/bootstrap/js/bootstrap-table.js"></script>
<script src="/bootstrap/js/bootstrap-table-zh-CN.js"></script>
<script src="/bootstrap/js/bootstrap-table-editable.js"></script>
<script src="/bootstrap/js/bootstrap-editable.js"></script>
<script src="/bootstrap/js/fileinput.min.js"></script>
<!-- DataTables -->
<script src="/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="/plugins/datatables/dataTables.bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="/plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="/dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="/dist/js/demo.js"></script>
<script type="text/javascript" src="/js/jquery.cookie.js"></script> 
<script type="text/javascript" src="/lib/layer/1.9.3/layer.js"></script>
<!-- page script -->
<script>var TableInit = function () {
    var oTableInit = new Object();
    //初始化Table
    oTableInit.Init = function () {
        $('#tb_customer').bootstrapTable({
            url: '/slider-data',         //请求后台的URL（*）
            method: 'get',                      //请求方式（*）
            toolbar: '#toolbar',                //工具按钮用哪个容器
            striped: true,                      //是否显示行间隔色
            cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
            pagination: true,                   //是否显示分页（*）
            sortable: false,                     //是否启用排序
            sortOrder: "asc",                   //排序方式
            queryParams: oTableInit.queryParams,//传递参数（*）
            sidePagination: "server",           //分页方式：client客户端分页，server服务端分页（*）
            pageNumber:1,                       //初始化加载第一页，默认第一页
            pageSize: 10,                       //每页的记录行数（*）
            pageList: [10],        //可供选择的每页的行数（*）
            search: true,                       //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
            strictSearch: true,
            showColumns: true,                  //是否显示所有的列
            showRefresh: true,                  //是否显示刷新按钮
            minimumCountColumns: 2,             //最少允许的列数
            clickToSelect: true,                //是否启用点击选中行
            height: 500,                        //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
            uniqueId: "id",                     //每一行的唯一标识，一般为主键列
            showToggle:true,                    //是否显示详细视图和列表视图的切换按钮
            cardView: false,                    //是否显示详细视图
            detailView: false,                   //是否显示父子表onEditableSave
            columns: [{
                checkbox: true
            }, {
                field: 'id',
                title: 'id'
                
            }, {
                field: 'thumbAUrl',
                title: '图片链接',
                formatter:function(value,row,index){
                    
                    return '<a href="'+row.thumbAUrl+'" target="_blank">'+row.thumbAUrl+'</a>'
                }
             
            }, {
                field: 'spaceId',
                title: '位置',
                 formatter:function(value,row,index){
                    
                    if(row.spaceId==1){
                        return 'home';
                    }else if(row.spaceId==2){
                        return 'task';
                    }else{
                    return row.spaceId;
                    }
                }
            }, {
                field: 'type',
                title: '类型',
                formatter:function(value,row,index){
                    if(row.type==1){
                        return '点击无动作';
                    }else if(row.type==2){
                        return '任务';
                    }else if(row.type==3){
                        return 'activity跳转';
                    }else {
                        return '有html落地页';
                    }
                    
                }
                
            }
            , {
                field: 'thirdAction',
                title: '动作'
               
            }
            , {
                field: 'status',
                title: '状态',
                editable: {
                    type: 'select',
                    title: '状态',
                    source:[{value:"1",text:"启用"},{value:"0",text:"禁用"}]
                }
               
            }
            , {
                field: 'ord',
                title: '排序',
                editable: true
               
            }
            , {
                field: 'operate',
                title: '操作',
                align: 'center',
                events: operateEvents,
                formatter: operateFormatter
            }
            
            
            ],
         	onEditableSave: function (field, row, oldValue, $el) {
             $.ajax({
                 type: "post",
                 url: "/editSliderState",
                 data: { strJson: JSON.stringify(row) },
                 success: function (data, status) {
                     if (status == "success") {
                            layer.alert('编辑成功');
                     }
                 },
                 error: function () {
                     alert("Error");
                 },
                 complete: function () {

                 }

             });
         }
        });
    };
    
</script>
</body>
</html>