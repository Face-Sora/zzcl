<!DOCTYPE html>
<html lang="zh-CN">

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="keywords" content="">
		<title>众智联云科技（山东）有限公司</title>
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
		<#include './icn/header.ftlh'>
		<!--大图-->
		<section class="ban">
			<img src="/images/banner2.jpg">
		</section>
		<section class="new-dan">
			<div class="container auto">
				<div class="clearfix">
					<div class="pic-tit">
						<div class="ab-tit">
							<h2><em>发布</em><em class="f-normal">需求</em></h2>
							<p class="s-font">Release Requirements</p>
						</div>
						<div class="v-line"></div>
					</div>
					
					<div class="auto clearfix">
						<div class="col-sm-3">
							<ul class="lx-dan">
								<!-- <li><strong>发布需求</strong></li> -->
							</ul>
						</div>
						<div class="col-sm-9">
								<select class="con" id="type">
									<option>请选择项目类型：</option>
									<#list needTypes as type>
										<option value="${type.id}">${type.name}</option>
									</#list>
								</select>
								<input class="con" type="text" id="title" placeholder="项目名：" />

								<input class="min" type="text" id="adress" placeholder="项目地址：" />
								<input class="min" type="text" id="price" placeholder="项目预算：" />
								<input class="min" type="text" id="deadLine" placeholder="截止日期：" />
								<br />
								<textarea type="text" placeholder="项目详细描述：" id="description" style="resize: none;"></textarea>

								<div class="col-xs-3">

								</div>
								<div class="col-xs-4"></div>
								<div class="col-xs-5">
									<button style="margin-bottom: 5px;" id="submit" class="submit btn btn-info">发布</button>
								</div>
						</div>
					</div>
					
					<div class="newdan-r">
						<ul>
							<#if (needs.records?size>0)>
								<#list needs.records as need>
									<li class="clearfix">
										<div class="col-sm-10">
											<div class="col-sm-4">
												<h4><a href="">${need.title}</a></h4>
												<span class="glyphicon glyphicon-user"></span><span>${need.user.nickName}</span>
												<span class="glyphicon glyphicon-phone"></span><span>${need.user.phone}</span>
												<div><span style="color: #c87f0a">项目地址：</span><span>${need.adress}</span></div>
												<div><span style="color: #c87f0a">项目预算：</span><span>${need.price}</span></div>
												<span style="color: #c87f0a">截止日期：</span><span>${need.deadLine}</span>
											</div>
											<div class="col-sm-6"><p>${need.description}</p></div>
											<div class="col-sm-2 time">
												<strong>${need.updateTime?string("dd")}</strong>
												<time>${need.updateTime?string("yyyy-MM")}</time>
											</div>
										</div>
									</li>
								</#list>
							<#else>
								<li class="clearfix">该类需求暂时无人发布！</li>
							</#if>
						</ul>
						<div class="page tc clearfix">
							<#if needs.current gt 1>
							<a href="/need/toPublish?pageNum=${needs.current-1}&pageSize=${needs.size}" class="prev"><em></em>上一页</a>
							</#if>
							<#list 1..pages as i>
							<a href="/need/toPublish?pageNum=${i}&pageSize=${needs.size}">${i}</a>
							</#list>
							<#if needs.current < pages>
							<a href="/need/toPublish?pageNum=${needs.current+1}&pageSize=${needs.size}" class="next">下一页<em></em></a>
							</#if>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--页脚-->
		<#include "./icn/footer.ftlh">

		<script src="/js/bootstrap.min.js"></script>
		<script src="/js/jquery.hwslider.min.js"></script>
		<script src="/js/main.js"></script>
		<script>


			/*banner*/
			$(function() {

				var check = "";
				function checkNotEmpty(ids) {
					$.each(ids, function (index, item) {
						var value = $("#" + item).val();
						if (value.length <= 0) {
							$("#" + item).css("border", "2px solid red");
							check = "false";
							return;
						}else {
							check = "true";
						};
					});
				}

				$("#submit").click(function () {
					var type = $("#type").val();
					var title = $("#title").val();
					var price = $("#price").val();
					var time = $("#deadLine").val();
					var des = $("#description").val();
					var adress = $("#adress").val();
					if (type == null || type == "请选择项目类型：") {
						$("#type").css("border",'2px solid red');
						return;
					}

					checkNotEmpty(["title", "price", "deadLine", "description","adress"]);
					console.log(check);
					if (check == "false") {
						check == "true";
						return;
					}

					$.ajax({
						type: "post",
						url: "/need/saveNeed",
						data: {
							classify: type,
							price: price,
							title: title,
							deadLine: time,
							description: des,
							adress:adress
						},
						success: function(result) {
							if (result.success) {
								alert("项目已发送至后台，将在审核通过后完成发布！");
							} else {
								if (result.error == "notLogin"){
									alert("您还未登录，请登录后再尝试发布需求！");
									location.href = "/tologin";
								}else {
									alert(result.error);
								}
							}
						}
					})
				});




				$("#hwslider").hwSlider({
					height: 190,
					autoPlay: true,
					arrShow: true,
					dotShow: true,
					touch: true
				})
			});
		</script>
	</body>

</html>