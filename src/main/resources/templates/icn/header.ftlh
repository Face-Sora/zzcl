<header name="old_header">
<#--    <div class="he-top clearfix">-->
<#--        <div class="container">-->
<#--            <p class="left">欢迎访问自动化项目对接平台</p>-->
<#--            <ul class="right pin">-->
<#--                <li>-->
<#--                    <p><span class="glyphicon glyphicon-phone-alt"></span>&nbsp;&nbsp;&nbsp;服务热线：400 0256 757</p>-->
<#--                </li>-->
<#--            </ul>-->

<#--            <button class="btn btn-link btn-xs right" type="button" data-toggle="modal" data-target="#register_modal">注册</button>-->

<#--            <!-- 登录 &ndash;&gt;-->
<#--            <button class="btn btn-link btn-xs right" type="button" data-toggle="modal" data-target="#login_modal" style="float: right;">登录</button>-->
<#--            <#include "modal.ftlh">-->
<#--        </div>-->
<#--    </div>-->

    <div class="container">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="/"><img src="/images/logo.png"></a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a class="${(code == 1)?string('active','')}" href="/"><strong>首页</strong></a>
                        </li>
                        <li>
                            <a class="${(code == 9)?string('active','')}" href="/zhiku">平台智库</a>
                        </li>
                        <li>
                            <a class="${(code == 2)?string('active','')}" href="/about"><strong>关于我们</strong></a>
                        </li>
                        <li>
                            <a class="${(code == 8)?string('active','')}" href="/product/toProduct?pageNum=1&pageSize=15"><strong>产品供需</strong></a>
                        </li>
                        <li>
                            <a class="${(code == 3)?string('active','')}" href="/need/needList?pageNum=1&pageSize=5&classify=23"><strong>项目寻找</strong></a>
                        </li>
                        <li>
                            <a class="${(code == 4)?string('active','')}" href="/need/toPublish?pageNum=1&pageSize=3"><strong>发布需求</strong></a>
                        </li>
                        <li>
                            <a class="${(code == 6)?string('active','')}" href="/toShow"><strong>案例展示</strong></a>
                        </li>

                        <li>
                            <a class="${(code == 7)?string('active','')}" href="/toDiaoyan"><strong>企业调研</strong></a>
                        </li>
<#--                        <li>-->
<#--                            <a class="${(code == 5)?string('active','')}" href="/towe"><strong>联系我们</strong></a>-->
<#--                        </li>-->
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-fluid -->
        </nav>
    </div>
</header>


<style>
    header[name='old_header'] li a{
        color: #000000; font-weight: bold; font-size: 18px
    }
</style>

