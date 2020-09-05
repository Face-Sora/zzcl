<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="text/javascript" src="/js/jquery.js"></script>
		<link rel="stylesheet" type="text/css" href="/css/page-index.css">
		<link rel="stylesheet" href="/css/project.css">
		<link rel="stylesheet" href="/css/bootstrap.css">
		<link rel="stylesheet" href="/css/bootstrap-theme.css">
		<link rel="stylesheet" href="/css/bootstrap.min.css">
		<link rel="stylesheet" href="/css/bootstrap-theme.min.css">
		<title>项目查找页面</title>

	</head>
	<body style="overflow-x:hidden">
	<div class="header w">

		<#include "./icn/header.ftlh">

	</div>



	<div class="banner w">
		<img src="/images/3.jpg" alt="这是一张主图" style="width: 940px;height: 373px; margin-top: 30px;">
	</div>
	<br /><br /><br /><br /><br /><br />
	<!-- 搜索框 -->
	<div class="coltainer lr">
		<div class="row">
			<div class="col-md-8">
				<div class="row">
					<div class="col-md-6"></div>
					<div class="col-md-6" style="text-align: center; font-size: 30px;font-weight: bold;color: #000000;">|&nbsp;资源寻找&nbsp;|</div>
				</div>
			</div>
			<div class="col-md-4">
				<form action="#" class="navbar-form navbar-right" role="seach">
					<div class="form-group">
						<input id="key" type="text" class="form-control" placeholder="请输入项目关键词" />
					</div>
					<button class="btn btn-info" onclick="search()">搜索</button>
				</form>
			</div>
		</div>
	</div>

	<div class="table-responsive lr" style="overflow-x:hidden">
		<table class="table table-bordered">
			<thead>
			<div  style=" background-color: #FF9900; line-height: 25px; margin-top: 10px;">
				<p align="center">自动化设备</p>
			</div>
			</thead>
			<tbody style="text-align: center;">
			<tr>
				<td><a href="###">包装材料</a></td> <!--项目链接用于转接至公司网址-->
				<td><a href="###">仓储物流</a></td>
				<td><a href="###">电工电气</a></td>
			</tr>
			<tr>
				<td><a href="###">服装纺织</a></td>
				<td><a href="###">化学化工</a></td>
				<td><a href="###">食品饮料</a></td>
			</tr>
			<tr>
				<td><a href="###">汽车配件</a></td>
				<td><a href="###">五金机电</a></td>
				<td><a href="###">医疗器械</a></td>
			</tr>
			</tbody>
		</table>
		<table class="table table-bordered">
			<thead>
			<div  style=" background-color: #67B168; line-height: 25px;">
				<p align="center">环境处理</p>
			</div>
			</thead>
			<tbody style="text-align: center;">
			<tr>
				<td><a href="###">养殖废水</a></td>
				<td><a href="###">生活废水</a></td>
				<td><a href="###">工业废水</a></td>
				<td><a href="###">生活废水</a></td>
			</tr>
			</tbody>
		</table>
		<table class="table table-bordered">
			<thead>
			<div  style=" background-color: deepskyblue; line-height: 25px;">
				<p align="center">分析检测</p>
			</div>
			</thead>
			<tbody style="text-align: center;">
			<tr>
				<td><a href="###">质量检测</a></td>
				<td><a href="###">成分检测</a></td>
				<td><a href="###">工艺检测</a></td>
			</tr>
			</tbody>
		</table>
	</div>
	<hr style="width: 100%; border: #BBBBBB solid 1px;">

	</div>






	<br><br><br>
	<!--底部版权-->
	<#include "./icn/footer.ftlh">







	<script type="text/javascript">
		DD_belatedPNG.fix(div,img,a)
	</script>
	<script type="text/javascript" src="/js/main.js"></script>
	<script type="text/javascript" src="/js/bootstrap.js"></script>
	<script type="text/javascript" src="/js/DD_belatedPNG_0.0.8a.js"></script>
	<script>
		$(function () {
			$("td").click(function () {
				var needName = $(this).text();
				window.open( "/need/findByTypeName?needName=" + needName,"_blank");
			})
		})

		function search() {
			var key = $("#key").val();
			window.open("/need/findByKey?key="+key,"_blank");
		}
	</script>
	</body>
</html>