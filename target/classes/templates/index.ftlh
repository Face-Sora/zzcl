<!DOCTYPE html>
<html lang="zh-CN">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<meta name="keywords" content="">
	<title>众智创联云科技(山东)有限公司</title>
	<link href="/css/bootstrap.min.css" rel="stylesheet">
	<link href="/css/hwslider.css" rel="stylesheet">
	<link href="/css/fonts.css" rel="stylesheet">
	<link href="/css/reset.css" rel="stylesheet">
	<link href="/css/style.css" rel="stylesheet">
	<link href="/css/base.css" rel="stylesheet">
	<link href="/css/swiper.min.css" rel="stylesheet">
	<link href="/css/swiper.min.css" rel="stylesheet">
	<link href="/layui/css/layui.css" rel="stylesheet">
	<link id="layuicss-layer" rel="stylesheet" href="http://www.indplat.cn/r/cms/www/default/lib/layui/css/modules/layer/default/layer.css?v=3.1.1" media="all">
	<link id="layuicss-skincodecss" rel="stylesheet" href="http://www.indplat.cn/r/cms/www/default/lib/layui/css/modules/code.css" media="all">
	<link rel="stylesheet" type="text/css" href="/css/layui.css">
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

	<div id="header">
		<div class="topbar">
			<div class="bar-container clearfix">
				<div class="top-left">
					<span>国家工业互联网发展示范区</span>
				</div>
				<div class="top-right">
					<ul>
						<li class="li-slide">
							<a href="#">
								<img class="li-icon" src="/images/icon_address.png">
								山东省 [其它地市]
							</a>
						</li>
						<li class="li-slide">
							<a href="/tologin">登录/注册</a>
						</li>
						<li class="li-slide">
							<a href="/about" target="_blank">关于我们</a>
						</li>
						<li class="li-slide" id="QrCode">
							<a href="javascript:void(0);">微信公众号<img class="li-icon" src="/images/icon_down.png"></a>
							<div class="drop-panel">
								<i class="caret"></i>
								<div class="drop-ul">
									<img src="/images/logoa.png">
								</div>
							</div>
							<!--<img src="/r/cms/www/default/resources/images/index/wechat2.jpg">-->
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="bar-container">
			<div class="clearfix" style="overflow: visible">
				<div class="top-left">
					<a href="/"><img src="/images/logo_new%20.png" alt="logo" style="margin-top: 30px;"></a>
				</div>
				<div class="top-right" >
					<form class="layui-form search-service" action="">
						<select name="type" lay-verify="" id="selectType">
							<option value="1" selected="">找需求</option>
							<option value="3">找产品</option>
						</select>
						<input class="keywords" type="text" placeholder="请输入关键词" id="keywords">
						<button class="search-btn" type="button" id="search">搜索</button>
						<button class="release-requirement" type="button"><a href="/need/toPublish?pageNum=1&pageSize=3" style="color: white">发布需求</a></button>
						<button class="become-provider" type="button"><a href="/product/toProduct?pageNum=1&pageSize=15" style="color: white">发布产品</a></button>
					</form>
				</div>
			</div>
			<!-- 导航栏 -->
			<div class="topnav">
				<nav class="navbar navbar-default" role="navigation">
					<div class="row">
						<div  class="navbar1">
							<ul class="nav navbar-nav">
								<li class="first-level dropdown"><a href="/" title="首页">首页</a><i class="downline"></i>
								</li>
								<li class="first-level dropdown"><a href="/product/toProduct?pageNum=1&pageSize=15" title="产品供需">产品供需</a><i class="downline"></i>
								</li>
								<li class="first-level dropdown"><a href="/need/needList?pageNum=1&pageSize=5&classify=23" title="项目寻找">项目寻找</a><i class="downline"></i>
								</li>
								<li class="first-level dropdown"><a href="/need/toPublish?pageNum=1&pageSize=3" title="发布需求">发布需求</a><i class="downline"></i>
								</li>
								<li class="first-level dropdown"><a href="/toShow" title="案例展示">案例展示</a><i class="downline"></i>
								</li>
								<li class="first-level dropdown"><a href="/toDiaoyan" title="企业调研">企业调研</a><i class="downline"></i>
								</li>
								<li class="first-level dropdown"><a href="/zhiku" title="平台智库">平台智库</a><i class="downline"></i>
								</li>
								<li class="first-level dropdown"><a href="/about" title="关于我们">关于我们</a><i class="downline"></i>
								</li>
							</ul>
						</div>
					</div>
				</nav>
				<!--登录注册-->
				<!--<div class="userinfor">-->
				<!--    &lt;!&ndash;<a   class="userbtn btnLogin" data-toggle="modal" data-target="#myModal">报名</a>&ndash;&gt;-->
				<!--    -->
				<!--    <a class="userbtn" href="/login.jspx">登录</a>-->
				<!--    <a class="userbtn" href="/register.jspx">注册</a>-->
				<!--    -->
				<!--</div>-->
			</div>
		</div>
	</div>
