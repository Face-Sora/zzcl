<footer xmlns:http="http://www.w3.org/1999/xhtml">
    <section class="footera">
        <div class="footera-article">
            <div class="footera-sm ">
                <ul class="clear_float clearfix">
                    <li>
                        <a href="/about">关于</a>
                    </li>
                    <li>
                        <a href="/need/needList?pageNum=1&pageSize=1&classify=23">服务</a>
                    </li>
                    <li>
                        <a href="javascript:void(0);"><img src="/images/logoa.png"></a>
                    </li>
                    <li>
                        <a href="/need/toPublish?pageNum=1&pageSize=3">需求</a>
                    </li>
                    <li>
                        <a href="/towe">联系</a>
                    </li>
                </ul>
            </div>
            <div class="footera-sg">
                <p class="footera-sgp">公司名称：众智创联云科技（山东）有限公司&nbsp;&nbsp;&nbsp;联系电话：400 0256 757&nbsp;&nbsp;&nbsp;地址：山东省淄博市张店区马尚镇新村西路185号</p>
                <p class="address" style="font-size: 1rem; text-align: center;color: #ffffff;">
                    友情链接：&nbsp;
                    <a href="http://www.mmyuland.com" target="_blank" style="color: #FFFFFF;">毛毛雨软件交易平台</a>&nbsp;&nbsp;&nbsp;
                    <a href="#" target="_blank" style="color: #FFFFFF;">医院管理系统</a>&nbsp;&nbsp;&nbsp;
                    <a href="http://www.400-4006.com" target="_blank" style="color: #FFFFFF;">400电话网</a>&nbsp;&nbsp;&nbsp;
                    <a href="###" target="_blank" style="color: #FFFFFF;">众成机器人网</a>&nbsp;&nbsp;&nbsp;
                </p >
                <p class="footera_p">众智创联云科技（山东）有限公司 版权所有 <a href="https://beian.miit.gov.cn/" target="_blank">鲁ICP备2020047984号-1</a></p>
            </div>
        </div>
    </section>
    <!--底部-->
    <div class="phonefooternav">
        <ul class="clearfix">
            <li>
                <a href="tel:400 0256 757">
                    <i class="glyphicon glyphicon-earphone"></i>
                    <span>一键电话</span>
                </a>
            </li>
            <li>
                <a data-toggle="modal" data-target="#myModal">
                    <i class="glyphicon glyphicon-comment"></i>
                    <span>在线留言</span>
                </a>
            </li>
            <li>
                <a href="/towe">
                    <i class="glyphicon glyphicon-user"></i>
                    <span>联系我们</span>
                </a>
            </li>
            <li>
                <a href="/">
                    <i class="glyphicon glyphicon-home"></i>
                    <span>返回首页</span>
                </a>
            </li>
        </ul>
    </div>

</footer>
<div class="slide">
    <ul>
        <li>
            <a href="javascript:void(0);"><img src="/images/yewu.png"></a>
        </li>
        <li class="ke">
            <a href="javascript:void(0);"><img src="/images/kefu.png"></a>
            <p>400 0256 757</p>
        </li>
        <li>
            <a href="http://wpa.qq.com/msgrd?v=3&uin=2484721198&site=qq&menu=yes" target="_blank"><img src="/images/qq.png"></a>
        </li>
        <li id="go_top">
            <a href="javascript:void(0);"><img src="/images/top.png"></a>
        </li>
    </ul>
</div>
<!-- 弹出框 -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">立即留言</h4>
            </div>

            <div class="modal-body">
                <div class="form-bd clearfix">
                    <div class="form-group form-one">
                        <input type="text" name="username" class="form-control"  placeholder="姓名" required="required">
                    </div>
                    <div class="form-group form-tow">
                        <input type="text" name="phone" class="form-control"  placeholder="手机" required="required">
                    </div>
                    <div class="form-group form-three massage-contact">
                        <textarea rows="9" name="message" class="form-control xiala"  placeholder="留言内容" required="required"></textarea>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" form="savemessage" onclick="saveMessage()">提交</button>
            </div>

        </div>
    </div>
</div>

<script>
    function saveMessage(){
        var name = $("input[name='username']").val();
        var phone = $("input[name='phone']").val();
        var message = $("textarea[name='message']").val();
        $.post("/message/save",{username:name,phone:phone,message:message},function (result) {
            alert("你的留言已发送至后台，感谢您的宝贵建议！");
            $("#myModal").hide();
        })

    }
</script>