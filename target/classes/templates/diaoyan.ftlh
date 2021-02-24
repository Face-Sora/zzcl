<!DOCTYPE html>
<html lang="zh-CN">

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="keywords" content="">
		<title>众智创联云科技(山东)有限公司</title>
		<link href="/css/bootstrap.min.css" rel="stylesheet">
		<link href="/css/hwslider.css" rel="stylesheet">
		<link href="/css/fonts.css" rel="stylesheet">
		<link href="/css/reset.css" rel="stylesheet">
		<link href="/css/style.css" rel="stylesheet">
		<link href="/css/q.css" rel="stylesheet">
		<link href="/css/city.css" rel="stylesheet">
	</head>

	<body style="overflow-x:hidden; background-color: #f0d193;">
		<#include "./icn/header.ftlh">
		<div class="container" style="margin-top: 20px; margin-bottom: 10px; padding-left: 30px; background-color: white;">
			<fieldset class="fieldset" id="fieldset1">
				<div id="divPeiE" style="display:none;"></div>
				<div id="ctl00_ContentPlaceHolder1_JQ1_divDec" class="surveydescription">
					<span id="ctl00_ContentPlaceHolder1_JQ1_lblQuestionnaireDescription" style="vertical-align: middle;">
						<p style="font-size: 26px; text-align: center; color: #D58512;">企业调查问卷</p>
						<p>尊敬的企业家：</p>
						<p>&nbsp; &nbsp; &nbsp; &nbsp;为了提高项目服务质量，
							并为企业匹配更精准的服务内容，希望您能抽出几分钟时间，将您的感受和建议告诉我们，
							我们将非常重视您的宝贵意见，并保证您所填写的信息仅用于调研内部统计。欢迎您的参与！
						</p>
					</span>
				</div>
				<div style="clear: both;"></div>
				
				<div class="div_question" id="div1">
					<div class="div_title_question_all">
						<div id="divTitle1" class="div_title_question">
							<span style="position:absolute;left:-10px;top:1px" class="req">* </span>
							企业全称
						</div>
						<div style="clear:both;"></div>
					</div>
					<div class="div_table_radio_question" id="divquestion1">
						<div class="div_table_clear_top"></div>
						<textarea title="" style="overflow: auto;padding-right:27px;width:62%;height:22px;" class="inputtext" id="q1" name="q1"></textarea>
						<div class="div_table_clear_bottom"></div>
						</div><div class="errorMessage"></div>
				</div>
				<div class="div_question" id="div2">
					<div class="div_title_question_all">
						<div id="divTitle2" class="div_title_question">
							<span style="position:absolute;left:-10px;top:1px" class="req">* </span>
							联系人
						</div>
						<div style="clear:both;"></div>
					</div>
					<div class="div_table_radio_question" id="divquestion2">
						<div class="div_table_clear_top"></div>
						<textarea title="" style="overflow: auto;padding-right:27px;width:62%;height:22px;" class="inputtext" value="" id="q2" name="q2"></textarea>
						<div class="div_table_clear_bottom"></div>
					</div>
						<div class="errorMessage"></div>
				</div>
				<div class="div_question" id="div2-1">
					<div class="div_title_question_all">
						<div id="divTitle2" class="div_title_question">
							<span style="position:absolute;left:-10px;top:1px" class="req">* </span>
							联系方式
						</div>
						<div style="clear:both;"></div>
					</div>
					<div class="div_table_radio_question" id="divquestion2-1">
						<div class="div_table_clear_top"></div>
						<textarea title="" style="overflow: auto;padding-right:27px;width:62%;height:22px;" class="inputtext" value="" id="q2-1" name="q2-1"></textarea>
						<div class="div_table_clear_bottom"></div>
					</div>
					<div class="errorMessage"></div>
				</div>
				<div class="div_question" id="div2">
					<div class="div_title_question_all">
						<div id="divTitle2" class="div_title_question">
							<span style="position:absolute;left:-10px;top:1px" class="req">* </span>
							企业地址
						</div>
						<div style="clear:both;"></div>
					</div>
					<div class="div_table_radio_question" id="divquestion2">
						<div class="div_table_clear_top"></div>
						<!-- <textarea title="" style="overflow: auto;padding-right:27px;width:62%;height:22px;" class="inputtext" value="" id="q2" name="q2"></textarea> -->
						<!-- 企业地址 -->
						<div>
							<fieldset>
								<form action="#">
									<label for="addr-show">企业所在地
										<input type="text" id="addr-show">
									</label>
									<br/>

									<!--省份选择-->
									<select id="prov" onchange="showCity(this)">
										<option>-请选择省份-</option>

									</select>

									<!--城市选择-->
									<select id="city" onchange="showCountry(this)">
										<option>-请选择城市-</option>
									</select>

									<!--县区选择-->
									<select id="country" onchange="selecCountry(this)">
										<option>-请选择县区-</option>
									</select>

									<button type="button" class="btn met1" onClick="showAddr()">确定</button>
								</form>
							</fieldset>
						</div>

						<!-- 企业地址 -->
						<div class="div_table_clear_bottom"></div>
					</div>
					<div class="errorMessage"></div>
				</div>
					<div class="div_question" id="div3">
						<div class="div_title_question_all">
							<div id="divTitle3" class="div_title_question">
								<span style="position:absolute;left:-10px;top:1px" class="req">* </span>
								1. 贵企业是否是科技型企业
							</div>
							<div style="clear:both;"></div>
						</div>
						<div class="div_table_radio_question" id="divquestion3" gm="">
							<div class="div_table_clear_top"></div>
							<ul class="ulradiocheck">
								<li style="width: 99%;">
									<a href="javascript:" class="jqRadio" rel="q3_1">
										<i class="iconfontNew"></i>
									</a>
									<input style="" type="radio" name="q3" id="q3_1" value="1">
									<label for="q3_1">是</label>
								</li>
								<li style="width: 99%;">
									<a href="javascript:" class="jqRadio" rel="q3_2">
										<i class="iconfontNew"></i>
									</a>
									<input style="" type="radio" name="q3" id="q3_2" value="2">
									<label for="q3_2">否</label>
								</li>
								<div style="clear:both;"></div>
							</ul>
							<div style="clear:both;"></div>
							<div class="div_table_clear_bottom"></div>
						</div>
						<div class="errorMessage"></div>
					</div>
					<div class="div_question" id="div4">
						<div class="div_title_question_all">
							<div id="divTitle4" class="div_title_question">
								<span style="position:absolute;left:-10px;top:1px" class="req">* </span>
								2.贵企业去年年度营业额
							</div>
							<div style="clear:both;"></div>
						</div>
						<div class="div_table_radio_question" id="divquestion4" gm="">
							<div class="div_table_clear_top"></div>
							<ul class="ulradiocheck">
								<li style="width: 99%;">
									<a href="javascript:" class="jqRadio" rel="q4_1">
										<i class="iconfontNew"></i>
									</a>
									<input class="volume" type="radio" val="1">
									<label for="q4_1">研发阶段，没有销售</label>
								</li>
								<li style="width: 99%;">
									<a href="javascript:" class="jqRadio" rel="q4_2">
										<i class="iconfontNew"></i>
									</a>
									<input class="volume" type="radio" val="2">
									<label for="q4_2">100万以下</label>
								</li>
								<li style="width: 99%;">
									<a href="javascript:" class="jqRadio" rel="q4_3">
										<i class="iconfontNew"></i>
									</a>
									<input style="" type="radio" class="volume" val="3">
									<label for="q4_3">100-500万</label>
								</li>
								<li style="width: 99%;">
									<a href="javascript:" class="jqRadio" rel="q4_4">
										<i class="iconfontNew"></i>
									</a>
									<input style="" type="radio" class="volume" val="4">
									<label for="q4_4">500-1000万</label>
								</li>
								<li style="width: 99%;">
									<a href="javascript:" class="jqRadio" rel="q4_5">
										<i class="iconfontNew"></i>
									</a>
									<input style="" type="radio" class="volume" val="5">
									<label for="q4_5">1000-5000万</label>
								</li>
								<li style="width: 99%;">
									<a href="javascript:" class="jqRadio" rel="q4_6">
										<i class="iconfontNew"></i>
									</a>
									<input type="radio" class="volume" val="6">
									<label for="q4_6">5000万以上</label>
								</li>
								<div style="clear:both;"></div>
							</ul>
							<div style="clear:both;"></div>
							<div class="div_table_clear_bottom"></div>
						</div>
						
						<div class="errorMessage"></div>
					</div>
					<div class="div_question" id="div5">
						<div class="div_title_question_all">
							<div id="divTitle5" class="div_title_question">
								<span style="position:absolute;left:-10px;top:1px" class="req">* </span>
								3.企业人员规模
							</div>
							<div style="clear:both;"></div>
						</div>
						<div class="div_table_radio_question" id="divquestion5" gm="">
							<div class="div_table_clear_top"></div>
							<ul class="ulradiocheck">
								<li style="width: 99%;">
									<a href="javascript:" class="jqRadio" rel="q5_1">
										<i class="iconfontNew"></i>
									</a>
									<input style="" type="radio" name="q5" id="q5_1" value="1">
									<label for="q5_1">1-10人</label>
								</li>
								<li style="width: 99%;">
									<a href="javascript:" class="jqRadio" rel="q5_2">
										<i class="iconfontNew"></i>
									</a>
									<input style="" type="radio" name="q5" id="q5_2" value="2">
									<label for="q5_2">10人-30人</label>
								</li>
								<li style="width: 99%;">
									<a href="javascript:" class="jqRadio" rel="q5_3">
										<i class="iconfontNew"></i>
									</a>
									<input style="" type="radio" name="q5" id="q5_3" value="3">
									<label for="q5_3" >30-50人</label>
								</li>
								<li style="width: 99%;">
									<a href="javascript:" class="jqRadio" rel="q5_4">
										<i class="iconfontNew"></i>
									</a><input style="" type="radio" name="q5" id="q5_4" value="4">
									<label for="q5_4">50-100人</label>
								</li>
								<li style="width: 99%;">
									<a href="javascript:" class="jqRadio" rel="q5_5">
										<i class="iconfontNew"></i>
									</a>
									<input style="" type="radio" name="q5" id="q5_5" value="5">
									<label for="q5_5">100人以上</label>
								</li>
								<div style="clear:both;"></div>
							</ul>
							<div style="clear:both;"></div>
							<div class="div_table_clear_bottom"></div>
						</div>
						<div class="errorMessage"></div>
					</div>
					<div class="div_question" id="div6">
						<div class="div_title_question_all">
							<div id="divTitle6" class="div_title_question">
								<span style="position:absolute;left:-10px;top:1px" class="req">* </span>
								4. 贵企业是否拥有的自主知识产权<span class="qtypetip">&nbsp;【多选】</span>
							</div>
							<div style="clear:both;"></div>
						</div>
						<div class="div_table_radio_question" id="divquestion6" gm="">
							<div class="div_table_clear_top"></div>
							<ul class="ulradiocheck">
								<#list intellectualPropertys as ip>
								<li style="width:99%;">
									<a href="javascript:" class="jqCheckbox" rel="q6_1">
										<i class="iconfontNew"></i>
									</a>
									<input style="" id="q6_1" type="checkbox" name="q6" value="${ip.id}">
									<label>${ip.name}</label>
								</li>
								</#list>
								<div style="clear:both;"></div>
							</ul>
							<div style="clear:both;"></div>
							<div class="div_table_clear_bottom"></div>
						</div>
						<div class="errorMessage"></div>
					</div>
					<div class="div_question" id="div7">
						<div class="div_title_question_all">
							<div id="divTitle7" class="div_title_question">
								<span style="position:absolute;left:-10px;top:1px" class="req">* </span>
								5.贵企业是否了解以下科技创新政策<span class="qtypetip">&nbsp;【多选题】</span>
							</div>
							<div style="clear:both;"></div>
						</div>
						<div class="div_table_radio_question" id="divquestion7" gm="">
							<div class="div_table_clear_top"></div>
							<ul class="ulradiocheck">
								<#list policys as policy>
								<li style="width:99%;">
									<a href="javascript:" class="jqCheckbox" rel="q7_1">
										<i class="iconfontNew"></i>
									</a>
									<input style="" id="q7_1" type="checkbox" name="q7" value="${policy.id}">
									<label>${policy.policy}</label>
								</li>
								</#list>
								<div style="clear:both;"></div>
							</ul>
							<div style="clear:both;"></div>
							<div class="div_table_clear_bottom"></div>
						</div>
						<div class="errorMessage"></div>
					</div>
					<div class="div_question" id="div8">
						<div class="div_title_question_all">
							<div id="divTitle8" class="div_title_question">
								<span style="position:absolute;left:-10px;top:1px" class="req">* </span>
								6.贵企业是否有融资需求
							</div>
							<div style="clear:both;"></div>
						</div>
						<div class="div_table_radio_question" id="divquestion8" gm="">
							<div class="div_table_clear_top"></div>
							<ul class="ulradiocheck">
								<li style="width:99%;">
									<a href="javascript:" class="jqRadio" rel="q8_1">
										<i class="iconfontNew"></i>
									</a>
									<input style="" type="radio" name="q8" id="q8_1" value="0">
									<label for="q8_1" >否</label>
								</li>
								<li style="width:99%;">
									<a href="javascript:" class="jqRadio" rel="q8_2">
										<i class="iconfontNew"></i>
									</a>
									<input style="" type="radio" name="q8" id="q8_2" value="1">
									<label for="q8_2" >是，有股权融资需求</label>
								</li>
								<li style="width:99%;">
									<a href="javascript:" class="jqRadio" rel="q8_3">
										<i class="iconfontNew"></i>
									</a>
									<input style="" type="radio" name="q8" id="q8_3" value="2">
									<label for="q8_3">是，有债权融资需求</label>
								</li>
								<div style="clear:both;"></div>
							</ul>
							<div style="clear:both;"></div>
							<div class="div_table_clear_bottom"></div>
						</div>
						<div class="errorMessage"></div>
					</div>
					<div class="div_question" id="div9" relation="8,2;3">
						<div class="div_title_question_all">
							<div id="divTitle9" class="div_title_question">
								<span style="position:absolute;left:-10px;top:1px" class="req">* </span>
								7.股权/债权融资需求金额（万元）
							</div>
							<div style="clear:both;"></div>
						</div>
						<div class="div_table_radio_question" id="divquestion9" gm="">
							<div class="div_table_clear_top"></div>
							<ul class="ulradiocheck">
								<li style="width:99%;">
									<a href="javascript:" class="jqRadio" rel="q9_1">
										<i class="iconfontNew"></i>
									</a>
									<input style="" type="radio" name="q9" id="q9_1" value="0">
									<label for="q9_1">50-100万</label>
								</li>
								<li style="width:99%;">
									<a href="javascript:" class="jqRadio" rel="q9_2">
										<i class="iconfontNew"></i>
									</a>
									<input style="" type="radio" name="q9" id="q9_2" value="1">
									<label for="q9_2">100-500万</label>
								</li>
								<li style="width:99%;">
									<a href="javascript:" class="jqRadio" rel="q9_3">
										<i class="iconfontNew"></i>
									</a>
									<input style="" type="radio" name="q9" id="q9_3" value="2">
									<label for="q9_3">500-1000万</label>
								</li>
								<li style="width:99%;">
									<a href="javascript:" class="jqRadio" rel="q9_4">
										<i class="iconfontNew"></i>
									</a>
									<input style="" type="radio" name="q9" id="q9_4" value="3">
									<label for="q9_4">1000万及以上</label>
								</li>
								<div style="clear:both;"></div>
							</ul>
							<div style="clear:both;"></div>
							<div class="div_table_clear_bottom"></div>
						</div>
						<div class="errorMessage"></div>
					</div>
					<div class="div_question" id="div10">
						<div class="div_title_question_all">
							<div id="divTitle10" class="div_title_question">
								<span style="position:absolute;left:-10px;top:1px" class="req">* </span>
								8. 贵企业是否有银行贷款经历
							</div>
							<div style="clear:both;"></div>
						</div>
						<div class="div_table_radio_question" id="divquestion10" gm="">
							<div class="div_table_clear_top"></div>
							<ul class="ulradiocheck">
								<li style="width:99%;">
									<a href="javascript:" class="jqRadio" rel="q10_1">
										<i class="iconfontNew"></i>
									</a>
									<input style="" type="radio" name="q10" id="q10_1" value="1">
									<label for="q10_1" value="false">否</label>
								</li>
								<li style="width:99%;">
									<a href="javascript:" class="jqRadio" rel="q10_2">
										<i class="iconfontNew"></i>
									</a><input style="" type="radio" name="q10" id="q10_2" value="2">
									<label for="q10_2" value="true">是</label>
								</li>
								<div style="clear:both;"></div>
							</ul>
							<div style="clear:both;"></div>
							<div class="div_table_clear_bottom"></div>
						</div>
						<div class="errorMessage"></div>
					</div>
					<div class="div_question" id="div11" style="" relation="10,2">
						<div class="div_title_question_all">
							<div id="divTitle11" class="div_title_question">
								9.贵企业在哪家银行贷款
							</div>
							<div style="clear:both;"></div>
						</div>
						<div class="div_table_radio_question" id="divquestion11">
							<div class="div_table_clear_top"></div>
							<textarea title="" style="overflow: auto;padding-right:27px;width:62%;height:22px;" class="inputtext" value="" id="q11" name="q11"></textarea>
							<div class="div_table_clear_bottom"></div>
						</div>
						<div class="errorMessage"></div>
					</div>

					<div class="div_question" id="div11_1" style="" relation="10,2">
						<div class="div_title_question_all">
							<div id="divTitle11" class="div_title_question">
								9.1.贵企业贷款金额
							</div>
							<div style="clear:both;"></div>
						</div>
						<div class="div_table_radio_question" id="divquestion11_1">
							<div class="div_table_clear_top"></div>
							<div class="input-group" style="width: 30%">
								<input type="number" class="form-control" aria-describedby="basic-addon2" name="q11" id="q11_1">
								<span class="input-group-addon" id="basic-addon2">万</span>
							</div>
							<div class="div_table_clear_bottom"></div>
						</div>
						<div class="errorMessage"></div>
					</div>
					<div class="div_question" id="div12">
						<div class="div_title_question_all">
							<div id="divTitle12" class="div_title_question">
								<span style="position:absolute;left:-10px;top:1px" class="req">* </span>
								10.贵企业希望得到哪方面的培训辅导
								<span class="qtypetip">&nbsp;【多选题】</span>
							</div>
							<div style="clear:both;"></div>
						</div>
						<div class="div_table_radio_question" id="divquestion12" gm="">
							<div class="div_table_clear_top"></div>
							<ul class="ulradiocheck">

								<#list trains as train>
								<li style="width:99%;">
									<a href="javascript:" class="jqCheckbox" rel="q12_1">
										<i class="iconfontNew"></i>
									</a>
									<input style="" id="q12_1" type="checkbox" name="q12" value="${train.id}">
									<label>${train.train}</label>
								</li>
								</#list>

								<div style="clear:both;"></div>
							</ul>
							<div style="clear:both;"></div>
							<div class="div_table_clear_bottom"></div>
						</div>
						<div class="errorMessage"></div>
					</div>
					<div class="div_question" id="div13">
						<div class="div_title_question_all">
							<div id="divTitle13" class="div_title_question">
								<span style="position:absolute;left:-10px;top:1px" class="req">* </span>
								11.贵公司希望了解以下哪些融资渠道
								<span class="qtypetip">&nbsp;【多选题】</span>
							</div>
							<div style="clear:both;"></div>
						</div>
						<div class="div_table_radio_question" id="divquestion13" gm="">
							<div class="div_table_clear_top"></div>
							<ul class="ulradiocheck">
								<#list financingChannels as fc>
								<li style="width:99%;">
									<a href="javascript:" class="jqCheckbox" rel="q13_3">
										<i class="iconfontNew"></i>
									</a>
									<input style="" id="q13_3" type="checkbox" name="q13" value="${fc.id}">
									<label>${fc.channel}</label>
								</li>
								</#list>
								<div style="clear:both;"></div>
							</ul>
							<div style="clear:both;"></div>
							<div class="div_table_clear_bottom"></div>
						</div>
						<div class="errorMessage"></div>
					</div>
					<div class="div_question" id="div14"><div class="div_title_question_all">
					<div id="divTitle14" class="div_title_question">
						<span style="position:absolute;left:-10px;top:1px" class="req">* </span>
						12.贵企业是否愿意为培训课程付费
					</div>
					<div style="clear:both;"></div>
				</div>
				<div class="div_table_radio_question" id="divquestion14" gm="">
					<div class="div_table_clear_top"></div>
					<ul class="ulradiocheck">
						<li style="width:99%;">
							<a href="javascript:" class="jqRadio" rel="q14_1">
								<i class="iconfontNew"></i>
							</a>
							<input style="" type="radio" name="q14" id="q14_1" value="1">
							<label for="q14_1" value="true">是</label>
						</li>
						<li style="width:99%;">
							<a href="javascript:" class="jqRadio" rel="q14_2">
								<i class="iconfontNew"></i>
							</a><input style="" type="radio" name="q14" id="q14_2" value="2">
							<label for="q14_2" value="false">否</label>
						</li>
						<div style="clear:both;"></div>
					</ul>
					<div style="clear:both;"></div>
					<div class="div_table_clear_bottom"></div>
				</div>
				<div class="errorMessage"></div>
			</div>
			<div class="div_question" id="div15" style="" relation="14,1">
				<div class="div_title_question_all">
					<div id="divTitle15" class="div_title_question">
						<span style="position:absolute;left:-10px;top:1px" class="req">* </span>
						13.贵企业可承担培训费用标准
					</div>
					<div style="clear:both;"></div>
				</div>
				<div class="div_table_radio_question" id="divquestion15" gm="">
					<div class="div_table_clear_top"></div>
					<ul class="ulradiocheck">
						<li style="width:99%;">
							<a href="javascript:" class="jqRadio" rel="q15_1">
								<i class="iconfontNew"></i>
							</a>
							<input style="" type="radio" name="q15" id="q15_1" value="1">
							<label for="q15_1">100元-300元/一次课程</label>
						</li>
						<li style="width:99%;">
							<a href="javascript:" class="jqRadio" rel="q15_2">
								<i class="iconfontNew"></i>
							</a>
							<input style="" type="radio" name="q15" id="q15_2" value="2">
							<label for="q15_2">300元-500元/一次课程</label>
						</li>
						<li style="width:99%;">
							<a href="javascript:" class="jqRadio" rel="q15_3">
								<i class="iconfontNew"></i>
							</a>
							<input style="" type="radio" name="q15" id="q15_3" value="3">
							<label for="q15_3">500元-1000元/一次课程</label>
						</li>
						<li style="width:99%;">
							<a href="javascript:" class="jqRadio" rel="q15_4">
								<i class="iconfontNew"></i>
							</a>
							<input style="" type="radio" name="q15" id="q15_4" value="4">
							<label for="q15_4">1000元以上/一次课程</label>
						</li>
						<div style="clear:both;"></div>
					</ul>
					<div style="clear:both;"></div>
					<div class="div_table_clear_bottom"></div>
				</div>
				<div class="errorMessage"></div>
			</div>
			<div class="div_question" id="div16">
				<div class="div_title_question_all">
					<div id="divTitle16" class="div_title_question">
						<span style="position:absolute;left:-10px;top:1px" class="req">* </span>
						14.贵企业面临以下痛点
						<span class="qtypetip">&nbsp;【多选题】</span>
					</div>
					<div style="clear:both;"></div>
				</div>
				<div class="div_table_radio_question" id="divquestion16" gm="">
					<div class="div_table_clear_top"></div>
					<ul class="ulradiocheck">
						<#list companyDefects as companyDefect>
						<li style="width:99%;">
							<a href="javascript:" class="jqCheckbox" rel="q16_1">
								<i class="iconfontNew"></i>
							</a>
							<input style="" id="q16_1" type="checkbox" name="q16" value="${companyDefect.id}">
							<label>${companyDefect.defect}</label>
						</li>
						</#list>
						<div style="clear:both;"></div>
					</ul>
					<div style="clear:both;"></div>
					<div class="div_table_clear_bottom"></div>
				</div>
				<div class="errorMessage"></div>
			</div>
			<div class="div_question" id="div17">
				<div class="div_title_question_all">
					<div id="divTitle17" class="div_title_question">
						<span style="position:absolute;left:-10px;top:1px" class="req">* </span>
						15.贵企业认为我们的服务工作有哪些不足
						<span class="qtypetip">&nbsp;【多选题】</span>
					</div>
					<div style="clear:both;"></div>
					</div>
					<div class="div_table_radio_question" id="divquestion17" gm="">
						<div class="div_table_clear_top"></div>
						<ul class="ulradiocheck">
							<#list serviceDefects as serviceDefect>
							<li style="width:99%;">
								<a href="javascript:" class="jqCheckbox" rel="q17_1">
									<i class="iconfontNew"></i>
								</a>
								<input style="" id="q17_1" type="checkbox" name="q17" value="${serviceDefect.id}">
								<label name="aa">${serviceDefect.serviceDefect}</label>
							</li>
							</#list>
							<div style="clear:both;"></div>
						</ul>
						<div style="clear:both;"></div>
						<div class="div_table_clear_bottom"></div>
					</div>
					<div class="errorMessage"></div>
				</div>
				<div class="div_question" id="div18" style="" relation="17,1;2;3;4;5;6;7;8">
					<div class="div_title_question_all">
						<div id="divTitle18" class="div_title_question">
							<span style="position:absolute;left:-10px;top:1px" class="req">* </span>
							16.请您对服务工作不足提出建议或意见。
						</div>
						<div style="clear:both;"></div>
					</div>
					<div class="div_table_radio_question" id="divquestion18">
						<div class="div_table_clear_top"></div>
						<textarea title="" style="overflow: auto;padding-right:27px;width:62%;height:22px;" class="inputtext" value="" id="q18" name="q18"></textarea>
						<div class="div_table_clear_bottom"></div>
					</div>
					<div class="errorMessage"></div>
				</div>
				<div class="div_question" id="div19">
					<div class="div_title_question_all">
						<div id="divTitle19" class="div_title_question">
							<span style="position:absolute;left:-10px;top:1px" class="req">* </span>
							17.贵企业是否有上下游衔接，产学研结合需求
						</div>
						<div style="clear:both;"></div>
					</div>
					<div class="div_table_radio_question" id="divquestion19">
						<div class="div_table_clear_top"></div>
						<textarea title="" style="overflow: auto;padding-right:27px;width:62%;height:22px;" class="inputtext" value="" id="q19" name="q19"></textarea>
						<div class="div_table_clear_bottom"></div>
					</div>
					<div class="errorMessage"></div>
				</div>
				<div class="div_question" id="div20">
					<div class="div_title_question_all">
						<div id="divTitle20" class="div_title_question">
							<span style="position:absolute;left:-10px;top:1px" class="req">* </span>
							18.贵企业对项目服务工作有何建议或意见？
						</div>
						<div style="clear:both;"></div>
					</div>
					<div class="div_table_radio_question" id="divquestion20">
						<div class="div_table_clear_top"></div>
						<textarea title="" style="overflow: auto;padding-right:27px;width:62%;height:22px;" class="inputtext" value="" id="q20" name="q20"></textarea>
						<div class="div_table_clear_bottom"></div>
					</div>
					<div class="errorMessage"></div>
				</div>
				
			</fieldset>
			<button type="button" id="sub" class="btn btn-info" style="margin-left: 450px;margin-bottom:20px;width: 5cm">提交</button>
		<p style="font-size: 12px; color: #000000; text-align: center; margin-bottom: 5px;">
			众智创联云科技（山东）有限公司
		</p>
		</div>


		<script src="/js/jquery.js"></script>
		<script src="/js/bootstrap.min.js"></script>
		<script src="/js/jquery.hwslider.min.js"></script>
		<script src="/js/main.js"></script>
		<script src="/js/city.js"></script>
		<script src="/js/method01.js"></script>
		<script src="/js/question.js"></script>
		<script>
			$(function(){
				$('input[name="q10"]').click(function(){
					console.log($(this).attr("value"))
					if ($(this).attr("value") == 1){
						$("#q11").prop("disabled","true");
						$("#q11_1").prop("disabled","true");
					}else{
						$("#q11").prop("disabled","");
						$("#q11_1").prop("disabled","");
					}
				})
			})
		</script>
	</body>

</html>