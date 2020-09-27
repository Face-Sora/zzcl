<!DOCTYPE html>
<html lang="zh-CN">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="keywords" content="">
		<title>众智创联云科技(山东)有限公司</title>
		<link href="/css/bootstrap.min.css" rel="stylesheet">
		<link href="/css/hwslider.css" rel="stylesheet">
		<link href="/css/fonts.css" rel="stylesheet">
		<link href="/css/reset.css" rel="stylesheet">
		<link href="/css/style.css" rel="stylesheet">
		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
      <script src="/js/html5shiv.min.js"></script>
      <script src="/js/respond.min.js"></script>
    <![endif]-->
	</head>
	<body>
		<#include "./icn/header.ftlh">
		<!-- 大图 -->
		<section class="ban">
			<img src="/images/banner2-1.jpg">
		</section>
		<!-- 产品供需详情 -->
		<section class="service">
			<div class="container">
				<div style="width: 100%; background-color: #F7ECB5;">
					<h2 style="padding-top: 15px;">产品分类</h2>
				</div>
				<ul class="" style="margin-right: 15px;">
					<p style="font-size: 22px; color: #D58512; margin-left: 10px;">机械类</p>
					<li class="col-xs-12 col-sm-6 col-md-4 ">
						<a href="">
							<div class="">
								<div><img src="/images/00.png" title="产品名称" alt="产品图"></div>
								<div class="ser">
									<a href="">
										<h3 style="color: #000000; float: left;">公司名称</h3>
										<br>
										<br>
										<p style="color: #000000; float: left;">产品名称及功能</p>
									</a>
								</div>
							</div>
						</a>
					</li>
					<li class="col-xs-12 col-sm-6 col-md-4 clearfix">
						<a href="">
							<div class="">
								<div><img src="images/00.png" title="产品名称"></div>
								<div class="ser">
									<a href="">
										<h3 style="color: #000000; float: left;">公司名称</h3>
										<br>
										<br>
										<p style="color: #000000; float: left;">产品名称及功能</p>
									</a>
								</div>
							</div>
						</a>
					</li>
					<li class="col-xs-12 col-sm-6 col-md-4 clearfix">
						<a href="">
							<div class="">
								<div><img src="images/00.png" title="产品名称"></div>
								<div class="ser">
									<a href="">
										<h3 style="color: #000000; float: left;">公司名称</h3>
										<br>
										<br>
										<p style="color: #000000; float: left;">产品名称及功能</p>
									</a>
								</div>
							</div>
						</a>
					</li>
				</ul>
				<ul style="margin-right: 15px;">
					<p style="font-size: 22px; color: #D58512; margin-left: 10px;">环保类</p>
					<li class="col-xs-12 col-sm-6 col-md-4 clearfix">
						<a href="">
							<div class="">
								<div><img src="images/00.png" title="产品名称"></div>
								<div class="ser">
									<a href="">
										<h3 style="color: #000000; float: left;">公司名称</h3>
										<br>
										<br>
										<p style="color: #000000; float: left;">产品名称及功能</p>
									</a>
								</div>
							</div>
						</a>
					</li>
					<li class="col-xs-12 col-sm-6 col-md-4 clearfix">
						<a href="">
							<div class="">
								<div><img src="images/00.png" title="产品名称"></div>
								<div class="ser">
									<a href="">
										<h3 style="color: #000000; float: left;">公司名称</h3>
										<br>
										<br>
										<p style="color: #000000; float: left;">产品名称及功能</p>
									</a>
								</div>
							</div>
						</a>
					</li>
					<li class="col-xs-12 col-sm-6 col-md-4 clearfix">
						<a href="">
							<div class="">
								<div><img src="images/00.png" title="产品名称"></div>
								<div class="ser">
									<a href="">
										<h3 style="color: #000000; float: left;">公司名称</h3>
										<br>
										<br>
										<p style="color: #000000; float: left;">产品名称及功能</p>
									</a>
								</div>
							</div>
						</a>
					</li>
				</ul>
			</div>
		</section>
		
		<script src="/js/jquery.js"></script>
		<script src="/js/header.js"></script>
		<script src="/js/bootstrap.min.js"></script>
		<script src="/js/jquery.hwslider.min.js"></script>
		<script src="/js/main.js"></script>
		<script>
			/*banner*/
			$(function() {
				$("#hwslider").hwSlider({
					height: 180,
					autoPlay: true,
					arrShow: true,
					dotShow: true,
					touch: true
				});
			});
			//  滚动
			$(function() {
				$('.myscroll').myScroll({
					speed: 80, //数值越大，速度越慢
					rowHeight: 42 //li的高度
				});
			});
		</script>
		<script>
		    $(function () {
		
		        $("#register").click(function () {
		            var phone = $("#rephone").val();
		            var email = $("#email").val();
		            var password = $("#password").val();
		            var nickName = $("#nickName").val();
		            var tendency = $("input[type='radio']:checked").val();
		
		            if (tendency == undefined){
		                $("#ten1").css("border","2px dotted red");
		                $("#ten2").css("border","2px dotted red");
		                return;
		            }
		            if (checkPwd() && checkNotEmpty(["rephone","email","password","password2","nickName"])){
		                $.ajax({
		                    type:"post",
		                    url:"/user/register",
		                    data:{
		                        phone : phone,
		                        email : email,
		                        pwd : password,
		                        tendency : tendency,
		                        nickName : nickName
		                    },
		                    success:function (result) {
		                        if (result == "success"){
		                            $("#mymodal-data").modal("hide");
		                            $("#phone").val(phone);
		                            $("#mymodal").modal("show");
		                        }else {
		                            alert(result);
		                        }
		                    }
		                })
		
		            }
		        })
		
		        $("#login").click(function () {
		            var phone = $("#phone").val();
		            console.log(phone);
		            var pwd = $("#pwd").val();
		            $.ajax({
		                type:"post",
		                url:"/login",
		                data: {
		                    phone:phone,
		                    pwd:pwd
		                },
		                success:function (result) {
		                    if (result == "success"){
		                        $("#mymodal").modal("hide");
		                    }else{
		                        alert(result);
		                    }
		                }
		            })
		        })
		        $("#publish").click(function () {
		            $.ajax({
		                type:"get",
		                url:"/xinxi/needType/showAll",
		                success:function (result) {
		                    if (result.success){
		                        var options = "";
		                        $.each(result.types,function (index,value) {
		                            options += "<option value=" + "'" + value.id + "'" + ">" + value.name + "</option>"
		                        })
		                        $(options).appendTo($("#type"));
		                        $("#needmodal-data").modal("show");
		                    }else{
		                        $("#mymodal").modal("show");
		                    }
		                }
		            })
		        })
		
		        $("#type").on("change",function () {
		            $("#wran").text("");
		        })
		
		        $("input").on("focus",function () {
		            $(this).css("border","1px solid #999");
		        })
		        $("textarea").on("focus",function () {
		            $(this).css("border","1px solid #999");
		        })
		
		        $("#push").click(function () {
		            var type = $("#type").val();
		            var title = $("#title").val();
		            var price = $("#price").val();
		            var time = $("#time").val();
		            var des = $("#description").val();
		            if (type == null || type == "请选择"){
		                $("#wran").text("请选择需求类别!")
		                return;
		            }
		
		            if (!checkNotEmpty(["title","price","time","description"])){
		                return;
		            }
		
		            $.ajax({
		                type:"post",
		                url:"/need/saveNeed",
		                data:{
		                    classify:type,
		                    price:price,
		                    title:title,
		                    deadLine:time,
		                    description:des
		                },
		                success:function (result) {
		                    if(result.success){
		                        location.href = "/need/findByUserId?userId=" + result.userId;
		                    }else{
		                        alert(result.error + 1)
		                    }
		                }
		            })
		        })
		
		    })
		
		    function checkNotEmpty(ids) {
		        $.each(ids,function (index,item) {
		            var value = $("#"+item).val();
		            if (value == ""){
		                $("#"+item).css("border","2px solid red");
		                return false;
		            }
		        })
		        return true;
		    }
		
		    function checkPwd() {
		        if ($("#password").val() == $("#password2").val()){
		            return true;
		        }
		        $("#password").css("border","2px solid red");
		        $("#password2").css("border","2px solid red");
		        return false;
		    }
		
		
		</script>
		
	</body>
</html>