<!--幻灯片-->
	<#include "./icn/show.ftlh">
<!-- 模块注册入口 -->
<div class="container">
	<div class="row" style="height: 50px; padding-top: 10px;">
		<a href="/user/toRegister"><div class="col-md-12 col-md-4 text-center" style="font-size: 20px; background-color: #cbecd2;">用户注册</div></a>
		<a href="/tologin"><div class="col-md-12 col-md-4 text-center" style="font-size: 20px; background-color: #ecccb7;">用户登录</div></a>
		<a href="/user/tozone"><div class="col-md-12 col-md-4 text-center" style="font-size: 20px; background-color: #a8d2ec;">个人中心</div></a>
	</div>
</div>
<br>

<!--服务-->
<section class="service">
	<div class="container">
		<h2>需求方参与流程</h2>
		<ul class="clearfix">
			<li class="col-xs-12 col-sm-6 col-md-4 clearfix">
				<a href="/need/toPublish?pageNum=1&pageSize=3">
					<div class="f1">
						<div><img src="/images/2-01.png"></div>
						<div class="ser">
							<h3>发布需求</h3>
							<p></p>
						</div>
					</div>
				</a>
			</li>
			<li class="col-xs-12 col-sm-6 col-md-4 clearfix">
				<a href="">
					<div class="f2">
						<div><img src="/images/2-02.png"></div>
						<div class="">
							<h3>项目审核</h3>
							<p></p>
						</div>
					</div>
				</a>
			</li>
			<li class="col-xs-12 col-sm-6 col-md-4 clearfix">
				<a href="/need/needList?pageNum=1&pageSize=5&classify=23">
					<div class="f3">
						<div><img src="/images/2-03.png"></div>
						<div class="">
							<h3>供需查找</h3>
							<p></p>
						</div>
					</div>
				</a>
			</li>
			<li class="col-xs-12 col-sm-6 col-md-4 clearfix">
				<a href="">
					<div class="f4">
						<div><img src="/images/2-04.png"></div>
						<div class="">
							<h3>供需对接</h3>
							<p></p>
						</div>
					</div>
				</a>
			</li>
			<li class="col-xs-12 col-sm-6 col-md-4 clearfix">
				<a href="">
					<div class="f5">
						<div><img src="/images/2-05.png"></div>
						<div class="">
							<h3>项目签约</h3>
							<p></p>
						</div>
					</div>
				</a>
			</li>
			<li class="col-xs-12 col-sm-6 col-md-4 clearfix">
				<a href="">
					<div class="f6">
						<div><img src="/images/2-06.png"></div>
						<div class="">
							<h3>项目完成</h3>
							<p></p>
						</div>
					</div>
				</a>
			</li>
		</ul>
	</div>
</section>
<!--关注-->
<section class="focus">
	<div class="container clearfix">
		<div class="fo-ti">
			<h2>成功案例</h2>
			<p>Successful Cases</p>
		</div>
		<div class="clearfix">
			<figure class="col-xs-6 col-sm-6 col-md-3">
				<img src="images/g1.png">
				<figcaption>仙农塑业</figcaption>
			</figure>
			<figure class="col-xs-6 col-sm-6 col-md-3">
				<img src="images/g2.png">
				<figcaption>华正检测</figcaption>
			</figure>
			<figure class="col-xs-6 col-sm-6 col-md-3">
				<img src="images/g3.png">
				<figcaption>华冠塑业</figcaption>
			</figure>
			<figure class="col-xs-6 col-sm-6 col-md-3">
				<img src="images/g4.png">
				<figcaption>意利塑业</figcaption>
			</figure>
		</div>
		<div class="customer clearfix">
			<div class="cus-left col-md-4">
				<h2>automation project<strong>自动化项目</strong></h2>
				<p>主要分类</p>
			</div>
			<div class="cus-right col-md-8">
				<ul>
					<li class="col-sm-6 bot15">
						<a href="/need/needList?pageNum=1&pageSize=1&classify=23">
							<div class="col-sm-2"><i class="icon-users"></i></div>
							<div class="col-sm-10">
								<strong>生产自动化</strong>
								<p>塑胶生产、铝材生产、五金生产...</p>
							</div>
						</a>
					</li>
					<li class="col-sm-6 bot15">
						<a href="/need/needList?pageNum=1&pageSize=1&classify=26">
							<div class="col-sm-2"><i class="icon-office"></i></div>
							<div class="col-sm-10">
								<strong>组装自动化</strong>
								<p>包装、码垛、开箱、封装...</p>
							</div>
						</a>
					</li>
					<li class="col-sm-6">
						<a href="/need/needList?pageNum=1&pageSize=1&classify=24">
							<div class="col-sm-2"><i class="icon-stats-dots"></i></div>
							<div class="col-sm-10">
								<strong>焊接自动化</strong>
								<p>点焊、气焊、切口焊接...</p>
							</div>
						</a>
					</li>
					<li class="col-sm-6">
						<div class="col-sm-2"><i class="icon-address-card-o"></i></div>
						<div class="col-sm-10">
							<strong>其他</strong>
							<p>输送线、快递分拣...</p>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
