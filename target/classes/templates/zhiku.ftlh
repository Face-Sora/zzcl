<!DOCTYPE html>
<html lang="zh-CN">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="keywords" content="">
		<title>众智创联云科技(山东)有限公司-平台智库</title>
		<link href="/css/bootstrap.min.css" rel="stylesheet">
		<link href="/css/hwslider.css" rel="stylesheet">
		<link href="/css/fonts.css" rel="stylesheet">
		<link href="/css/reset.css" rel="stylesheet">
		<link href="/css/style.css" rel="stylesheet">
		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
	<style type="text/css">
		.bor{
			border: grey 1px solid;
			max-width: 300px;
			height: 150px;
		}
		td img{
			width: 150px;
			height:200px;
		}
		td{
			width: 250px;
			padding: 20px;
		}
	</style>
	</head>
	<body>
		<#include "./icn/header.ftlh">
		<section class="ban">
			<img src="/images/b2.jpg">
		</section>
		<br>
		<section class="beijing">
			<div class="container">
				<table>
					<tr>
						<td><div>
								<p>庄须叶</p>
								<p>职称：教授</p>
								<p>专业：人工智能</p>
								<p>荣誉：山东理工大学特聘教授，入选工信部“人工智能”专家库</p>
								<img src="/man/zxy.png" alt="">
							</div>
						</td>
						<td><div>
								<p>张桂香</p>
								<p>职称：教授</p>
								<p>专业：机械工程</p>
								<p>荣誉：山东理工大学先进制造研究院精密机械加工方向合作带头人</p>
								<img src="/man/zgx.png" alt="">
							</div>
						</td>
						<td><div>
								<p>丛建臣</p>
								<p>职称：教授</p>
								<p>专业：新材质研发</p>
								<p>荣誉：国家外国专家局重点引智项目评审专家、山东大学兼职博士生导师</p>
								<img src="/man/cjc.png" alt="">
							</div>
						</td>
						<td>
							<div>
								<p>于文强</p>
								<p>职称：副教授</p>
								<p>专业：机械设计</p>
								<p>荣誉：中国机械工程学会机械设计工程师山东省考试培训中心负责人</p>
								<img src="/man/ywq.png" alt="">
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<div>
								<p>祝木田</p>
								<p>职称：副教授</p>
								<p>专业：电气工程师</p>
								<p>荣誉：央财支持的重点建设专业电气自动化技术专业带头人，山东省自动化学会委员</p>
								<img src="/man/zmt.png" alt="">
							</div>
						</td>
						<td>
							<div>
								<p>宋作军</p>
								<p>职称：副教授</p>
								<p>专业：工程力学</p>
								<p>荣誉：山东省特色专业负责人，淄博职业学院汽车检测与维修技术专业带头人</p>
								<img src="/man/szj.png" alt="">
							</div>
						</td>
						<td>
							<div>
								<p>胡玉叶</p>
								<p>职称：高级讲师</p>
								<p>专业：电子电气工程</p>
								<p>荣誉：淄博职业学院教学名师、热能动力设备与应用专业带头人</p>
								<img src="/man/hyy.png" alt="">
							</div>
						</td>
					</tr>
				</table>
				<br>
				<div class="text-center">
					<a href="#">
						<button class="btn btn-primary">点击查看更多--> </button>
					</a>
				</div>
			</div>
		</section>


		<br>
		<!-- 底部 -->
		<#include "./icn/footer.ftlh">
		
		<script src="/js/jquery.js"></script>
		<script src="/js/bootstrap.min.js"></script>
		<script src="/js/jquery.hwslider.min.js"></script>
		<script src="/js/main.js"></script>
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
		
		        $("#register").click(function () {
		            var phone = $("#rephone").val();
		            var email = $("#email").val();
		            var password = $("#password").val();
		            var nickName = $("#nickName").val();
		            var tendency = $("input[type='radio']:checked").val();
		
		            if (tendency == undefined){
		                $("#ten1").css("border","2px dotted red");
		                $("#ten2").css("border","2px dotted red");
		                return;
		            }
		            if (checkPwd() && checkNotEmpty(["rephone","email","password","password2","nickName"])){
		                $.ajax({
		                    type:"post",
		                    url:"/user/register",
		                    data:{
		                        phone : phone,
		                        email : email,
		                        pwd : password,
		                        tendency : tendency,
		                        nickName : nickName
		                    },
		                    success:function (result) {
		                        if (result == "success"){
		                            $("#mymodal-data").modal("hide");
		                            $("#phone").val(phone);
		                            $("#mymodal").modal("show");
		                        }else {
		                            alert(result);
		                        }
		                    }
		                })
		
		            }
		        })
		
		        $("#login").click(function () {
		            var phone = $("#phone").val();
		            console.log(phone);
		            var pwd = $("#pwd").val();
		            $.ajax({
		                type:"post",
		                url:"/login",
		                data: {
		                    phone:phone,
		                    pwd:pwd
		                },
		                success:function (result) {
		                    if (result == "success"){
		                        $("#mymodal").modal("hide");
		                    }else{
		                        alert(result);
		                    }
		                }
		            })
		        })
		        $("#publish").click(function () {
		            $.ajax({
		                type:"get",
		                url:"/xinxi/needType/showAll",
		                success:function (result) {
		                    if (result.success){
		                        var options = "";
		                        $.each(result.types,function (index,value) {
		                            options += "<option value=" + "'" + value.id + "'" + ">" + value.name + "</option>"
		                        })
		                        $(options).appendTo($("#type"));
		                        $("#needmodal-data").modal("show");
		                    }else{
		                        $("#mymodal").modal("show");
		                    }
		                }
		            })
		        })
		
		        $("#type").on("change",function () {
		            $("#wran").text("");
		        })
		
		        $("input").on("focus",function () {
		            $(this).css("border","1px solid #999");
		        })
		        $("textarea").on("focus",function () {
		            $(this).css("border","1px solid #999");
		        })
		
		        $("#push").click(function () {
		            var type = $("#type").val();
		            var title = $("#title").val();
		            var price = $("#price").val();
		            var time = $("#time").val();
		            var des = $("#description").val();
		            if (type == null || type == "请选择"){
		                $("#wran").text("请选择需求类别!")
		                return;
		            }
		
		            if (!checkNotEmpty(["title","price","time","description"])){
		                return;
		            }
		
		            $.ajax({
		                type:"post",
		                url:"/need/saveNeed",
		                data:{
		                    classify:type,
		                    price:price,
		                    title:title,
		                    deadLine:time,
		                    description:des
		                },
		                success:function (result) {
		                    if(result.success){
		                        location.href = "/need/findByUserId?userId=" + result.userId;
		                    }else{
		                        alert(result.error + 1)
		                    }
		                }
		            })
		        })
		
		    })
		
		    function checkNotEmpty(ids) {
		        $.each(ids,function (index,item) {
		            var value = $("#"+item).val();
		            if (value == ""){
		                $("#"+item).css("border","2px solid red");
		                return false;
		            }
		        })
		        return true;
		    }
		
		    function checkPwd() {
		        if ($("#password").val() == $("#password2").val()){
		            return true;
		        }
		        $("#password").css("border","2px solid red");
		        $("#password2").css("border","2px solid red");
		        return false;
		    }
		
		
		</script>
		
	</body>
</html>
