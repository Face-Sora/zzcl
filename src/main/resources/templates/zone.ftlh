<!DOCTYPE html>
<html lang="zh-CN">

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="keywords" content="">
		<title>众智创联云科技（山东）有限公司</title>
		<link href="/css/bootstrap.min.css" rel="stylesheet">
		<link href="/css/hwslider.css" rel="stylesheet">
		<link href="/css/fonts.css" rel="stylesheet">
		<link href="/css/reset.css" rel="stylesheet">
		<link href="/css/style.css" rel="stylesheet">
		
		<script src="/js/jquery.min.js"></script>
		<script src="/js/bootstrap.min.js"></script>

	</head>

	<body>
		<#include "./icn/header.ftlh">
		<!--大图-->
		<!-- <section class="ban">
			<img src="images/banner2.jpg">
		</section> -->
		<section class="new-dan">
			<div class="container auto">
				<div class="clearfix">
					<div class="pic-tit">
						<div class="ab-tit">
							<h2><em>个人</em><em class="f-normal">中心</em></h2>
							<p class="s-font">Personal Center</p>
						</div>
						<div class="v-line"></div>
					</div>
					
					<div class="newdan-r">
						<ul>
<#--							<li class="clearfix">-->
<#--								<!-- <div class="col-sm-2">-->
<#--									<a href="nw1.html"><img src="images/renwu.jpg"></a>-->
<#--								</div> &ndash;&gt;-->
<#--								<div class="table" style="overflow-x:hidden">-->
<#--									<table class="table" border="" cellspacing="0" cellpadding="0">-->
<#--										<thead>-->
<#--											<tr>-->
<#--												个人资产-->
<#--											</tr>-->
<#--										</thead>-->
<#--										<tbody>-->
<#--											<tr>-->
<#--												<th width="8%">银行卡号</th>-->
<#--												<th width="5%">支出</th>-->
<#--												<th width="5%">收入</th>-->
<#--												<th width="5%">余额</th>-->
<#--											</tr>-->
<#--											<tr>-->
<#--												<th width="8%">暂无</th>-->
<#--												<th width="5%">0.00</th>-->
<#--												<th width="5%">0.00</th>-->
<#--												<th width="5%">0.00</th>-->
<#--											</tr>-->
<#--										</tbody>-->
<#--										-->
<#--									</table>-->
<#--									-->
<#--								</div>-->
<#--							</li>-->
							<br>
							<li class="clearfix">
								<!-- <div class="col-sm-2">
									<a href="nw1.html"><img src="images/renwu.jpg"></a>
								</div> -->
								<div class="table" style="overflow-x:hidden">
									<!--数据列表-->
									<table id="dataList" class="table table-bordered table-striped table-hover dataTable">
										<thead>您发布过的需求</thead>
										<tbody>
										<tr style="background-color: #bce8f1">
											<th>ID</th>
											<th class="">标题</th>
											<th class="">分类</th>
											<th class="">预算</th>
											<th class="">截止日期</th>
											<th class="">发布时间</th>
											<th class="">状态</th>
											<th class="text-center">操作</th>
										</tr>
										<#if needs?size==0>
											<tr><td>您还未发布过任何需求！</td></tr>
											<#else>
										<#list needs as need>
											<tr>
												<td>${need.id}</td>
												<td>${need.title}</td>
												<td>${need.needType.name}</td>
												<td>${need.price}</td>
												<td>${need.deadLine}</td>
												<td>${need.updateTime?string("yyyy-MM-dd")}</td>
												<td>
													<span id="${need.id}1">${(need.status == 'y')?string("审核通过","未审核")}</span>
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
										</#if>
										</tbody>
									</table>
									<!--数据列表/-->
									
								</div>
							</li>
							<br>
							<li class="clearfix">
								<div class="table" style="overflow-x:hidden">
									<table class="table" border="" cellspacing="0" cellpadding="0">
										<thead>
											<tr>
												我承接的项目
											</tr>
										</thead>
										<tbody>
										<tr style="background-color: #bce8f1">
											<th class="">标题</th>
											<th class="">分类</th>
											<th class="">甲方</th>
											<th class="">联系方式</th>
											<th class="">成交金额</th>
											<th class="">开始日期</th>
											<th class="">完成日期</th>
										</tr>
										<#if needs?size==0>
											<tr><td>您还未接手过任何项目！</td></tr>
										<#else>
											<#list doneeds as need>
												<tr>
													<td>${need.title}</td>
													<td>${need.needType.name}</td>
													<td>${need.user.nickName}</td>
													<td>${need.user.phone}</td>
													<td>${need.price}</td>
													<td>${need.beginTime?string("yyyy-MM-dd")}</td>
													<td>${need.finishTime?string("yyyy-MM-dd")}</td>
												</tr>
											</#list>
										</#if>
										</tbody>
										
									</table>
									
								</div>
							</li>
							
						</ul>
					</div>
				</div>
			</div>
		</section>
		<!--页脚-->
		<footer>
			<section class="footera">
				<div class="footera-sg">
					<p class="footera-sgp">众智创联云科技(山东)有限公司&nbsp;&nbsp;&nbsp;联系电话：400-0256 757&nbsp;&nbsp;&nbsp;地址：山东省淄博市张店区新村西路185号</p>
					<p class="footera_p">Copyright &copy; 众智创联云科技(山东)有限公司 鲁ICP备14043160号-5&nbsp;&nbsp; 版权所有</p>
				</div>
			</section>
		</footer>
		<div class="slide">
			<ul>
				<li>
					<a href="javascript:void(0);"><img src="/images/yewu.png"></a>
				</li>
				<li class="ke">
					<a href="javascript:void(0);"><img src="/images/kefu.png"></a>
					<p>400-0256 757</p>
				</li>
				<li>
					<a href="http://wpa.qq.com/msgrd?v=3&uin=2632418536&site=qq&menu=yes" target="_blank"><img src="/images/qq.png"></a>
				</li>
				<li id="go_top">
					<a href="javascript:void(0);"><img src="/images/top.png"></a>
				</li>
			</ul>
		</div>

<#--		<script src="/js/jquery.hwslider.min.js"></script>-->
<#--		<script src="/js/main.js"></script>-->
		<script>
			// /*banner*/
			// $(function() {
			// 	$("#hwslider").hwSlider({
			// 		height: 190,
			// 		autoPlay: true,
			// 		arrShow: true,
			// 		dotShow: true,
			// 		touch: true
			// 	});
			// });
			$("button[name='modify']").click(function(){
				var needId = $(this).attr("value");
				var text = $("#" + needId + "desc").val();
				// var begin = $("#" + needId + "be").val();
				// var finish = $("#" + needId + "fi").val();

				$.post("/need/modifyDesc",{needId:needId,desc:text},function(result){alert(result)});

			})
		</script>
	</body>

</html>
