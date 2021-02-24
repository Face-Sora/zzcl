<#--<div class="modal" id="needmodal-data" tabindex="-1" role="dialog"-->
<#--     aria-labelledby="mySmallModalLabel" aria-hidden="true">-->
<#--    <div class="modal-dialog">-->
<#--        <div class="modal-content">-->
<#--            <div class="modal-header">-->
<#--                <button id="clsbtn" type="button" class="close" data-dismiss="modal">-->
<#--                    <span aria-hidden="true">&times;</span>-->
<#--                    <span class="sr-only">Close</span>-->
<#--                </button>-->
<#--                <h4 class="modal-title">发布需求</h4>-->
<#--            </div>-->
<#--            <div class="modal-body">-->
<#--                <span>需求类别: </span>-->
<#--                <select id="type" style="width: 3cm">-->
<#--                    <option>请选择</option>-->
<#--                </select>-->
<#--                <span id="wran" style="color: red"></span>-->
<#--                <form role="form" accept-charset="" >-->

<#--                    <br />-->
<#--                    <div class="input-group">-->
<#--                        <span class="input-group-addon" >-->
<#--															<span class="glyphicon glyphicon-pushpin " aria-hidden="true"></span>-->
<#--														</span>-->
<#--                        <input id="title" type="text" class="form-control"  placeholder="项目标题" aria-describedby="basic-addon1">-->
<#--                    </div>-->
<#--                    <br />-->
<#--                    <div class="input-group">-->
<#--                        <span class="input-group-addon" >-->
<#--															<span class="glyphicon glyphicon-time " aria-hidden="true"></span>-->
<#--														</span>-->
<#--                        <input id="time" type="text" class="form-control"  placeholder="截止日期" aria-describedby="basic-addon1">-->
<#--                        <span class="input-group-addon" >-->
<#--															<span class="glyphicon glyphicon-yen " aria-hidden="true"></span>-->
<#--														</span>-->
<#--                        <input id="price" type="text" class="form-control"  placeholder="预算" aria-describedby="basic-addon1">-->
<#--                    </div>-->
<#--                    <br />-->
<#--                    <div class="input-group">-->
<#--						<span class="input-group-addon" id="basic1">-->
<#--							<span class="glyphicon glyphicon-list" aria-hidden="true"></span>-->
<#--						</span>-->
<#--                        <textarea id="description" class="form-control"  placeholder="项目需求详情描述" style="height: 6cm" aria-describedby="basic-addon1"></textarea>-->
<#--                    </div>-->
<#--                    <br>-->
<#--                    <div class="modal-footer">-->
<#--                    <input type="button" class="btn btn-success" name="" id="push" value="发布" />-->
<#--                    </div>-->
<#--                </form>-->
<#--            </div>-->
<#--        </div>-->
<#--    </div>-->
<#--</div>-->

