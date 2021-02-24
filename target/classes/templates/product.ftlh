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
		<link href="/layui-v2.5.7/layui/css/layui.css" rel="stylesheet">
		<style type="text/css">
			.product_box{
				/*width: 1200px;*/
				/*height: 950px;*/
				/*margin-left: 150px;*/
			}
			.product_box li > div{
				/*width: 15%;*/
				height: 300px;
				padding: 10px;
				background-color: white;
				margin: 15px;
				display:block;
				position:relative;
				float:left;
			}
			div[name='detail']{
				display: flex;
				align-items: flex-end;
				width: 100%;
				height: 40px;
				background: linear-gradient(to right,#00A8FF,#00D2FF);
			}

			div[name='detail'] a{
				width: 100%;
				height: 30px;
				font-size: 15px;
				text-align: center;
				color:white;
			}
			#search_box{
				border: 1px solid #FF4A2B;
			}

			#basic-addon2{
				border: none;
				background-color: #FF4A2B;
				color: white;
				border-radius: 0;
			}

			#product_name{
				border: none;
			}

			#push_btn{
				background-color: white;
				color: #FF4A2B;
				border: 1px solid #FF4A2B;
				height: 40px;
				border-radius: 15px;
				padding: 8px;
			}
			#sear_push{
				margin-left: 400px;
			}

			@media screen and (max-width:1200px) {
				#sear_push{
					margin-left: 0px;
				}
			}
		</style>
		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>

    <![endif]-->
	</head>
	<body  ng-app="myApp">
		<#include "./icn/header.ftlh">
		<div class="container">
			<div class="row">
				<div class="col-md-12" id="sear_push">
					<div style="padding: 30px;">
						<div id="search_box" class="input-group col-lg-4" style="float: left;margin-right: 10px">
							<input type="text" id="product_name" class="form-control" placeholder="请输入商品名称" aria-describedby="basic-addon2">
							<span name="search" class="input-group-addon" id="basic-addon2">
								<i class="glyphicon glyphicon-search"></i>搜索
							</span>
						</div>
						<button id="push_btn" data-toggle="modal" data-target="#product_modal">
							<i class="glyphicon glyphicon-plus"></i>
							<strong>我要发布</strong>
						</button>
					</div>
				</div>
			</div>
			<div class="row">
				<div style="height: 60px;" class="col-md-12">
					<div id="type_box" style="height: 100%;background-color: #FFF;float: left;margin: auto;width: 20%">
						<h2 style="background-color:#FF4A2B;height: 70%;display: flex;align-items: flex-end;">
							<a href="" style="margin-left: 10px;height: 100%;width: 100%">
								<img src="/images/type.png" alt="">
								<span style="font-size:16px;margin-left:5px;color: white">全部商品分类</span>
							</a>
						</h2>
						<div id="type_ul" class="list-group" style="display: none;z-index: 99999;position: absolute;background-color:#475A73;width: 100%">
							<#list types as type>
								<a href="#" class="list-group-item" name="type" value="${type.id}">${type.type}</a>
							</#list>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div style="background-color: #f6f6f6;z-index: 111">
			<div class="product_box container">
				<div class="clearfix">
				<ul style="margin-top: 20px;">
					<#list products.records as product>
					<li>
						<div class="col-xs-5 col-md-2">
							<img src="${product.photo}" class="p_photo" style="width: 100%;height: 60%">
							<div style="width: 100%;height: 40%">
								<div style="width: 100%;height: 20%">
									<h4 style="font-size: 14px">${product.title}</h4>
								</div>
								<div style="width: 100%;height: 20%">
									<span style="font-size: 14px">类别: ${product.type}</span>
								</div>
								<div name="detail">
									<a href="/product/toProductDetail?productId=${product.id}" target="_blank">查看详情</a>
								</div>
							</div>
						</div>
					</li>
					</#list>
				</ul>
				</div>
			</div>
			<div class="page clearfix" id="pages">
				<#if products.current gt 1>
					<a href="/product/toProduct?pageNum=${products.current-1}&pageSize=15" class="prev"><em></em>上一页</a>
				</#if>
				<#if pages==0>
					<a href="/product/toProduct?pageNum=1&pageSize=15">1</a>
				<#else>
					<#list 1..pages as i>
						<a href="/product/toProduct?pageNum=${i}&pageSize=15">${i}</a>
					</#list>
				</#if>
				<#if products.current < pages>
					<a href="/product/toProduct?pageNum=${products.current+1}&pageSize=15" class="next">下一页<em></em></a>
				</#if>
			</div>
		</div>

		<div class="modal" id="product_modal" tabindex="-1" role="dialog"
			 aria-labelledby="mySmallModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span>
							<span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title">商品发布</h4>
					</div>
					<div class="modal-body">
						<form role="form">
							<div class="input-group" style="padding: 0px 1cm">
								<select id="product_type" style="width: 142px">
									<option value ="000">请选择商品类别：</option>
									<#list types as ptype>
									<option value ="${ptype.id}">${ptype.type}</option>
									</#list>
								</select>
							</div>
							<br />
							<div class="input-group" style="padding: 0px 1cm">
								<span class="input-group-addon">
                            		<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								</span>
								<input type="text" class="form-control" id="title" placeholder="商品标题">
							</div>
							<br>
							<div class="input-group" style="padding: 0px 1cm">
								<span class="input-group-addon" >
									<span class="glyphicon glyphicon-user " aria-hidden="true"></span>
								</span>
								<input type="text" class="form-control"  id="owner" placeholder="联系人" style="width: 90%">
								<span class="input-group-addon">
                            		<span class="glyphicon glyphicon-phone " aria-hidden="true"></span>
								</span>
								<input type="text" class="form-control" id="phone" placeholder="联系方式" style="width: 90%">
							</div>
							<br />
							<div class="input-group" style="padding: 0px 1cm">
								<span class="input-group-addon" >
									<span class="glyphicon glyphicon-home" aria-hidden="true"></span>
								</span>
								<input type="text" class="form-control"  id="company" placeholder="生产企业" style="width: 90%">
								<span class="input-group-addon">
                            		<span class="glyphicon glyphicon-share-alt" aria-hidden="true"></span>
								</span>
								<input type="text" class="form-control" id="address" placeholder="企业地址" style="width: 90%" >
							</div>
							<br/>

							<div class="input-group" style="padding: 0px 1cm">
								<span class="input-group-addon">
									<span class="glyphicon glyphicon-camera" aria-hidden="true"></span>
								</span>
								<input type="file" class="form-control" id="photo" multiple="multiple" placeholder="商品图片">
							</div>
							<br/>
							<div class="input-group" style="padding: 0px 1cm;width: 100%">
								<textarea style="width: 100%;" id="detail" placeholder="商品详述..."></textarea>
							</div>

							<br />
							<div class="modal-footer">
								<input type="button" id="publish" class="btn btn-info" value="发布" />
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<#include "./icn/footer.ftlh">
		
		<script src="/js/jquery.js"></script>
		<script src="/js/bootstrap.min.js"></script>
		<script src="/js/jquery.hwslider.min.js"></script>
		<script src="/js/main.js"></script>
		<script src="/js/angular.js"></script>
		<script src="/layui-v2.5.7/layui/layui.js"></script>
		<!-- 产品介绍，字数限制 -->
		<script src="/js/app.js"></script>
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

				var check = "";
				function checkNotEmpty(ids) {
					$.each(ids, function (index, item) {
						var value = $("#" + item).val();
						if (value == undefined || value.length <= 0) {
							$("#" + item).css("border", "2px solid red");
							check = "false";
							return;
						}else {
							check = "true";
						};
					});
				}

				$("#type_ul").css("width",$("#type_box").css("width"));

				$("#type_box").mouseover(function () {
					$("#type_ul").css("display","block");
				})

				$("#type_box").mouseout(function () {
					$("#type_ul").css("display","none");
				})

				$("a[name='type']").click(function(){
					var typeId = $(this).attr("value");
					console.log("type == " + typeId);
					location.href = "/product/toProduct?typeId="+typeId+"&pageNum=1&pageSize=15";
				})
				$("#publish").click(function () {
					var type = $("#product_type").val();
					var title = $("#title").val();
					var owner = $("#owner").val();
					var phone = $("#phone").val();
					var company = $("#company").val();
					var detail = $("#detail").val();
					var address = $("#address").val();
					var iphoto = $("#photo")[0].files[0];

					console.log("type = " + type + ", photo = " + photo);
					if (type == null || type == "000") {
						$("#product_type").css("border",'2px solid red');
						return;
					}

					checkNotEmpty(["title", "owner", "phone", "company","address","detail"]);
					console.log(check);
					if (check == "false") {
						check = "true";
						return;
					}

					var formData = new FormData();
					formData.append("typeId",type);
					formData.append("title",title);
					formData.append('company',company);
					formData.append("owner",owner);
					formData.append("phone",phone);
					formData.append("detail",detail);
					formData.append("address",address);
					formData.append("iphoto",iphoto);

					$.ajax({
						type: "post",
						url: "/product/saveProduct",
						data: formData,
						processData:false,
						cache:false,
						mimeType:"multipart/form-data",
						contentType:false,
						success: function(result) {
							if (result == 'success') {
								$("#product_modal").modal('hide');
								alert("商品发布成功！");
							}
						}
					})
				});

				$("input").on("focus",function () {
					$(this).css("border","1px solid #999");
				})
				$("textarea").on("focus",function () {
					$(this).css("border","1px solid #999");
				})

				$("span[name='search']").click(function(){
					var name = $("#product_name").val();
					if (name != ""){
						location.href = "/product/toProduct?name="+name+"&pageNum=1&pageSize=15";
					}
				})
				//
				// $(".p_photo").css("width",$(this).parent().outerWidth());
				// $(".p_photo").css("height",$(this).parent().outerHeight());
			})

		</script>
		
	</body>
</html>
