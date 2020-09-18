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
		<script src="/js/jquery.js"></script>
		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
      <script src="/js/html5shiv.min.js"></script>
      <script src="/js/respond.min.js"></script>
    <![endif]-->
	</head>

	<body>
		<#include "./icn/header.ftlh">
		<!--大图-->
		<section class="ban">
			<img src="/images/b2.jpg">
		</section>
		<section class="ser-dan ser-danx">

			<div class="container">
				<div class="pic-tit">
					<div class="ab-tit">
						<h2><em>检测</em><em class="f-normal">|</em><em>自动化</em></h2>
						<p class="s-font">ENTERPRISE PROFILE</p>
					</div>
					<div class="v-line"></div>
				</div>
			<!-- 项目导航 -->	
				<div class="row tab">
					<ul>
						<#list needTypes as needType>
							<li class="${(needType.id == activeCode)?string("active","")}" >
								<a href="/need/needList?pageNum=1&pageSize=1&classify=${needType.id}">${needType.name}</a>
							</li>
						</#list>
					</ul>
					<div style="clear: both;"></div>
				</div>
			<!-- 服务类型页面内容 -->
			
			</div>
		</section>
	<!-- 标题一内容 -->
		<div class="ta-list tab0 show fw">
			<section class="new-dan">
				<div class="container auto">
					<div class="clearfix">
						<div class="newdan-r">
							<ul id="needLi">
								<#if (needs.records?size>0)>
									<#list needs.records as need>
								<li class="clearfix">
									<div class="col-sm-12">
										<div class="col-sm-3">
											<h4><a href="">${need.title}</a></h4>
											<span class="glyphicon glyphicon-user"></span><span>${need.user.nickName}</span>
											<span class="glyphicon glyphicon-phone"></span><span>${need.user.phone}</span>
											<div><span style="color: #c87f0a">项目地址：</span><span>${need.adress}</span></div>
											<div><span style="color: #c87f0a">项目预算：</span><span>${need.price}</span></div>
											<span style="color: #c87f0a">截止日期：</span><span>${need.deadLine}</span>
										</div>
										<div class="col-sm-6"><p>${need.description}</p></div>
										<div class="col-sm-2 time" style="float: right">
											<div style="color: #c87f0a">更新于</div>
											<strong>${need.updateTime?string("dd")}</strong>
											<time>${need.updateTime?string("yyyy-MM")}</time>
										</div>
										<div class="col-sm-1" style="margin-top: 1.5cm;float: right">
											<button name="apply" needId="${need.id}" class="btn-info"><strong>申请参与</strong></button>
											<button name="apply" needId="${need.id}" class="btn-success" style="display: none"><strong>申请成功</strong></button>
										</div>
									</div>
								</li>
									</#list>
									<#else>
										<li class="clearfix">该类需求暂时无人发布！</li>
								</#if>
							</ul>
							<div class="page tc clearfix" id="pages">
								<#if needs.current gt 1>
								<a href="/need/needList?pageNum=${needs.current-1}&pageSize=1&classify=${classify}" class="prev"><em></em>上一页</a>
								</#if>
								<#if pages==0>
									<a href="/need/needList?pageNum=1&pageSize=1&classify=${classify}">1</a>
									<#else>
								<#list 1..pages as i>
								<a href="/need/needList?pageNum=${i}&pageSize=1&classify=${classify}">${i}</a>
								</#list>
								</#if>
								<#if needs.current < pages>
								<a href="/need/needList?pageNum=${needs.current+1}&pageSize=1&classify=${classify}" class="next">下一页<em></em></a>
								</#if>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>

		<#include "./icn/footer.ftlh">
		
		<script src="/js/bootstrap.min.js"></script>
		<script src="/js/jquery.hwslider.min.js"></script>
		<script src="/js/main.js"></script>
		<script>
			/*banner*/
			$(function() {
				$("#hwslider").hwSlider({
					height: 190,
					autoPlay: true,
					arrShow: true,
					dotShow: true,
					touch: true
				});

				$("#pages a").each(function(value){
					var index = $(this).text();
					console.log(index)
					if (index == ${needs.current}){

						$(this).addClass("active")
					}
				})

				$(".btn-info[name='apply']").click(function () {
					var needId = $(this).attr("needid");
					var parent = $(this).parent();
					$.post("/apply/save", {needId: needId}, (result) => {
						console.log(result);
						if (result.success) {
							$("#apply_success_modal").modal("show")
							$(this).css("display", "none");
							$(parent).find(".btn-success[name='apply']").css("display", "block");
						} else {
							if (result.error == "notLogin"){
								$("#login_modal").modal("show");
							}
							else{
								$("#apply_repeat_modal").modal("show");
								$(this).css("display", "none");
								$(parent).find(".btn-success[name='apply']").css("display", "block");
							}

						}
					});
				});
					$(".btn-success[name='apply']").click(function () {
						var needId = $(this).attr("needid");
						var parent = $(this).parent();
						$.post("/apply/cancel", {needId: needId},() => {
							$("#apply_cancel_modal").modal("show");
							$(this).css("display", "none");
							$(parent).find(".btn-info[name='apply']").css("display", "block");
						});
				});
			});

		</script>
	</body>

</html>