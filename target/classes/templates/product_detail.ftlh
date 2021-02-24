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
		<style type="text/css">
			.product_box{
				width: 100%;
				height: 400px;
				padding: 10px 100px;
				background-color: #f6f6f6;
			}
			.photo{
				width: 40%;
				height: 100%;
				float: left;
			}
			.photo img{
				width: 100%;
				height: 100%;
			}
			.owner{
				height: 20%;
				background-color: #eee;
			}
			.head{
				height: 50%;
			}
			.foot{
				height: 30%;
			}
			.product{
				width: 50%;
				height: 100%;
				margin: 10px 40px;
				float: left;
			}
			.product div{
				margin-top: 10px;
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
		<div class="product_box">
			<div class="photo">
				<img src="${product.photo}" alt="">				
			</div>
			<div class="product">
				<div class="head">
					<h3>${product.title}</h3>
					<div>
						产品简介：
						<p>
							${product.detail}
						</p>
					</div>
				</div>
				<div class="owner">
					<p>
						联系人：${product.owner}
					</p>
					<p>
						联系电话：${product.phone}
					</p>
				</div>
				<div class="foot">
					<p>
						发布公司：${product.company}
					</p>
					<p>
						公司地址：${product.address}
					</p>
				</div>
			</div>
		</div>
		<#include "./icn/footer.ftlh">
		
		<script src="/js/jquery.js"></script>
		<script src="/js/bootstrap.min.js"></script>
		<script src="/js/jquery.hwslider.min.js"></script>
		<script src="/js/main.js"></script>
		<script src="/js/angular.js"></script>
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


			})

		</script>
		
	</body>
</html>