<div class="modal" id="register_modal" tabindex="-1" role="dialog"
     aria-labelledby="mySmallModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span>
                    <span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title">用户注册</h4>
            </div>
            <div class="modal-body">
                <form role="form" accept-charset="" >
                    <div class="input-group">
														<span class="input-group-addon" id="basic-addon1">
															<span class="glyphicon glyphicon-phone" aria-hidden="true"></span>
														</span>
                        <input type="text" class="form-control" id="rephone" placeholder="请输入您的手机号" aria-describedby="basic-addon1">
                    </div>
                    <br />
                    <div class="input-group">
														<span class="input-group-addon" id="basic-addon1">
															<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
														</span>
                        <input type="text" class="form-control" id="nickName" placeholder="请输入您的称呼" aria-describedby="basic-addon1">
                    </div>
                    <br/>
                    <!---------新增邮箱----------------->
                    <div class="input-group">
														<span class="input-group-addon" id="basic-addon1">
															<span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
														</span>
                        <input type="email" class="form-control" id="email" placeholder="请输入您的邮箱" aria-describedby="basic-addon1">
                    </div>
                    <!------------------------>
                    <br />
                    <div class="input-group">
													  <span class="input-group-addon" id="basic-addon1">
															<span class="glyphicon glyphicon-lock" aria-hidden="true"></span>
														</span>
                        <input type="password" class="form-control" id="password" placeholder="请输入密码" aria-describedby="basic-addon1" >
                    </div>
                    <br />
                    <div class="input-group">
														<span class="input-group-addon" id="basic-addon1">
															<span class="glyphicon glyphicon-lock " aria-hidden="true"></span>
														</span>
                        <input type="password" class="form-control" id="password2" placeholder="请再次输入密码" aria-describedby="basic-addon1">
                    </div>
                    <br />
                    <div class="input-group" style="padding: 0px 1cm">
                        <span class="input-group-addon" >
                            <input id="gong" type="radio" aria-label="..." name="tendency" value="1">
                        </span>
                        <input id="ten1" type="button" class="form-control"  aria-label="..." value="我想接项目" style="width: 5cm">
                        <span class="input-group-addon" style="height: 34px">
                            <input type="radio" aria-label="..." name="tendency" value="2">
                        </span>
                        <input id="ten2" type="button" class="form-control" aria-label="..." value="我想发需求" style="width: 5cm" >
                    </div><!-- /input-group -->
                    <br/>

                    <div class="modal-footer">
                    <input type="button" class="btn btn-info" name="" id="register" value="注册" />
                    <input type="button" class="btn btn-success" name="" id="" data-dismiss="modal" data-toggle="modal" data-target="#login_modal" value="已有帐号，去登录" />
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="login_modal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title">用户登录</h4>
            </div>
            <div class="modal-body">
                <form role="form" accept-charset="" >
                    <div class="input-group">
													<span class="input-group-addon" id="basic-addon1">
														<span class="glyphicon glyphicon-phone" aria-hidden="true"></span>
													</span>
                        <input type="text" class="form-control" id="phone" placeholder="请输入您的手机号" aria-describedby="basic-addon1">
                    </div>
                    <br />
                    <div class="input-group">
												  <span class="input-group-addon" id="basic-addon1">
														<span class="glyphicon glyphicon-lock" aria-hidden="true"></span>
													</span>
                        <input type="password" class="form-control" id="pwd" placeholder="请输入密码" aria-describedby="basic-addon1" >
                    </div>
                </form>
            </div>
            <div class="modal-footer">
               <a class="btn btn-link" style="padding-top: 15px; color: orange;" href="#" data-toggle="modal" data-target="#register_modal" data-dismiss="modal">
                   <u>还没有帐号？去注册</u>
               </a>
<#--                <span style="margin-top: 500px; color: orange; "></span>-->
                <input id="login" type="submit" class="btn btn-success" value="登录" />
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="apply_success_modal" tabindex="-1" role="dialog" aria-labelledby="apply-success">
    <div class="modal-dialog" role="document" >
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title" id="apply-success">申请成功</h4>
            </div>
            <div class="modal-body">
                    <span>您已成功申请该项目，请与客服联系，或等待客服与您联系！</span>
            </div>
            <div class="modal-footer">
                <input id="login" type="submit" class="btn btn-success" data-dismiss="modal" value="关闭" />
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="apply_cancel_modal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title">取消申请成功</h4>
            </div>
            <div class="modal-body">
                <span>您已成功取消申请该项目！</span>
            </div>
            <div class="modal-footer">
                <input id="login" type="submit" class="btn btn-success"  data-dismiss="modal" value="关闭" />
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="apply_repeat_modal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title">重复申请</h4>
            </div>
            <div class="modal-body">
                <span>您已经申请过该项目，请勿重复申请！</span>
            </div>
            <div class="modal-footer">
                <input id="login" type="submit" class="btn btn-success" data-dismiss="modal" value="关闭" />
            </div>
        </div>
    </div>
</div>