</section>
<!--优势-->
<section class="advantage">
	<div class="container">
		<div class="ad-ti">
			<h2>优势</h2>
			<p>更优的服务</p>
		</div>
		<div class="ad-nei clearfix">
			<ul>
				<li class="col-md-6 col-sm-6 col-xs-6 clearfix">
					<div class="col-sm-3"><img src="images/st_03.png"></div>
					<div class="col-sm-9">
						<strong>专业团队</strong>
						<p>我们拥有专业的自动化设计团队，信息化设计团队，有多个设计工程项目经验，帮你及时解决在项目中遇到的难题。</p>
					</div>
				</li>
				<li class="col-md-6 col-sm-6 col-xs-6 clearfix">
					<div class="col-sm-3"><img src="images/st_05.png"></div>
					<div class="col-sm-9">
						<strong>自动化专家</strong>
						<p>我们在自动化设计、解决方案上山东理工大学信息化，自动化设计教授与我们长期合作，并为我们的团队提供重要的技术支持。</p>
					</div>
				</li>
				<li class="col-md-6 col-sm-6 col-xs-6 clearfix">
					<div class="col-sm-3 "><img src="images/st_09.png"></div>
					<div class="col-sm-9 ">
						<strong>解决方案</strong>
						<p>自动化设计、产品（技术）供需对接一站式解决方案。</p>
					</div>
				</li>
				<li class="col-md-6 col-sm-6 col-xs-6 clearfix">
					<div class=" col-sm-3"><img src="images/st_10.png"></div>
					<div class=" col-sm-9">
						<strong>开发团队</strong>
						<p>自动化设计团队，信息化设计团队，产品顾问、实施团队。</p>
					</div>
				</li>
			</ul>
		</div>
	</div>
</section>
<!--最新动态-->
	<section class="new clearfix">
		<div class="container">
			<h2>最新合作</h2>
			<div class="col-md-6 new-r">
				<h3><img src="images/news_01.png"><em>合作商</em></h3>
				<div class="myscroll">
					<ul>
						<li>
							<a href="">淄博深科信息科技有限公司</a><time class="right">2020-06</time>
						</li>
						<li>
							<a href="">淄博鑫展翔机电有限公司</a><time class="right">2020-06</time>
						</li>
						<li>
							<a href="">山东三石智能科技有限公司</a><time class="right">2020-06</time>
						</li>
						<li>
							<a href="">淄博众成机器人科技有限公司</a><time class="right">2020-06</time>
						</li>
						<li>
							<a href="">山东金巨丰软件有限公司</a><time class="right">2020-06</time>
						</li>
					</ul>
				</div>

			</div>
			<div class="col-md-6 new-r">
				<h3><img src="images/news_02.png"><em>最新加入企业</em></h3>
				<div class="myscroll">
					<ul>
						<li>
							<a href="">华正检测分析有限公司</a><time class="right">2020-07-17</time></li>
						<li>
							<a href="">仙农塑业有限公司</a><time class="right">2020-06-18</time></li>
						<li>
							<a href="">潍坊华冠塑业有限公司</a><time class="right">2019-08-19</time></li>
						<li>
							<a href="">意利塑业有限公司</a><time class="right">2018-07-17</time></li>
						<li>
							<a href="">济南瀚华教育有限公司</a><time class="right">2017-03-18</time></li>
						<li>
							<a href="">康师傅餐饮集团</a><time class="right">2016-06-06</time></li>

					</ul>
				</div>

			</div>
		</div>
	</section>
<!--页脚-->
	<#include "./icn/footer.ftlh">

<script src="/js/bootstrap.min.js"></script>
<script src="/layui/layui.all.js"></script>
<script src="/js/jquery.hwslider.min.js"></script>
<script src="/js/main.js"></script>
<script src="/js/header.js"></script>
	<script>
		/*banner*/
		$(function() {
			var t = null;
			$(".li-slide").hover(function () {
				var li = $(this);
				t = setTimeout(function () {
					//要执行的操作；鼠标放上去后200毫秒才执行
					li.find(".drop-panel").slideDown(300);
				}, 200);
			}, function () {
				clearTimeout(t);
				$(this).find(".drop-panel").slideUp(300);
			});

			$("#search").click(function(){
				var key = $("#keywords").val();
				var type = $("#selectType").val();
				if (key != ""){
					if (type == 1){
						location.href = "/need/needList?pageNum=1&pageSize=5&keyWord="+key;
					}else{
						location.href = "/product/toProduct?name="+key+"&pageNum=1&pageSize=15"
					}
				}

			})
			$("#hwslider").hwSlider({
				height: 220,
				autoPlay: true,
				arrShow: true,
				dotShow: true,
				touch: true,
				interval:3000,
				speed:1000
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
</body>

</html>