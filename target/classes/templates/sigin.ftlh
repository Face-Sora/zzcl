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
            height: 150%;
        }

    .login-box {
            width: 100%;
            max-width:500px;
            height: 1300px;
            position: absolute;
            top: 25%;

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
        height: 800px;
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
                <div class="input-group" style="padding: 0px 1cm">

                        <span class="input-group-addon">
                            <input type="radio" name="classify" value="1">
                        </span>
                    <input id="class1" type="button" class="form-control col-xs-3"  value="商户注册" style="width: 3cm">

                    <span class="input-group-addon">
                            <input type="radio" name="classify" value="2">
                        </span>
                    <input id="class2" type="button" class="form-control col-xs-3" value="个人注册" style="width: 3cm" >

                </div>
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
                <div class="form-group" id="company_box" style="display: none">
                    <div class="col-xs-12  ">
                        <div class="input-group">
                            <span class="input-group-addon"><span class="glyphicon glyphicon-home"></span></span>
                            <input type="text" id="company" name="company" class="form-control" placeholder="请输入您的公司名称">
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

                        <span class="input-group-addon">
                            <input id="gong" type="radio" name="tendency" value="1">
                        </span>
                    <input id="ten1" type="button" class="form-control col-xs-3"  value="我想接项目" style="width: 3cm">

                    <span class="input-group-addon">
                            <input type="radio" name="tendency" value="2">
                        </span>
                    <input id="ten2" type="button" class="form-control col-xs-3" value="我想发需求" style="width: 3cm" >

                </div>

                <div class="col-sm-12" style="display: none" id="license_box">
                    <div class="form-group">
                        <span>请上传您的营业执照图像：</span><input type="file" name="file" id="file0" multiple="multiple" /><br>
                        <img  id="img0"  style="width: 100%; height: 100px; border: 1px solid #000000;">
                    </div>
                    <br>
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

            $("#file0").change(function(){
                var objUrl = getObjectURL(this.files[0]) ;
                console.log("objUrl = "+objUrl) ;
                if (objUrl) {
                    $("#img0").attr("src", objUrl) ;
                }
            }) ;
            //建立一個可存取到該file的url
            function getObjectURL(file) {
                var url = null ;
                if (window.createObjectURL!=undefined) { // basic
                    url = window.createObjectURL(file) ;
                } else if (window.URL!=undefined) { // mozilla(firefox)
                    url = window.URL.createObjectURL(file) ;
                } else if (window.webkitURL!=undefined) { // webkit or chrome
                    url = window.webkitURL.createObjectURL(file) ;
                }
                return url ;
            }

            $(":radio[name='classify']").click(function(){
                var classify = $(this).val();
                if (classify == 1){
                    $("#license_box").css("display",'block');
                    $("#company_box").css("display",'block');
                }else{
                    $("#license_box").css("display",'none');
                    $("#company_box").css("display",'none');
                }
            })

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
                var tendency = $("input[name='tendency']:checked").val();
                var classify = $("input[name='classify']:checked").val();
                var license = $("#file0")[0].files[0];
                var company = $("#company").val();



                if (tendency == undefined || classify == undefined){
                    $("#ten1").css("border","2px dotted red");
                    $("#ten2").css("border","2px dotted red");
                    $("#class1").css("border","2px dotted red");
                    $("#class2").css("border","2px dotted red");
                    return;
                }

                if (classify == '1')
                    checkNotEmpty(["phone","email","password","name",'file0','company']);
                else
                    checkNotEmpty(["phone","email","password","name"]);

                if (check == "false"){
                    check == true;
                    return;
                }
                if (checkPwd() && check != "false" ){

                    var formData = new FormData();
                    formData.append("phone",phone);
                    formData.append("email",email);
                    formData.append('company',company);
                    formData.append("pwd",password);
                    formData.append("tendency",tendency);
                    formData.append("classify",classify);
                    formData.append("nickName",nickName);
                    formData.append("license",license);
                    console.log(phone + " phone ===");
                    $.ajax({
                        type:"post",
                        url:"/user/register",
                        data:formData,
                        processData:false,
                        cache:false,
                        mimeType:"multipart/form-data",
                        contentType:false,
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