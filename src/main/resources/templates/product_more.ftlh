<!DOCTYPE html>
<html>
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
	</head>
	<body style="overflow-x:hidden;">
		<#include "./icn/header.ftlh">
		
		<section class="new-dan">
			<div class="container auto">
				<div class="clearfix">
					<div class="pic-tit">
						<div class="ab-tit">
							<h2><em>产品</em><em class="f-normal">供需</em></h2>
						</div>
						<div class="v-line"></div>
					</div>
				</div>
			</div>
		</section>
		<section class="container">
			<div class="row">
				<div class="col-md-12">
					<div style="float: right;">
						<input type="text" style="height: 30px; color: #000000;" placeholder="搜索产品/类别" />
						<button class="btn btn-default">搜索</button>
					</div>
				</div>
			</div>
		</section>
		<section class="beijing" style="padding-bottom: 25px;">
			<div class="container" style="color: #ffffff;">
				<!-- 分类1 -->
				<div>
				<ul class="" style="margin-right: 15px; margin-left: 15px;">
					<p style="line-height: 50px; font-size: 22px; margin-left: 10px; color: #000000;">软件类</p>
					<#list products as product>
						<#if product.typeId == 1>
							<li class="col-xs-12 col-sm-6 col-md-3 "  style="padding: 5px 5px 5px 5px; border: #22262F 1px solid; max-height: 200px;">
								<div class="ser">
									<a href="###">
										<p id="btn1" style=" float: left;">${product.owner} ${product.phone}</p>
										<br>
										<p>价格：${product.price}</p>
										<p>类别： ${product.type}</p>
										<p>产品介绍：${product.detail}</p>
									</a>
								</div>
							</li>
						</#if>
					</#list>
					<div class="row"></div>
				</ul>
				</div>
				<br>
				<!-- 分类2 -->
				<div>
				<ul class="" style="margin-right: 15px; margin-left: 15px;">
					<p style="line-height: 50px; font-size: 22px; margin-left: 10px; color: #000000;">机械类</p>
					<#list products as product>
						<#if product.typeId == 2>
							<li class="col-xs-12 col-sm-6 col-md-3 "  style="padding: 5px 5px 5px 5px; border: #22262F 1px solid; max-height: 200px;">
								<div class="ser">
									<a href="###">
										<p id="btn1" style=" float: left;">${product.owner} ${product.phone}</p>
										<br>
										<p>价格：${product.price}</p>
										<p>类别： ${product.type}</p>
										<p>产品介绍：${product.detail}</p>
									</a>
								</div>
							</li>
						</#if>
					</#list>
					<div class="row"></div>
				</ul>
				</div>
				<br>
				<!-- 分类1 -->
				<ul class="" style="margin-right: 15px; margin-left: 15px;">
					<p style="line-height: 50px; font-size: 22px; margin-left: 10px; color: #000000;">自动化</p>
					<#list products as product>
						<#if product.typeId == 3>
							<li class="col-xs-12 col-sm-6 col-md-3 "  style="padding: 5px 5px 5px 5px; border: #22262F 1px solid; max-height: 200px;">
								<div class="ser">
									<a href="###">
										<p id="btn1" style=" float: left;">${product.owner} ${product.phone}</p>
										<br>
										<p>价格：${product.price}</p>
										<p>类别： ${product.type}</p>
										<p>产品介绍：${product.detail}</p>
									</a>
								</div>
							</li>
						</#if>
					</#list>
					<div class="row"></div>
				</ul>
				<br>
				<!-- 分类1 -->
				<ul class="" style="margin-right: 15px; margin-left: 15px;">
					<p style="line-height: 50px; font-size: 22px; margin-left: 10px; color: #000000;">环保类</p>
					<#list products as product>
						<#if product.typeId == 4>
							<li class="col-xs-12 col-sm-6 col-md-3 "  style="padding: 5px 5px 5px 5px; border: #22262F 1px solid; max-height: 200px;">
								<div class="ser">
									<a href="###">
										<p id="btn1" style=" float: left;">${product.owner} ${product.phone}</p>
										<br>
										<p>价格：${product.price}</p>
										<p>类别： ${product.type}</p>
										<p>产品介绍：${product.detail}</p>
									</a>
								</div>
							</li>
						</#if>
					</#list>
					<div class="row"></div>
				</ul>
			</div>
		</section>
		
		
		<#include "./icn/footer.ftlh">
		
		
		
		<script src="/js/jquery.js"></script>
		<script src="/js/bootstrap.min.js"></script>
		<script src="/js/jquery.hwslider.min.js"></script>
		<script src="/js/main.js"></script>
		<script>
			$(function () {
				var max = 0;
				var lis = $(".container li");
				$.each(lis,function (index,data) {
					var nmax = $(data).height();
					console.log(nmax);
					if (nmax > max){
						max = nmax;
					}
				})
				$.each(lis,function(inx,data){
					$(data).height(max);
				})
			})
		</script>
	</body>
</html>