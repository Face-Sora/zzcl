<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1.0" />
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css" />
    <script src="/js/jquery.js"></script>
<style>
    html,body {
        height: 100%;
    }
    .box {
            background: -webkit-gradient(linear, 0 0, 0 100%, from(#6699FF), to(#66FFFF));
            margin: 0 auto;
            position: relative;
            width: 100%;
            height: 100%;
        }
    .login-box {
            width: 100%;
            max-width:500px;
            height: 600px;
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
        height: 450px;
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
                            <input type="text" id="phone" name="" class="form-control" placeholder="请输入手机号码">
							
                        </div>
					
                    </div>
                </div>
				
                <div class="form-group">
                    <div class="col-xs-12  ">
                        <div class="input-group">
                            <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                            <input type="text" id="password" name="password" class="form-control" placeholder="请输入新密码">
                        </div>
                    </div>
                </div>
				<div class="form-group">
				    <div class="col-xs-12">
				        <div class="input-group">
				            <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
				            <input type="text" id="password2" name="password" class="form-control" placeholder="请再次输入新密码">
				        </div>
				    </div>
				</div>
				
				<div class="form-group">
				    <div class="col-xs-12 col-xs-8">
				        <div class="input-group">
				            <!-- <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span> -->
				            <input type="text" id="checkCode" name="password" class="form-control" placeholder="请输入验证码">
				        </div>
				    </div>
					<div class="col-xs-12 col-xs-4">
					    <div class="input-group">
					        <!-- <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span> -->
					        <input type="button" id="getCheckCode"  style="margin-top: 2px;" class="btn btn-warning" value="获取验证码">
					    </div>
					</div>
				</div>
				
				<br>
                <div class="form-group form-actions">
                    <div class="col-xs-4 col-xs-offset-4 ">
                        <button type="button" class="btn btn-sm btn-info" id="reset">找回密码</button>
                    </div>
                </div>
				
				<div class="form-group">
				    <div class="col-xs-6 link">
				        <p class="text-center remove-margin"><a href="/tologin"><small>返回</small><small>登录</small></a>
				        </p>
				    </div>
					<div class="col-xs-6 link">
					    <p class="text-center remove-margin"><a href="/"><small>返回</small><small>首页</small></a>
					    </p>
					</div>
				</div>
            </form>
            </div>
        </div>
    </div>
</div>
<script>
    var checkCode = "";
    $("#getCheckCode").click(function(){
        var phone = $("#phone").val();
        if (phone.length <= 0){
            $("#phone").css("border","2px solid red");
            return;
        }
        $.get("/getCheckCode",function (code) {
            checkCode = code;
            $.get("http://sms.k400.cc/sms.aspx?action=send&userid=329&account=\tytxxjshy&password=ytxxjs8542123*/&mobile="+phone+"&content=【山东中呼】您的验证码是"+code+"，10分钟内有效。&sendTime=&taskName=本次任务描述&checkcontent=1&mobilenumber=10&countnumber=12&telephonenumber=2")
        })
    })

    $("#reset").click(function(){
        var phone = $("#phone").val();
        var pwd = $("#password").val();
        var pwd2 = $("#password2").val();
        var code = $("#checkCode").val();
        if (checkCode != code){
            alert("验证码有误，请重新填写！");
            checkCode = "";
            return;
        }
        $.post("/user/resetPwd",{phone:phone,password:pwd},function (result) {
            if (result == "success"){
                location.href = "/tologin?phone="+phone+"&pwd="+pwd;
            }else{
                alert(result);
            }
        })
        checkCode = "";
    })
</script>

</body>

</html>
