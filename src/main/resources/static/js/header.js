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
        var phone = $("#rephone").val();
        var email = $("#email").val();
        var password = $("#password").val();
        var nickName = $("#nickName").val();
        var tendency = $("input[type='radio']:checked").val();

        if (tendency == undefined) {
            $("#ten1").css("border", "2px dotted red");
            $("#ten2").css("border", "2px dotted red");
            return;
        }
        checkNotEmpty(["rephone", "email", "password", "password2", "nickName"]);
        if (check == "false"){
            check == "true";
            return;
        }
        if (checkPwd()) {
            $.ajax({
                type: "post",
                url: "/user/register",
                data: {
                    phone: phone,
                    email: email,
                    pwd: password,
                    tendency: tendency,
                    nickName: nickName
                },
                success: function (result) {
                    if (result == "success") {
                        $("#register_modal").modal("hide");
                        $("#phone").val(phone);
                        $("#login_modal").modal("show");
                    } else {
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
            type: "post",
            url: "/login",
            data: {
                phone: phone,
                pwd: pwd
            },
            success: function (result) {
                if (result == "success") {
                    $("#login_modal").modal("hide");
                    window.open("/user/tozone",'_blank');
                } else {
                    alert(result);
                }
            }
        })
    })
    // $("#publish").click(function () {
    //     $.ajax({
    //         type:"get",
    //         url:"/xinxi/needType/showAll",
    //         success:function (result) {
    //             if (result.success){
    //                 var options = "";
    //                 $.each(result.types,function (index,value) {
    //                     options += "<option value=" + "'" + value.id + "'" + ">" + value.name + "</option>"
    //                 })
    //                 $(options).appendTo($("#type"));
    //                 $("#needmodal-data").modal("show");
    //             }else{
    //                 $("#mymodal").modal("show");
    //             }
    //         }
    //     })
    // })

    $("#type").on("change", function () {
        $("#wran").text("");
    })

    $("input").on("focus", function () {
        $(this).css("border", "1px solid #999");
    })
    $("textarea").on("focus", function () {
        $(this).css("border", "1px solid #999");
    })
    //
    //     $("#push").click(function () {
    //         var type = $("#type").val();
    //         var title = $("#title").val();
    //         var price = $("#price").val();
    //         var time = $("#time").val();
    //         var des = $("#description").val();
    //         if (type == null || type == "请选择"){
    //             $("#wran").text("请选择需求类别!")
    //             return;
    //         }
    //
    //         if (!checkNotEmpty(["title","price","time","description"])){
    //             return;
    //         }
    //
    //         $.ajax({
    //             type:"post",
    //             url:"/need/saveNeed",
    //             data:{
    //                 classify:type,
    //                 price:price,
    //                 title:title,
    //                 deadLine:time,
    //                 description:des
    //             },
    //             success:function (result) {
    //                 if(result.success){
    //                     location.href = "/need/findByUserId?userId=" + result.userId;
    //                 }else{
    //                     alert(result.error + 1)
    //                 }
    //             }
    //         })
    //     })
    //
    // })

    // function checkNotEmpty(ids) {
    //     $.each(ids,function (index,item) {
    //         var value = $("#"+item).val();
    //         if (value == ""){
    //             $("#"+item).css("border","2px solid red");
    //             return false;
    //         }
    //     })
    //     return true;
    // }

    function checkPwd() {
        if ($("#password").val() == $("#password2").val()) {
            return true;
        }
        $("#password").css("border", "2px solid red");
        $("#password2").css("border", "2px solid red");
        return false;
    }
})