$(function () {


    var companyDefect = [],
        intellectualProperty=[],
        financingChannel = [],
        policy = [],
        serviceDefect = [],
        train = []
    ;

    $("#sub").click(function(){
        var company = $("#q1").val(),
            boss = $("#q2").val(),
            phone = $("#q2-1").val(),
            address = $("#addr-show").val(),
            science = ($("#q3_1").prop("checked")) ? true : false,
            volume = $(".volume:checked").attr("val"),
            scale =  $("input[name='q5']:checked").attr("value"),
            financing =  $("input[name='q8']:checked").attr("value"),
            financingMoney =  $("input[name='q9']:checked").attr("value"),
            locans = $("input[name='q10']:checked").parent().find("label").attr("value"),
            locansBank = $("#q11").val(),
            locansNum = $("#q11_1").val(),
            trainPay = $("input[name='q14']:checked").parent().find("label").attr("value"),
            trainPrice = $("input[name='q15']:checked").attr('value'),
            defectSuggest = $("#q18").val(),
            combieNeed = $("#q18").val(),
            serviceSuggest = $("#q18").val()
            ;
        $("input[name='q6']:checked").each(function (index,value) {
            intellectualProperty.push($(this).attr("value"));
        })

        $("input[name='q7']:checked").each(function (index,value) {
            policy.push($(this).attr("value"));
        })

        $("input[name='q12']:checked").each(function (index,value) {
            train.push($(this).attr("value"));
        })

        $("input[name='q13']:checked").each(function (index,value) {
            financingChannel.push($(this).attr("value"));
        })

        $("input[name='q16']:checked").each(function (index,value) {
            companyDefect.push($(this).attr("value"));
        })

        $("input[name='q17']:checked").each(function (index,value) {
            serviceDefect.push($(this).attr("value"));
        })


        $.post("/question/save",{company:company,boss:boss,address:address,phone:phone,science:science,
            volume:volume,scale:scale,financing:financing,financingMoney:financingMoney,locans:locans,
            locansBank:locansBank,locansNum:locansNum,trainPay:trainPay,trainPrice:trainPrice,defectSuggest:defectSuggest,
            combieNeed:combieNeed,serviceSuggest:serviceSuggest,companyDefect:companyDefect,intellectualProperty:intellectualProperty,
            financingChannel:financingChannel,policy:policy,serviceDefect:serviceDefect,train:train
        },function () {
            alert("信息已提交，感谢您的支持！");
        });
    })
})