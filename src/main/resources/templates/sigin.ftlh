<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1.0" />
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css" />
    <script src="/js/jquery.min.js"></script>

<style>
    html,body {
        height: 100%;
    }
    .box {
            background: -webkit-gradient(linear, 0 0, 0 100%, from(#6699FF), to(#66FFFF));
            margin: 0 auto;
            position: relative;
            width: 100%;
            height: 120%;
        }

    .login-box {
            width: 100%;
            max-width:500px;
            height: 400px;
            position: absolute;
            top: 35%;

            margin-top: -200px;
            /*设置负值，为要定位子盒子的一半高度*/
            
        }
    @media screen and (min-width:500px){
            .login-box {
                left: 50%;
                /*设置负值，为要定位子盒子的一半宽度*/
                margin-left: -250px;
            }
    }    
    
    .form {
        width: 100%;
        max-width:500px;
        height: 275px;
        margin: 25px auto 0px auto;
        padding-top: 25px;
    }    
    .login-content {
        height: 600px;
        width: 100%;
        max-width:500px;
        background-color: rgba(255, 250, 2550, .6);
        float: left;
    }        
        
        
    .input-group {
        margin: 0px 0px 30px 0px !important;
    }
    .form-control,
    .input-group {
        height: 40px;
    }
    
    .form-group {
        margin-bottom: 0px !important;
    }
    .login-title {
        padding: 20px 10px;
        background-color: rgba(0, 0, 0, .6);
    }
    .login-title h1 {
        margin-top: 10px !important;
    }
    .login-title small {
        color: #fff;
    }

    .link p {
        line-height: 20px;
        margin-top: 30px;
    }
    .btn-sm {
        padding: 8px 24px !important;
        font-size: 16px !important;
    }
</style>


</head>

<body>
<div class="box">
        <div class="login-box">
            <div class="login-title text-center">
                <h1><small>众智创联项目对接平台</small></h1>
            </div>
            <div class="login-content ">
            <div class="form">
            <form>
                <div class="form-group">
                    <div class="col-xs-12  ">
                        <div class="input-group">
                            <span class="input-group-addon"><span class="glyphicon glyphicon-phone"></span></span>
                            <input type="text" id="phone" name="phone" class="form-control" placeholder="请输入手机号">
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-xs-12  ">
                        <div class="input-group">
                            <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                            <input type="text" id="name" name="nickName" class="form-control" placeholder="请输入您的称呼">
                        </div>
                    </div>
                </div>
				<div class="form-group">
				    <div class="col-xs-12  ">
				        <div class="input-group">
				            <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
				            <input type="email" id="email" name="email" class="form-control" placeholder="请输入邮箱">
				        </div>
				    </div>
				</div>
                <div class="form-group">
                    <div class="col-xs-12  ">
                        <div class="input-group">
                            <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                            <input type="password" id="password" name="password" class="form-control" placeholder="请输入密码">
                        </div>
                    </div>
                </div>
				<div class="form-group">
					<div class="col-xs-12  ">
						<div class="input-group">
							<span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
							<input type="password" id="password2" name="password2" class="form-control" placeholder="再次输入密码">
						</div>
					</div>
				</div>
                <div class="input-group" style="padding: 0px 1cm">
<#--                    <div class="col-xs-12">-->
<#--                        <div class="col-xs-5">-->
                        <span class="input-group-addon">
                            <input id="gong" type="radio" aria-label="..." name="tendency" value="1">
                        </span>
                    <input id="ten1" type="button" class="form-control col-xs-3"  aria-label="..." value="我想接项目" style="width: 3cm">
<#--                        </div>-->
<#--                        <div class="col-xs-5">-->
                    <span class="input-group-addon">
                            <input type="radio" aria-label="..." name="tendency" value="2">
                        </span>
                    <input id="ten2" type="button" class="form-control col-xs-3" aria-label="..." value="我想发需求" style="width: 3cm" >
<#--                        </div>-->
<#--                    </div>-->
                </div>

                <div class="form-group" style="padding: 0px 1cm">
                        <a href="/" ><small><<<<首页</small></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <button type="button" class="btn btn-sm btn-info" id="register">注册</button>
                        <a href="/tologin" style="margin-top: 300px" >有账号! 登录 </a>
                </div>
            </form>
            </div>
        </div>
    </div>
</div>


	<script type="text/javascript">
        $(function () {
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
            $("#register").click(function () {
                var phone = $("#phone").val();
                var email = $("#email").val();
                var password = $("#password").val();
                var nickName = $("#name").val();
                var tendency = $("input[type='radio']:checked").val();

                if (tendency == undefined){
                    $("#ten1").css("border","2px dotted red");
                    $("#ten2").css("border","2px dotted red");
                    return;
                }
                checkNotEmpty(["phone","email","password","name"]);
                if (check == "false"){
                    check == true;
                    return;
                }
                if (checkPwd() && check != "false" ){
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
                                location.href = "/tologin?phone="+phone + "&pwd="+password;
                            }else {
                                alert(result);
                            }
                        }
                    })

                }
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