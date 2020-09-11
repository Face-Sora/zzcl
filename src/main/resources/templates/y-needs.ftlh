<!DOCTYPE html>
<html>

<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">




    <title>已审核的需求</title>
    <meta name="description" content="AdminLTE2定制版">
    <meta name="keywords" content="AdminLTE2定制版">



    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">
   
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
  <script src="/js/html5shiv.min.js"></script>
  <script src="/js/respond.min.js"></script>
  <![endif]-->


    <link rel="stylesheet" href="/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="/plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="/plugins/iCheck/square/blue.css">
    <link rel="stylesheet" href="/plugins/morris/morris.css">
    <link rel="stylesheet" href="/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <link rel="stylesheet" href="/plugins/datepicker/datepicker3.css">
    <link rel="stylesheet" href="/plugins/daterangepicker/daterangepicker.css">
    <link rel="stylesheet" href="/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet" href="/plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet" href="/plugins/treeTable/jquery.treetable.css">
    <link rel="stylesheet" href="/plugins/treeTable/jquery.treetable.theme.default.css">
    <link rel="stylesheet" href="/plugins/select2/select2.css">
    <link rel="stylesheet" href="/plugins/colorpicker/bootstrap-colorpicker.min.css">
    <link rel="stylesheet" href="/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
    <link rel="stylesheet" href="/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet" href="/plugins/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/plugins/ionslider/ion.rangeSlider.css">
    <link rel="stylesheet" href="/plugins/ionslider/ion.rangeSlider.skinNice.css">
    <link rel="stylesheet" href="/plugins/bootstrap-slider/slider.css">
    <link rel="stylesheet" href="/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">
</head>

