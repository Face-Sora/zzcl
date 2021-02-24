<!DOCTYPE html>
<html>

<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">




    <title>市场调研单</title>
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
                <h3 class="box-title">市场调研列表</h3>
            </div>

            <div class="box-body">

                <!-- 数据表格 -->
                <div class="table-box">

                    <!--工具栏-->

                    <div class="box-tools" style="border: 1px solid lightgray;margin-bottom: 6px;padding: 10px">
                        <div>
                            <span>融资需求:</span>
                            <select id="financing">
                                <option value="">所有</option>
                                <option value="0">无</option>
                                <option value="2">债权融资</option>
                                <option value="1">股权融资</option>
                            </select>

                            <span>科技企业:</span>
                            <select id="science">
                                <option value="">所有</option>
                                <option value="true">是</option>
                                <option value="false">否</option>
                            </select>

                            <span>人员规模:</span>
                            <select id="scale">
                                <option value="">所有</option>
                                <option value="0">1-10人</option>
                                <option value="1">10-30人</option>
                                <option value="2">30-50人</option>
                                <option value="3">50-100人</option>
                                <option value="4">100人以上</option>
                            </select>

                            <span>接受培训:</span>
                            <select id="trainPay">
                                <option value="">所有</option>
                                <option value="true">接受</option>
                                <option value="false">不接受</option>
                            </select>
                            <div style="float: right">
                                <button class="btn btn-success btn-xs" id="qSearch">搜索</button>
                                <button class="btn btn-info btn-xs" id="export">导出</button>
                            </div>

                        </div>
                    </div>
                    <!--工具栏/-->

                    <!--数据列表-->
                    <table id="dataList" class="table table-bordered table-striped table-hover dataTable">
                        <thead>
                        <tr>
                            <th class="">企业</th>
                            <th class="">地址</th>
                            <th class="">科技企业</th>
                            <th class="">人员规模</th>
                            <th class="">融资需求</th>
                            <th class="">银行贷款</th>
                            <th class="">接受培训</th>

                            <th class="text-center">操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <#list questions.records as question>
                            <tr>
                                <td>${question.company}</td>
                                <td>${question.address}</td>
                                <td>${question.science?string("是","否")}</td>
                                <td>${question.scaleStr}</td>
                                <td>${question.financingStr}</td>
                                <#if question.locans>
                                    <td>${question.locansBank}:${question.locansNum}万</td>
                                    <#else>
                                        <td>无</td>
                                </#if>
                                <#if question.trainPay>
                                    <td>${question.trainPriceStr}</td>
                                <#else>
                                    <td>不接受</td>
                                </#if>
                                <td>
                                    <button type="button" class="btn bg-olive btn-xs" name="detail" qId="${question.id}">详情</button>
                                    <button type="button" class="btn btn-danger btn-xs" name="rmNeed" value="30">删除</button>
                                </td>
                            </tr>
                        </#list>

                        </tbody>
                    </table>

                </div>
                <!-- 数据表格 /-->


            </div>
            <!-- /.box-body -->

            <!-- .box-footer-->
<#--            <div class="box-footer">-->
<#--                <div class="pull-left">-->
<#--                    <div class="form-group form-inline">-->
<#--                        总共${pages} 页，共${nquestions.total}条数据。 每页${nquestions.size}条-->
<#--                    </div>-->
<#--                </div>-->

<#--                <div class="box-tools pull-right">-->
<#--                    <ul class="pagination">-->
<#--                        <li>-->
<#--                            <a href="/question/nquestions?pageNum=1&pageSize=${nquestions.size}" aria-label="Previous">首页</a>-->
<#--                        </li>-->
<#--                        <li><a href="/question/nquestions?pageNum=${nquestions.current-1}&pageSize=${nquestions.size}">上一页</a></li>-->
<#--                        <#list 1..pages as i>-->
<#--                            <li><a href="/question/nquestions?pageNum=${i}&pageSize=${nquestions.size}">${i}</a></li>-->
<#--                        </#list>-->
<#--                        <li><a href="/question/nquestions?pageNum=${nquestions.current+1}&pageSize=${nquestions.size}">下一页</a></li>-->
<#--                        <li>-->
<#--                            <a href="/question/nquestions?pageNum=${pages}&pageSize=${nquestions.size}" aria-label="Next">尾页</a>-->
<#--                        </li>-->
<#--                    </ul>-->
<#--                </div>-->

<#--            </div>-->
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

        $(function () {
            $("#qSearch").click(function () {
                var financing = $("#financing").val();
                var science = $("#science").val();
                var scale = $("#scale").val();
                var trainPay = $("#trainPay").val();
                location.href = "/question/all?financing=" + financing + "&science=" + science + "&scale=" + scale + "&trainPay=" + trainPay
                    + "&pageNum=1&pageSize=8";
            });

            $("#export").click(function () {
                var ids = [];
                var buttons = $("button[name='detail']");
                $.each(buttons,function(index,value){
                    ids.push($(value).attr('qId'));
                })
                console.log(ids);
                // $.post("/question/export",{ids:ids},function(result){
                //     if (result == 'success'){
                //         alert("数据已成功导出至 C:\企业数据导出");
                //     }else{
                //         alert('数据导出失败！');
                //     }
                // })
                $.ajax({
                    type:'post',
                    url:"/question/export",
                    data:{ids:ids},
                    traditional:true,
                    success:function(result){
                        if (result == 'success'){
                                    alert("数据已成功导出至 C:\企业数据导出");
                                }else{
                                    alert('数据导出失败！');
                                }
                    }
                })
                })
        });
        $(document).ready(function() {

            // 激活导航位置
            setSidebarActive("admin-index");

            $("button[name='detail']").click(function(){
                var id = $(this).attr("qId");
                window.open("/question/detail?id="+id,"_blank");
            })
        });


    </script>
</body>

</html>
<!---->