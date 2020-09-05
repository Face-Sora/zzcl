<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1.0" />
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css" />
    <script src="/js/jquery.min.js"></script>
    <!-- <link rel="stylesheet" type="text/css" href="__PUBLIC__/css/plugins.css" /> -->
    <!--<link rel="stylesheet" type="text/css" href="__PUBLIC__/css/main.css"/>-->
    <!-- <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script> -->
    <!-- <script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script> -->
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
        height: 350px;
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
                            <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                            <input type="text" id="phone" name="phone" class="form-control" placeholder="请输入手机号" value="${phone!}">
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-xs-12  ">
                        <div class="input-group">
                            <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                            <input type="password" id="pwd" name="password" class="form-control" placeholder="密码" value="${pwd!}">
                        </div>
                    </div>
                </div>
                <div class="form-group form-actions">
                    <div class="col-xs-4 col-xs-offset-4 ">
                        <button type="button" class="btn btn-sm btn-info" id="login"> 登陆</button>
                    </div>

                </div>
                <div class="form-group">
                    <div class="col-xs-6 link">
                        <p class="text-center remove-margin"><a href="/user/resetPwd"><small>忘记</small><small>密码</small></a>
                        </p>
                    </div>
                    <div class="col-xs-6 link">
                        <p class="text-center remove-margin"><a href="/user/toRegister" ><small>还没注册?</small> <small>注册</small></a><!-- a href="javascript:void(0)"  -->
                        </p>
                    </div>
                </div>
            </form>
            </div>
        </div>
    </div>
</div>
<script>
    $("#login").click(function () {
        var phone = $("#phone").val();
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
                    location.href = "/user/tozone";
                    // window.open("/user/tozone","_blank");
                }else{
                    alert(result);
                    location.href = "/tologin?phone="+phone;
                }
            }
        })
    })
</script>

</body>

</html>