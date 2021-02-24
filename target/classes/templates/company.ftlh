<!DOCTYPE html>
<html>

<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">




    <title>企业详情</title>
    <meta name="description" content="AdminLTE2定制版">
    <meta name="keywords" content="AdminLTE2定制版">


    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <!-- Font Awesome -->
    <!-- Ionicons -->
    <!-- iCheck -->
    <!-- Morris chart -->
    <!-- jvectormap -->
    <!-- Date Picker -->
    <!-- Daterange picker -->
    <!-- Bootstrap time Picker -->
    <!--<link rel="stylesheet" href="///plugins/timepicker/bootstrap-timepicker.min.css">-->
    <!-- bootstrap wysihtml5 - text editor -->
    <!--数据表格-->
    <!-- 表格树 -->
    <!-- select2 -->
    <!-- Bootstrap Color Picker -->
    <!-- bootstrap wysihtml5 - text editor -->
    <!--bootstrap-markdown-->
    <!-- Theme style -->
    <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
    <!-- Ion Slider -->
    <!-- ion slider Nice -->
    <!-- bootstrap slider -->
    <!-- bootstrap-datetimepicker -->

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
  <script src="/js/html5shiv.min.js"></script>
  <script src="/js/respond.min.js"></script>
  <![endif]-->

    <!-- jQuery 2.2.3 -->
    <!-- jQuery UI 1.11.4 -->
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <!-- Bootstrap 3.3.6 -->
    <!-- Morris.js charts -->
    <!-- Sparkline -->
    <!-- jvectormap -->
    <!-- jQuery Knob Chart -->
    <!-- daterangepicker -->
    <!-- datepicker -->
    <!-- Bootstrap WYSIHTML5 -->
    <!-- Slimscroll -->
    <!-- FastClick -->
    <!-- iCheck -->
    <!-- AdminLTE App -->
    <!-- 表格树 -->
    <!-- select2 -->
    <!-- bootstrap color picker -->
    <!-- bootstrap time picker -->
    <!--<script src="///plugins/timepicker/bootstrap-timepicker.min.js"></script>-->
    <!-- Bootstrap WYSIHTML5 -->
    <!--bootstrap-markdown-->
    <!-- CK Editor -->
    <!-- InputMask -->
    <!-- DataTables -->
    <!-- ChartJS 1.0.1 -->
    <!-- FLOT CHARTS -->
    <!-- FLOT RESIZE PLUGIN - allows the chart to redraw when the window is resized -->
    <!-- FLOT PIE PLUGIN - also used to draw donut charts -->
    <!-- FLOT CATEGORIES PLUGIN - Used to draw bar charts -->
    <!-- jQuery Knob -->
    <!-- Sparkline -->
    <!-- Morris.js charts -->
    <!-- Ion Slider -->
    <!-- Bootstrap slider -->
    <!-- bootstrap-datetimepicker -->
    <!-- 页面meta /-->

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
    <link rel="stylesheet" href="/css/style2.css">
    <link rel="stylesheet" href="/plugins/ionslider/ion.rangeSlider.css">
    <link rel="stylesheet" href="/plugins/ionslider/ion.rangeSlider.skinNice.css">
    <link rel="stylesheet" href="/plugins/bootstrap-slider/slider.css">
    <link rel="stylesheet" href="/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">
</head>