<body>

    <!-- 内容头部 -->
    <!-- 内容头部 /-->

    <!-- 正文区域 -->
    <section class="content">

        <!-- .box-body -->
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">已审核需求列表</h3>
            </div>

            <div class="box-body">

                <!-- 数据表格 -->
                <div class="table-box">

                    <!--工具栏-->

                    <div class="box-tools pull-right">
                        <div class="has-feedback">
                            <input type="text" class="form-control input-sm" placeholder="搜索">
                            <span class="glyphicon glyphicon-search form-control-feedback"></span>
                        </div>
                    </div>
                    <!--工具栏/-->

                    <!--数据列表-->
                    <table id="dataList" class="table table-bordered table-striped table-hover dataTable">
                        <thead>
                        <tr>
                            <th class="">标题</th>
                            <th class="">分类</th>
                            <th class="">发布者</th>
                            <th class="">联系方式</th>
                            <th class="">预算</th>
                            <th class="">截止日期</th>
                            <th class="">发布时间</th>
                            <th class="">状态</th>
                            <th class="">进度</th>
                            <th class="">乙方</th>
                            <th class="text-center">操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <#list yNeeds.records as need>
                            <tr>
                                <td>${need.title}</td>
                                <td>${need.needType.name}</td>
                                <td>${need.user.nickName}</td>
                                <td>${need.user.phone}</td>
                                <td>${need.price}</td>
                                <td>${need.deadLine}</td>
                                <td>${need.updateTime?string("yyyy-MM-dd")}</td>
                                <td>
                                    <span id="${need.id}1">${(need.status == 'y')?string("审核通过","未审核")}</span>
                                    <button type="button" class="btn btn-success btn-xs glyphicon glyphicon-ok" char="y" name="pass" value="${need.id}"></button>
                                    <button type="button" class="btn btn-warning btn-xs glyphicon glyphicon-remove" char="n" name="pass" value="${need.id}"></button>
                                </td>
                                <td>
                                    <div class="dropdown">
                                        <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" >
                                            <span id="${need.id}pro">${need.progressStr}</span>
                                            <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                                            <li><a href="#" name="pro" value="${need.id}" char="w">未接单</a></li>
                                            <li><a href="#" name="pro" value="${need.id}" char="i">进行中</a></li>
                                            <li><a href="#" name="pro" value="${need.id}" char="f">已完成</a></li>
                                        </ul>
                                    </div>
                                </td>
                                <td>
                                    <#if (need.worker)??>
                                        ${need.worker.nickName}
                                        <button class="btn btn-xs btn-info glyphicon glyphicon-user" name="workermsg" data-toggle="modal" data-target="#${need.id?c}msg"></button>
                                        <div class="modal" id="${need.id?c}msg" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal">
                                                            <span aria-hidden="true">&times;</span>
                                                            <span class="sr-only">Close</span>
                                                        </button>
                                                        <h4 class="modal-title">乙方信息</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <form role="form" accept-charset="" >
                                                            <div class="input-group">
                                                                    <span class="input-group-addon" id="basic-addon1">
                                                                        <span class="glyphicon glyphicon-phone" aria-hidden="true"></span>
                                                                    </span>
                                                                <input type="text" class="form-control" value="${need.worker.phone}" disabled="true" aria-describedby="basic-addon1">
                                                            </div>
                                                            <br />

                                                            <!---------邮箱------->
                                                            <div class="input-group">
                                                                    <span class="input-group-addon" id="basic-addon1">
                                                                        <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
                                                                    </span>
                                                                <input type="email" class="form-control" value="${need.worker.email}" disabled="true" aria-describedby="basic-addon1">
                                                            </div>
                                                            <br />
                                                            <div class="input-group">
                                                                    <span class="input-group-addon" id="basic-addon2">
                                                                        <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                                                                    </span>
                                                                <input type="text" class="form-control" value="${need.worker.createTime?string("yyyy-MM-dd")}" disabled="true" aria-describedby="basic-addon2">
                                                            </div>
                                                            <br />
                                                            <div class="input-group">
                                                                    <span class="input-group-addon" id="basic-addon3">
                                                                        <span class="glyphicon glyphicon-wrench" aria-hidden="true"></span>
                                                                    </span>
                                                                <input type="text" name="phone" class="form-control" aria-describedby="basic-addon3" placeholder="输入您想要改为的乙方的手机号">
                                                                <span type="button" class="input-group-addon btn btn-warning" name="modifyWorker" value="${need.id}">确认修改</span>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    <#else >
                                        暂无
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-xs btn-info glyphicon glyphicon-plus-sign dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            </button>
                                            <ul class="dropdown-menu" style="left: -8.3cm;top: 0">
                                                <li>
                                                    <div class="input-group">
                                                                    <span class="input-group-addon" id="basic-addon3">
                                                                        <span class="glyphicon glyphicon-wrench" aria-hidden="true"></span>
                                                                    </span>
                                                        <input type="text" name="addphone" class="form-control" aria-describedby="basic-addon3" placeholder="输入您想要添加的乙方的手机号">
                                                        <span type="button" class="input-group-addon btn btn-warning" name="addWorker" value="${need.id}">添加</span>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </#if>
                                </td>
                                <td class="text-center">
                                    <button type="button" class="btn bg-olive btn-xs" data-toggle="modal" data-target="#${need.id}">详情</button>
                                    <button type="button" class="btn btn-danger btn-xs" name="rmNeed" value="${need.id}">删除</button>
                                    <#--                                        <button type="button" class="btn btn-success btn-xs" char="y" name="pass" value="${need.id}">通过</button>-->
                                    <#--                                        <button type="button" class="btn btn-danger btn-xs" char="n" name="pass" value="${need.id}">拒绝</button>-->
                                    <div class="modal" id='${need.id}' tabindex="-1" role="dialog"
                                         aria-labelledby="mySmallModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button id="clsbtn" type="button" class="close" data-dismiss="modal">
                                                        <span aria-hidden="true">&times;</span>
                                                        <span class="sr-only">Close</span>
                                                    </button>
                                                    <h4 class="modal-title">需求具体描述</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <div>
                                                        <div class="row">
                                                            <div class="col-lg-6">
                                                                <div class="input-group">
                                                                      <span class="input-group-addon">
                                                                        开工
                                                                      </span>
                                                                    <input type="date"  id="${need.id}be" class="form-control" value="${((need.beginTime)?string("yyyy-MM-dd"))!}" >
                                                                </div><!-- /input-group -->
                                                            </div><!-- /.col-lg-6 -->
                                                            <div class="col-lg-6">
                                                                <div class="input-group">
                                                                      <span class="input-group-addon">
                                                                        完工
                                                                      </span>
                                                                    <input type="date"  id="${need.id}fi" class="form-control" value="${((need.finishTime)?string("yyyy-MM-dd"))!}">
                                                                </div><!-- /input-group -->
                                                            </div><!-- /.col-lg-6 -->
                                                        </div><!-- /.row -->
                                                    </div>
                                                    <br />
                                                    <div>
                                                        <textarea id="${need.id}desc" type="text" class="form-control" rows="3">${need.description}</textarea>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button class="btn btn-info" name="modify" value="${need.id}">确认修改</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </#list>

                        </tbody>
                    </table>
                    <!--数据列表/-->

                </div>
                <!-- 数据表格 /-->


            </div>
            <!-- /.box-body -->

            <!-- .box-footer-->
            <div class="box-footer">
                <div class="pull-left">
                    <div class="form-group form-inline">
                        总共${pages} 页，共${yNeeds.total}条数据。 每页${yNeeds.size}条
                    </div>
                </div>

                <div class="box-tools pull-right">
                    <ul class="pagination">
                        <li>
                            <a href="/need/yNeeds?pageNum=1&pageSize=${yNeeds.size}" aria-label="Previous">首页</a>
                        </li>
                        <li><a href="/need/yNeeds?pageNum=${yNeeds.current-1}&pageSize=${yNeeds.size}">上一页</a></li>
                        <#list 1..pages as i>
                            <li><a href="/need/yNeeds?pageNum=${i}&pageSize=${yNeeds.size}">${i}</a></li>
                        </#list>
                        <li><a href="/need/yNeeds?pageNum=${yNeeds.current+1}&pageSize=${yNeeds.size}">下一页</a></li>
                        <li>
                            <a href="/need/yNeeds?pageNum=${pages}&pageSize=${yNeeds.size}" aria-label="Next">尾页</a>
                        </li>
                    </ul>
                </div>

            </div>
            <!-- /.box-footer-->



        </div>

    </section>
    <!-- 正文区域 /-->
    
