<!DOCTYPE html>
<html lang="zh-CN">

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="keywords" content="">
		<title>众智创联云科技(山东)有限公司</title>
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/hwslider.css" rel="stylesheet">
		<link href="css/fonts.css" rel="stylesheet">
		<link href="css/reset.css" rel="stylesheet">
		<link href="css/style.css" rel="stylesheet">
		<script src="js/jquery.js"></script>
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
			<img src="/images/b3.jpg">
		</section>
		<!--内容-->
		<section>
			<div class="container">
				<div class="auto clearfix">
					<div class="pic-tit">
						<div class="ab-tit">
							<h2><em>企业</em><em class="f-normal">简介</em></h2>
							<p class="s-font">ENTERPRISE PROFILE</p>
						</div>
						<div class="v-line"></div>
					</div>
					<div class="col-md-4"><img src="images/about.jpg" /></div>
					<div class="col-md-8">
						<p class="ab-txt-right">
							众智创联云科技(山东)有限公司
							<span>Zhongzhi Chuanglian Cloud Technology (Shandong) Limited Company</span>
						</p>
						<p class="ab-wen">
							企业简介，
						</p>
					</div>
				</div>
				<div class="auto clearfix">
					<div class="pic-tit">
						<div class="ab-tit">
							<h2><em>核心</em><em class="f-normal">技术</em></h2>
							<p class="s-font">CORE TECHNOLOGY</p>
						</div>
						<div class="v-line"></div>
					</div>
					<div class="ab-cul">
						<ul>
							<li class="col-md-3 col-sm-6">
								<div class="list-img">
									<div class="">
										<div class="list-img-tit">
											<h2>农膜自动化生产</h2>
											<p></p>
										</div>
										<img src="images/pro_02.png">
									</div>
								</div>
							</li>
							<li class="col-md-3 col-sm-6">
								<div class="list-img">
									<div class="">
										<div class="list-img-tit">
											<h2>机械自动化加工</h2>
											<p></p>
										</div>
										<img src="images/pro_02.png">
									</div>
								</div>
							</li>
							<li class="col-md-3 col-sm-6">
								<div class="list-img">
									<div class="">
										<div class="list-img-tit">
											<h2>陶瓷分割封装</h2>
											<p></p>
										</div>
										<img src="images/pro_02.png">
									</div>
								</div>
							</li>
							<li class="col-md-3 col-sm-6">
								<div class="list-img">
									<div class="">
										<div class="list-img-tit">
											<h2>出入库监管</h2>
											<p></p>
										</div>
										<img src="images/pro_02.png">
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		<!--页脚-->
		<#include "./icn/footer.ftlh">

		<script src="js/bootstrap.min.js"></script>
		<script src="js/jquery.hwslider.min.js"></script>
		<script src="js/main.js"></script>
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
			});
		</script>
	</body>

</html>