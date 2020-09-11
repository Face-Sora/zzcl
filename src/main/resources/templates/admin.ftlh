<!DOCTYPE html>
<html>

<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>众智创联后台管理</title>
    <meta name="description" content="AdminLTE2定制版">
    <meta name="keywords" content="AdminLTE2定制版">

    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">

    <script src="/js/jquery.min.js"></script>
    <script src="/js/html5shiv.min.js"></script>
    <script src="/js/respond.min.js"></script>


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

<body class="hold-transition  sidebar-mini">

<div>

    <!-- 内容区域 -->
    <div>

        <!-- 内容头部 -->
        <section>
            <h1>
                控制面板
                <small>首页</small>
            </h1>
        </section>
        <!-- 内容头部 /-->

        <!-- 正文区域 -->
        <section class="content">


            <!-- 统计数值 -->
            <div class="row">
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-aqua">
                        <div class="inner">
                            <h3>${lastneednum}</h3>

                            <p>待审核需求</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-bag"></i>
                        </div>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-green">
                        <div class="inner">
                            <h3>${totalneednum}</h3>

                            <p>已审核需求</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-stats-bars"></i>
                        </div>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-yellow">
                        <div class="inner">
                            <h3>${lastusernum}</h3>

                            <p>新注册用户</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-person-add"></i>
                        </div>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-red">
                        <div class="inner">
                            <h3>${totalusernum}</h3>

                            <p>全部用户</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-person"></i>
                        </div>
                    </div>
                </div>
                <!-- ./col -->

                <!-- ./col -->
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-light-blue">
                        <div class="inner">
                            <h3>${leaveMessagesSize}</h3>

                            <p>用户留言</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-email"></i>
                        </div>
                    </div>
                </div>
                <!-- ./col -->
            </div>
            <!-- /.row -->


            <!-- 待审核需求 -->
            <a name="aa"></a>
            <div class="box box-primary">
                <div class="box-header with-border">
                    <i class="fa fa-cube"></i>
                    <h3 class="box-title">待审核需求</h3>
                </div>

                <div class="box-body">

                    <!-- 数据表格 -->
                    <div class="table-box">

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
                                <th class="text-center">操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <#list lastneeds as need>
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
                                        <button type="button" class="btn btn-danger btn-xs glyphicon glyphicon-remove" char="n" name="pass" value="${need.id}"></button>
                                    </td>
                                    <td class="text-center">
                                        <button type="button" class="btn bg-olive btn-xs" data-toggle="modal" data-target="#${need.id}">详情</button>
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

            </div>
            <!-- 待处理订单 /-->

            <!-- 新注册用户 -->
            <a name="cc"></a>
            <div class="box box-warning">
                <div class="box-header with-border">
                    <i class="glyphicon glyphicon-hand-up"></i>
                    <h3 class="box-title">新注册用户</h3>
                </div>

                <div class="box-body">

                    <!-- 数据表格 -->
                    <div class="table-box">

                        <!--数据列表-->
                        <table id="dataList" class="table table-bordered table-striped table-hover dataTable">
                            <thead>
                            <tr>
                                <th class="">称呼</th>
                                <th class="">倾向</th>
                                <th class="">联系方式</th>
                                <th class="">邮箱</th>
                                <th class="">注册时间</th>
                                <th class="">状态</th>
                                <th class="text-center">操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <#list lastusers as user>
                                <tr>
                                    <td>${user.nickName}</td>
                                    <td>${(user.tendency==1)?string("找项目","发需求")}</td>
                                    <td>${user.phone}</td>
                                    <td>${user.email}</td>
                                    <td>${user.createTime?string("yyyy-MM-dd")}</td>
                                    <td id="${user.id?c}">${(user.delCode==0)?string("禁用","正常")}</td>
                                    <td class="text-center">
                                        <button type="button" class="btn btn-success btn-xs" char="1" name="doUser" value="${user.id}">解封</button>
                                        <button type="button" class="btn btn-danger btn-xs" char="0" name="doUser" value="${user.id}">拉黑</button>
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

            </div>

        </section>
        <!-- 正文区域 /-->

    </div>
    <!-- 内容区域 /-->



</div>


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