<body>

    <div class="wrapper">

        <!-- 页面头部 -->

        <!-- 页面头部 /-->

        <!-- 导航侧栏 -->

        <!-- 导航侧栏 /-->

        <!-- 内容区域 -->
        <div class="content-wrapper" style="margin-left: 0">

            <!-- 内容头部 -->
            <section class="content-header">
                <h1>
                    企业详情
                    <small>调查问卷</small>
                </h1>
            </section>
            <!-- 内容头部 /-->

            <!-- 正文区域 -->
            <section class="content">

                <!--企业信息-->
                <div class="panel panel-default">
                    <div class="panel-heading">企业信息</div>
                    <div class="row data-type">

                        <div class="col-md-2 title">企业名称</div>
                        <div class="col-md-4 data text">
                            ${company.company}
                        </div>

                        <div class="col-md-2 title">企业地址</div>
                        <div class="col-md-4 data text">
                            ${company.address}
                        </div>
                        <div class="col-md-2 title">联系人</div>
                        <div class="col-md-4 data text">
                            ${company.boss}
                        </div>
                        <div class="col-md-2 title">联系方式</div>
                        <div class="col-md-4 data text">
                            ${company.phone}
                        </div>
                        <div class="col-md-2 title">人员规模</div>
                        <div class="col-md-4 data text">
                            ${company.scaleStr}
                        </div>
                        <div class="col-md-2 title">年营业额</div>
                        <div class="col-md-4 data text">
                            ${company.volumeStr}
                        </div>
                        <div class="col-md-2 title">科技企业</div>
                        <div class="col-md-4 data text">
                            ${company.science?string("是","否")}
                        </div>
                        <div class="col-md-2 title">银行贷款</div>
                        <div class="col-md-4 data text">
                            ${company.locans?string("${company.locansBank}:${company.locansNum}万","无贷款")}
                        </div>
                        <div class="col-md-2 title">自主知识产权</div>
                        <div class="col-md-10 data text">
                            ${company.properties?join(', ')}
                        </div>
                        <div class="col-md-2 title">了解的科技创新政策</div>
                        <div class="col-md-10 data text">
                            ${company.policies?join(', ')}
                        </div>
                        <div class="col-md-2 title">上下游衔接，产学研结合需求</div>
                        <div class="col-md-10 data text">
                            ${company.combieNeed}
                        </div>
                        <div class="col-md-2 title">企业痛点</div>
                        <div class="col-md-10 data">
                            ${conpanyDefects?join(', ')}
                        </div>
                    </div>
                </div>
                <!--企业信息/-->



                <!--融资信息-->
                <div class="panel panel-default">
                    <div class="panel-heading">融资信息</div>
                    <div class="row data-type">

                        <div class="col-md-2 title">融资需求</div>
                        <div class="col-md-4 data text">
                            ${company.financingStr}
                        </div>

                        <div class="col-md-2 title">需求金额</div>
                        <div class="col-md-4 data text">
                            ${company.financingMoneyStr}
                        </div>

                        <div class="col-md-2 title">了解的融资渠道</div>
                        <div class="col-md-10 data text">
                            ${channels?join(', ')}
                        </div>

                    </div>
                </div>
                <!--融资信息/-->

                <!--培训信息-->
                <div class="panel panel-default">
                    <div class="panel-heading">培训信息</div>
                    <div class="row data-type">

                        <div class="col-md-2 title">需要培训</div>
                        <div class="col-md-4 data text">
                            ${trains?join(', ')}
                        </div>

                        <div class="col-md-2 title">付费培训</div>
                        <div class="col-md-4 data text">
                            ${company.trainPay?string("接受","不接受")}
                        </div>

                        <div class="col-md-2 title">接受的培训价格</div>
                        <div class="col-md-10 data text">
                            ${company.trainPriceStr}
                        </div>

                    </div>
                </div>
                <!--培训信息/-->


                <!--建议意见-->
                <div class="panel panel-default">
                    <div class="panel-heading">建议与意见</div>
                    <div class="row data-type">

                        <div class="col-md-2 title">认为我们服务工作的不足</div>
                        <div class="col-md-10 data text">
                           ${serviceDefects?join(', ')}
                        </div>

                        <div class="col-md-2 title">对我们服务工作的建议</div>
                        <div class="col-md-10 data text">
                            ${company.defectSuggest}
                        </div>

                        <div class="col-md-2 title">对项目服务工作有何建议</div>
                        <div class="col-md-10 data text">
                            ${company.serviceSuggest}
                        </div>

                </div>
                <!--建议意见/-->



            </section>
            <!-- 正文区域 /-->

        </div>
        <!-- 内容区域 /-->

        <!-- 底部导航 -->
        <!-- 底部导航 /-->

    </div>


    <script src="/plugins/jQuery/jquery-2.2.3.min.js"></script>
    <script src="/plugins/jQueryUI/jquery-ui.min.js"></script>
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
            $('#datepicker-a3').datepicker({
                autoclose: true,
                language: 'zh-CN'
            });
        });


        $(document).ready(function() {
            $('#datepicker-a6').datepicker({
                autoclose: true,
                language: 'zh-CN'
            });
        });


        $(document).ready(function() {
            // 激活导航位置
            setSidebarActive("order-manage");
        });
    </script>
</body>

</html>