<!-- @@close -->


    <script src="/plugins/jQuery/jquery-2.2.3.min.js"></script>
    <script src="/plugins/jQueryUI/jquery-ui.min.js"></script>
    <script src="/js/admin.js"></script>
    <script>
        $.widget.bridge('uibutton', $.ui.button);
    </script>
    <script src="/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="/plugins/raphael/raphael-min.js"></script>
    <script src="/plugins/morris/morris.min.js"></script>
    <script src="/plugins/sparkline/jquery.sparkline.min.js"></script>
    <script src="/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <script src="/plugins/knob/jquery.knob.js"></script>
    <script src="/plugins/daterangepicker/moment.min.js"></script>
    <script src="/plugins/daterangepicker/daterangepicker.js"></script>
    <script src="/plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
    <script src="/plugins/datepicker/bootstrap-datepicker.js"></script>
    <script src="/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
    <script src="/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
    <script src="/plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <script src="/plugins/fastclick/fastclick.js"></script>
    <script src="/plugins/iCheck/icheck.min.js"></script>
    <script src="/plugins/adminLTE/js/app.min.js"></script>
    <script src="/plugins/treeTable/jquery.treetable.js"></script>
    <script src="/plugins/select2/select2.full.min.js"></script>
    <script src="/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
    <script src="/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
    <script src="/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
    <script src="/plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
    <script src="/plugins/bootstrap-markdown/js/markdown.js"></script>
    <script src="/plugins/bootstrap-markdown/js/to-markdown.js"></script>
    <script src="/plugins/ckeditor/ckeditor.js"></script>
    <script src="/plugins/input-mask/jquery.inputmask.js"></script>
    <script src="/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
    <script src="/plugins/input-mask/jquery.inputmask.extensions.js"></script>
    <script src="/plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="/plugins/datatables/dataTables.bootstrap.min.js"></script>
    <script src="/plugins/chartjs/Chart.min.js"></script>
    <script src="/plugins/flot/jquery.flot.min.js"></script>
    <script src="/plugins/flot/jquery.flot.resize.min.js"></script>
    <script src="/plugins/flot/jquery.flot.pie.min.js"></script>
    <script src="/plugins/flot/jquery.flot.categories.min.js"></script>
    <script src="/plugins/ionslider/ion.rangeSlider.min.js"></script>
    <script src="/plugins/bootstrap-slider/bootstrap-slider.js"></script>
    <script src="/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.js"></script>
    <script src="/plugins/bootstrap-datetimepicker/locales/bootstrap-datetimepicker.zh-CN.js"></script>
    <script>
        $(document).ready(function() {

            // 选择框
            $(".select2").select2();

            // WYSIHTML5编辑器
            $(".textarea").wysihtml5({
                locale: 'zh-CN'
            });
        });


        // 设置激活菜单
        function setSidebarActive(tagUri) {
            var liObj = $("#" + tagUri);
            if (liObj.length > 0) {
                liObj.parent().parent().addClass("active");
                liObj.addClass("active");
            }
        }


        $(document).ready(function() {
            // 激活导航位置
            setSidebarActive("admin-index");
        });
    </script>
</body>

</html>
<!---->