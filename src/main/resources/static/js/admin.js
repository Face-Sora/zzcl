$(document).ready(function() {

    $("#ifr").height($("#con").height());

    $("button[name='rmNeed']").click(function () {
        if (window.confirm("您确定要删除该条需求么？")){
            $.post("/need/delete",{needId:$(this).attr("value")},function () {
                alert("删除成功！")
                location.reload();
            })
        }
    })

    $("span[name='modifyWorker']").click(function () {
        var id = $(this).attr("value");
        var parent = $(this).parent();
        var phone = $(parent).find("input[name='phone']").val();
        $.post("/need/changeWorker",{needId:id,phone:phone},function(result){
            if (result == "true")
                location.reload();
            else if(phone == 0){
                alert("清除成功");
                location.reload();
            }
            else
                alert(result);

        })
    })

    $("span[name='addWorker']").click(function () {
        var id = $(this).attr("value");
        var parent = $(this).parent();
        var phone = $(parent).find("input[name='addphone']").val();
        $.post("/need/changeWorker",{needId:id,phone:phone},function(result){
            if (result == "true")
                location.reload();
            else
                alert(result);
        })
    })

    $("a[name='pro']").click(
        function () {
            var id = $(this).attr("value");
            var char = $(this).attr("char");
            $.post("/need/updateProgress",{needId:id,progress:char},function (result) {
                $("#"+id+"pro").text(result);
            })
        }
    )

    $("button[name='pass']").click(
        function () {
            var needId = $(this).attr("value");
            var status = $(this).attr("char");
            $.ajax({
                type:'post',
                url:'/need/updateStatus',
                data:{
                    needId:needId,
                    status:status
                },
                success:function(){
                    if (status == 'y'){
                        $("#"+needId+"1").text("审核通过")
                        $("#"+needId+"1").css("color","green");
                    }else {
                        $("#"+needId+"1").text("拒绝发布")
                        $("#"+needId+"1").css("color","red");

                    }
                }
            })
        }
    )

    $("button[name='doUser']").click(
        function () {
            var userId = $(this).attr("value");
            var reg = new RegExp(',');
            var id = userId.split(',').join('');
            var delCode = $(this).attr("char");
            console.log(userId);
            $.ajax({
                type:'post',
                url:'/user/updateStatus',
                data:{
                    userId:id,
                    delCode:delCode
                },
                success:function(){
                    if (delCode == '1'){
                        // alert($(this).parent().siblings(".statu").text());
                        // $(this).parent().siblings(".statu").text("正常111")
                        $("#"+id).text("正常")
                        $("#"+id).css("color","green");
                    }else {
                        $("#"+id).text("已禁用")
                        $("#"+id).css("color","red");

                    }
                }
            })
        }
    )

    $("button[name='modify']").click(function(){
        var needId = $(this).attr("value");
        var text = $("#" + needId + "desc").val();
        var begin = $("#" + needId + "be").val();
        var finish = $("#" + needId + "fi").val();

        $.post("/need/modifyDescAndDate",{needId:needId,desc:text,begin:begin,finish:finish},function(result){alert(result)});

    })
});
