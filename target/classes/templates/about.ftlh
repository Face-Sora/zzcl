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
			<img src="images/b1-1.jpg">
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
					<div class="col-md-4"><img src="images/about1.jpg" /></div>
					<div class="col-md-8">
						<p class="ab-txt-right">
							众智创联云科技(山东)有限公司
							<span>Zhongzhi Chuanglian Cloud Technology (Shandong) Limited Company</span>
						</p>
						<p class="ab-wen">
							众智创联云科技(山东)有限公司，成立于2020年06月，注册于淄博市张店区大学生创业园，
							是由多家科技型企业和工业制造型企业共同成立，公司主要有：信息化（淄博深科科技有限公司）、智能化（淄博三石智能科技有限公司）、
							机器人（淄博众成机器人科技有限公司）、软件开发（山东金巨丰软件有限公司）等组成。
						</p>
						<p class="ab-wen">
							我们在多项领域有着成熟方案，多次为不同种类的工业企业提供解决方案，
							其中瓷砖生产线、包装线方面，在农膜生产企业集中供料、自动配料、自动下卷及生产管理系统等整套解方案，
							并在多个农膜生产厂中大规模实施。
						</p>
						<p class="ab-wen">
							致力打造工业企业与现代自动化、信息化企业连接的桥梁——众智创联互联网工业平台，
							是公司的主营业务，跟进现代科技，改进生产解决方案，使工业企业实现自动化生产。
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
											<h2>生产管理系统</h2>
											<p>农业工业自动化生产</p>
										</div>
										<img src="images/pro_01.png">
									</div>
								</div>
							</li>
							<li class="col-md-3 col-sm-6">
								<div class="list-img">
									<div class="">
										<div class="list-img-tit">
											<h2>自动加工</h2>
											<p>机械，五金零件规格生产，切割</p>
										</div>
										<img src="images/pro_02.png">
									</div>
								</div>
							</li>
							<li class="col-md-3 col-sm-6">
								<div class="list-img">
									<div class="">
										<div class="list-img-tit">
											<h2>瓷器生产</h2>
											<p>陶瓷自动化生产，包装，码垛管理</p>
										</div>
										<img src="images/pro_05.png">
									</div>
								</div>
							</li>
							<li class="col-md-3 col-sm-6">
								<div class="list-img">
									<div class="">
										<div class="list-img-tit">
											<h2>出入库监管</h2>
											<p>盘点机打码标记出入库状态</p>
										</div>
										<img src="images/pro_06.png">
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
		<script src="js/header.js"></script>
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