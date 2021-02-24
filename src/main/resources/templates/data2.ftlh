<!DOCTYPE html>
<html lang="zh-CN">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"/>
		<meta name="keywords" content="">
		<title>众智创联云科技(山东)有限公司</title>
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="/css/hwslider.css" rel="stylesheet">
		<link href="/css/fonts.css" rel="stylesheet">
		<link href="/css/reset.css" rel="stylesheet">
		<link href="/css/style.css" rel="stylesheet">
		<link rel="stylesheet" href="/css/q.css">
		<!-- 三级地址指定链接 -->
		<link rel="stylesheet" type="text/css" href="/css/city.css"/>
		<style type="text/css">
			.b{
				width: 60px;
				height: 28px;
				color: #ffffff;
				position: absolute; 
				margin-left: 260px;
				float: right;
				background: #f0d193; 
				border: none; 
				margin-top: 0px;
			}
		</style>
	</head>

	<body style="overflow-x:hidden; background-color: #f0d193;">

		<div class="container" style="margin-top: 20px; margin-bottom: 10px; padding-left: 30px; background-color: white;">
			<fieldset class="fieldset" id="fieldset1">
				<div id="divPeiE" style="display:none;"></div>
				<div id="ctl00_ContentPlaceHolder1_JQ1_divDec" class="surveydescription">
					<span id="ctl00_ContentPlaceHolder1_JQ1_lblQuestionnaireDescription" style="vertical-align: middle;">
						<p style="text-align: center;"><span style="font-size: 26px;color: #D58512;">企业调查问卷统计</span><small>(点击黄色方块可导出数据)</small></p>
						<!-- <p>尊敬的企业家：</p>
						<p style="padding-right: 5px;">&nbsp; &nbsp; &nbsp; &nbsp;为了提高项目服务质量，
							并为企业匹配更精准的服务内容，希望您能抽出几分钟时间，将您的感受和建议告诉我们，
							我们将非常重视您的宝贵意见，并保证您所填写的信息仅用于调研内部统计。欢迎您的参与！
						</p> -->
					</span>
				</div>
				<div style="clear: both;"></div>
				
				<!-- <div class="div_question" id="div1">
					<div class="div_title_question_all">
						<div id="divTitle1" class="div_title_question">
							<span style="position:absolute;left:-10px;top:1px" class="req">* </span>
							企业全称
						</div>
						<div style="clear:both;"></div>
					</div>
					<div class="div_table_radio_question" id="divquestion1">
						<div class="div_table_clear_top"></div>
						<textarea title="" style="overflow: auto;padding-right:27px;width:62%;height:35px;" class="inputtext" value="" id="q1" name="q1"></textarea>
						<div class="div_table_clear_bottom"></div>
						</div><div class="errorMessage"></div>
				</div> -->
				<!-- <div class="div_question" id="div2">
					<div class="div_title_question_all">
						<div id="divTitle2" class="div_title_question">
							<span style="position:absolute;left:-10px;top:1px" class="req">* </span>
							联系人及联系方式
						</div>
						<div style="clear:both;"></div>
					</div>
					<div class="div_table_radio_question" id="divquestion2">
						<div class="div_table_clear_top"></div>
						<textarea title="" style="overflow: auto;padding-right:27px;width:62%;height:35px;" class="inputtext" value="" id="q2" name="q2"></textarea>
						<div class="div_table_clear_bottom"></div>
					</div>
						<div class="errorMessage"></div>
				</div> -->
				<!-- <div class="div_question" id="div2">
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
					<!-- 企业地址 --
						<div>
						    <fieldset>
						        <form action="#">
						            <label for="addr-show">企业所在地&nbsp;
						                <input type="text" value="" id="addr-show">
						            </label>
						            <br/>
						
						            <!--省份选择--
						            <select id="prov" onchange="showCity(this)">
						                <option>请选择省份-</option>
						            </select>
						
						            <!--城市选择--
						            <select id="city" onchange="showCountry(this)">
						                <option>请选择城市-</option>
						            </select>
						
						            <!--县区选择--
						            <select id="country" onchange="selecCountry(this)">
						                <option>请选择县区-</option>
						            </select>
									<br>
						            <button type="button" class="btn met1" onClick="showAddr()">确定</button>
						        </form>
						    </fieldset>
						</div>
						
					<!-- 企业地址 --
						<div class="div_table_clear_bottom"></div>
					</div>
						<div class="errorMessage"></div>
				</div> -->
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
									<label for="q3_1">是</label>
									<input class="b" style="font-size: 20px;" type="button"  value="109">
								</li>
								
								<li style="width: 99%;">
									<a href="javascript:" class="jqRadio" rel="q3_2">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" type="radio" name="q3" id="q3_2" value="2"> -->
									<label for="q3_2">否</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
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
								2.贵企业2017年年度营业额
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
									<!-- <input style="" type="radio" name="q4" id="q4_1" value="1"> -->
									<label for="q4_1">研发阶段，没有销售</label>
									<input class="b" style="font-size: 20px;" type="button"  value="109">
								</li>
								<li style="width: 99%;">
									<a href="javascript:" class="jqRadio" rel="q4_2">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" type="radio" name="q4" id="q4_2" value="2"> -->
									<label for="q4_2">100万以下</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
								<li style="width: 99%;">
									<a href="javascript:" class="jqRadio" rel="q4_3">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" type="radio" name="q4" id="q4_3" value="3"> -->
									<label for="q4_3">100-500万</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
								<li style="width: 99%;">
									<a href="javascript:" class="jqRadio" rel="q4_4">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" type="radio" name="q4" id="q4_4" value="4"> -->
									<label for="q4_4">500-1000万</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
								<li style="width: 99%;">
									<a href="javascript:" class="jqRadio" rel="q4_5">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" type="radio" name="q4" id="q4_5" value="5"> -->
									<label for="q4_5">1000-5000万</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
								<li style="width: 99%;">
									<a href="javascript:" class="jqRadio" rel="q4_6">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" type="radio" name="q4" id="q4_6" value="6"> -->
									<label for="q4_6">5000万以上</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
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
									<!-- <input style="" type="radio" name="q5" id="q5_1" value="1"> -->
									<label for="q5_1">1-10人</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
								<li style="width: 99%;">
									<a href="javascript:" class="jqRadio" rel="q5_2">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" type="radio" name="q5" id="q5_2" value="2"> -->
									<label for="q5_2">10人-30人</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
								<li style="width: 99%;">
									<a href="javascript:" class="jqRadio" rel="q5_3">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" type="radio" name="q5" id="q5_3" value="3"> -->
									<label for="q5_3">30-50人</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
								<li style="width: 99%;">
									<a href="javascript:" class="jqRadio" rel="q5_4">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" type="radio" name="q5" id="q5_4" value="4"> -->
									<label for="q5_4">50-100人</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
								<li style="width: 99%;">
									<a href="javascript:" class="jqRadio" rel="q5_5">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" type="radio" name="q5" id="q5_5" value="5"> -->
									<label for="q5_5">100人以上</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
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
								<li style="width:99%;">
									<a href="javascript:" class="jqCheckbox" rel="q6_1">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" id="q6_1" type="checkbox" name="q6" value="1"> -->
									<label>无</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
								<li style="width:99%;">
									<a href="javascript:" class="jqCheckbox" rel="q6_2">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" id="q6_2" type="checkbox" name="q6" value="2"> -->
									<label>实用新型</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
								<li style="width:99%;">
									<a href="javascript:" class="jqCheckbox" rel="q6_3">
										<i class="iconfontNew"></i>
									</a>
										<!-- <input style="" id="q6_3" type="checkbox" name="q6" value="3"> -->
										<label>外观专利</label>
										<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
								<li style="width:99%;">
									<a href="javascript:" class="jqCheckbox" rel="q6_4">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" id="q6_4" type="checkbox" name="q6" value="4"> -->
									<label>软件著作权</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
								<li style="width:99%;">
									<a href="javascript:" class="jqCheckbox" rel="q6_5">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" id="q6_5" type="checkbox" name="q6" value="5"> -->
									<label>发明专利</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
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
								<li style="width:99%;">
									<a href="javascript:" class="jqCheckbox" rel="q7_1">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" id="q7_1" type="checkbox" name="q7" value="1"> -->
									<label>市级、国家级高新技术企业</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
								<li style="width:99%;">
									<a href="javascript:" class="jqCheckbox" rel="q7_2">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" id="q7_2" type="checkbox" name="q7" value="2"> -->
									<label>重点新产品</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
								<li style="width:99%;">
									<a href="javascript:" class="jqCheckbox" rel="q7_3">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" id="q7_3" type="checkbox" name="q7" value="3"> -->
									<label>科技支撑重点项目</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
								<li style="width:99%;">
									<a href="javascript:" class="jqCheckbox" rel="q7_4">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" id="q7_4" type="checkbox" name="q7" value="4"> -->
									<label>研发费加计扣除</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
								<li style="width:99%;">
									<a href="javascript:" class="jqCheckbox" rel="q7_5">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" id="q7_5" type="checkbox" name="q7" value="5"> -->
									<label>千人计划</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
								<li style="width:99%;">
									<a href="javascript:" class="jqCheckbox" rel="q7_6">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" id="q7_6" type="checkbox" name="q7" value="6"> -->
									<label>专、精、特、新产品认定</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
								<li style="width:99%;">
									<a href="javascript:" class="jqCheckbox" rel="q7_7">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" id="q7_7" type="checkbox" name="q7" value="7"> -->
									<label>科技型小巨人企业</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
								<li style="width:99%;">
									<a href="javascript:" class="jqCheckbox" rel="q7_8">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" id="q7_8" type="checkbox" name="q7" value="8"> -->
									<label>知识产权认定</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
								<li style="width:99%;">
									<a href="javascript:" class="jqCheckbox" rel="q7_9">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" id="q7_9" type="checkbox" name="q7" value="9"> -->
									<label>以上均不了解</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
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
									<!-- <input style="" type="radio" name="q8" id="q8_1" value="1"> -->
									<label for="q8_1">否</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
								<li style="width:99%;">
									<a href="javascript:" class="jqRadio" rel="q8_2">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" type="radio" name="q8" id="q8_2" value="2"> -->
									<label for="q8_2">是，有股权融资需求</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
								<li style="width:99%;">
									<a href="javascript:" class="jqRadio" rel="q8_3">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" type="radio" name="q8" id="q8_3" value="3"> -->
									<label for="q8_3">是，有债权融资需求</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
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
									<!-- <input style="" type="radio" name="q9" id="q9_1" value="1"> -->
									<label for="q9_1">50-100万</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
								<li style="width:99%;">
									<a href="javascript:" class="jqRadio" rel="q9_2">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" type="radio" name="q9" id="q9_2" value="2"> -->
									<label for="q9_2">100-500万</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
								<li style="width:99%;">
									<a href="javascript:" class="jqRadio" rel="q9_3">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" type="radio" name="q9" id="q9_3" value="3"> -->
									<label for="q9_3">500-1000万</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
								<li style="width:99%;">
									<a href="javascript:" class="jqRadio" rel="q9_4">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" type="radio" name="q9" id="q9_4" value="4"> -->
									<label for="q9_4">1000万及以上</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
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
									<!-- <input style="" type="radio" name="q10" id="q10_1" value="1"> -->
									<label for="q10_1">否</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
								<li style="width:99%;">
									<a href="javascript:" class="jqRadio" rel="q10_2">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" type="radio" name="q10" id="q10_2" value="2"> -->
									<label for="q10_2">是</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
								<div style="clear:both;"></div>
							</ul>
							<div style="clear:both;"></div>
							<div class="div_table_clear_bottom"></div>
						</div>
						<div class="errorMessage"></div>
					</div>
					<!-- <div class="div_question" id="div11" style="" relation="10,2">
						<div class="div_title_question_all">
							<div id="divTitle11" class="div_title_question">
								9.贵企业在哪家银行贷款及贷款金额
							</div>
							<div style="clear:both;"></div>
						</div>
						<div class="div_table_radio_question" id="divquestion11">
							<div class="div_table_clear_top"></div>
							<textarea title="" rows="" cols="35" style="overflow: auto;padding-right:27px;width:75%;height:50px;" class="inputtext" value="" id="q11" name="q11"></textarea>
							<div class="div_table_clear_bottom"></div>
						</div>
						<div class="errorMessage"></div>
					</div> -->
					<div class="div_question" id="div12">
						<div class="div_title_question_all">
							<div id="divTitle12" class="div_title_question">
								<span style="position:absolute;left:-10px;top:1px" class="req">* </span>
								9.贵企业希望得到哪方面的培训辅导
								<span class="qtypetip">&nbsp;【多选题】</span>
							</div>
							<div style="clear:both;"></div>
						</div>
						<div class="div_table_radio_question" id="divquestion12" gm="">
							<div class="div_table_clear_top"></div>
							<ul class="ulradiocheck">
								<li style="width:99%;">
									<a href="javascript:" class="jqCheckbox" rel="q12_1">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" id="q12_1" type="checkbox" name="q12" value="1"> -->
									<label>资本市场</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
								<li style="width:99%;">
									<a href="javascript:" class="jqCheckbox" rel="q12_2">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" id="q12_2" type="checkbox" name="q12" value="2"> -->
									<label>财税</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
								<li style="width:99%;">
									<a href="javascript:" class="jqCheckbox" rel="q12_3">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" id="q12_3" type="checkbox" name="q12" value="3"> -->
									<label>法务</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
								<li style="width:99%;">
									<a href="javascript:" class="jqCheckbox" rel="q12_4">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" id="q12_4" type="checkbox" name="q12" value="4"> -->
									<label>人力资源</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
								<li style="width:99%;">
									<a href="javascript:" class="jqCheckbox" rel="q12_5">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" id="q12_5" type="checkbox" name="q12" value="5"> -->
									<label>营销</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
								<li style="width:99%;">
									<a href="javascript:" class="jqCheckbox" rel="q12_6">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" id="q12_6" type="checkbox" name="q12" value="6"> -->
									<label>其他</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
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
								10.贵公司希望了解以下哪些融资渠道
								<span class="qtypetip">&nbsp;【多选题】</span>
							</div>
							<div style="clear:both;"></div>
						</div>
						<div class="div_table_radio_question" id="divquestion13" gm="">
							<div class="div_table_clear_top"></div>
							<ul class="ulradiocheck">
								<li style="width:99%;">
									<a href="javascript:" class="jqCheckbox" rel="q13_1">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" id="q13_1" type="checkbox" name="q13" value="1"> -->
									<label>银行贷款</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
								<li style="width:99%;">
									<a href="javascript:" class="jqCheckbox" rel="q13_2">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" id="q13_2" type="checkbox" name="q13" value="2"> -->
									<label>股权融资</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
								<li style="width:99%;">
									<a href="javascript:" class="jqCheckbox" rel="q13_3">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" id="q13_3" type="checkbox" name="q13" value="3"> -->
									<label>股票发行</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
								<li style="width:99%;">
									<a href="javascript:" class="jqCheckbox" rel="q13_4">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" id="q13_4" type="checkbox" name="q13" value="4"> -->
									<label>发行可转债</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
								<li style="width:99%;">
									<a href="javascript:" class="jqCheckbox" rel="q13_5">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" id="q13_5" type="checkbox" name="q13" value="5"> -->
									<label>保理融资</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
								<li style="width:99%;">
									<a href="javascript:" class="jqCheckbox" rel="q13_6">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" id="q13_6" type="checkbox" name="q13" value="6"> -->
									<label>小额贷款</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
								<li style="width:99%;">
									<a href="javascript:" class="jqCheckbox" rel="q13_7">
										<i class="iconfontNew"></i>
									</a>
									<!-- <input style="" id="q13_7" type="checkbox" name="q13" value="7"> -->
									<label>融资租赁</label>
									<input class="b" style="font-size: 20px;" type="button"  value="128">
								</li>
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
						11.贵企业是否愿意为培训课程付费
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
							<!-- <input style="" type="radio" name="q14" id="q14_1" value="1"> -->
							<label for="q14_1">是</label>
							<input class="b" style="font-size: 20px;" type="button"  value="128">
						</li>
						<li style="width:99%;">
							<a href="javascript:" class="jqRadio" rel="q14_2">
								<i class="iconfontNew"></i>
							</a>
							<!-- <input style="" type="radio" name="q14" id="q14_2" value="2"> -->
							<label for="q14_2">否</label>
							<input class="b" style="font-size: 20px;" type="button"  value="128">
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
						12.贵企业可承担培训费用标准
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
							<!-- <input style="" type="radio" name="q15" id="q15_1" value="1"> -->
							<label for="q15_1">100元-300元/一次课程</label>
							<input class="b" style="font-size: 20px;" type="button"  value="128">
						</li>
						<li style="width:99%;">
							<a href="javascript:" class="jqRadio" rel="q15_2">
								<i class="iconfontNew"></i>
							</a>
							<!-- <input style="" type="radio" name="q15" id="q15_2" value="2"> -->
							<label for="q15_2">300元-500元/一次课程</label>
							<input class="b" style="font-size: 20px;" type="button"  value="128">
						</li>
						<li style="width:99%;">
							<a href="javascript:" class="jqRadio" rel="q15_3">
								<i class="iconfontNew"></i>
							</a>
							<!-- <input style="" type="radio" name="q15" id="q15_3" value="3"> -->
							<label for="q15_3">500元-1000元/一次课程</label>
							<input class="b" style="font-size: 20px;" type="button"  value="128">
						</li>
						<li style="width:99%;">
							<a href="javascript:" class="jqRadio" rel="q15_4">
								<i class="iconfontNew"></i>
							</a>
							<!-- <input style="" type="radio" name="q15" id="q15_4" value="4"> -->
							<label for="q15_4">1000元以上/一次课程</label>
							<input class="b" style="font-size: 20px;" type="button"  value="128">
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
						13.贵企业面临以下痛点
						<span class="qtypetip">&nbsp;【多选题】</span>
					</div>
					<div style="clear:both;"></div>
				</div>
				<div class="div_table_radio_question" id="divquestion16" gm="">
					<div class="div_table_clear_top"></div>
					<ul class="ulradiocheck">
						<li style="width:99%;">
							<a href="javascript:" class="jqCheckbox" rel="q16_1">
								<i class="iconfontNew"></i>
							</a>
							<!-- <input style="" id="q16_1" type="checkbox" name="q16" value="1"> -->
							<label>流动资金短缺</label>
							<input class="b" style="font-size: 20px;" type="button"  value="128">
						</li>
						<li style="width:99%;">
							<a href="javascript:" class="jqCheckbox" rel="q16_2">
								<i class="iconfontNew"></i>
							</a>
							<!-- <input style="" id="q16_2" type="checkbox" name="q16" value="2"> -->
							<label>生产成本过高</label>
							<input class="b" style="font-size: 20px;" type="button"  value="128">
						</li>
						<li style="width:99%;">
							<a href="javascript:" class="jqCheckbox" rel="q16_3">
								<i class="iconfontNew"></i>
							</a>
							<!-- <input style="" id="q16_3" type="checkbox" name="q16" value="3"> -->
							<label>市场竞争加剧、产品价格不断下降</label>
							<input class="b" style="font-size: 20px;" type="button"  value="128">
						</li>
						<li style="width:99%;">
							<a href="javascript:" class="jqCheckbox" rel="q16_4">
								<i class="iconfontNew"></i>
							</a>
							<!-- <input style="" id="q16_4" type="checkbox" name="q16" value="4"> -->
							<label>市场需求降低</label>
							<input class="b" style="font-size: 20px;" type="button"  value="128">
						</li>
						<li style="width:99%;">
							<a href="javascript:" class="jqCheckbox" rel="q16_5">
								<i class="iconfontNew"></i>
							</a>
							<!-- <input style="" id="q16_5" type="checkbox" name="q16" value="5"> -->
							<label>高管人员管理能力有限</label>
							<input class="b" style="font-size: 20px;" type="button"  value="128">
						</li>
						<li style="width:99%;">
							<a href="javascript:" class="jqCheckbox" rel="q16_6">
								<i class="iconfontNew"></i>
							</a>
							<!-- <input style="" id="q16_6" type="checkbox" name="q16" value="6"> -->
							<label>对政府政策不清楚、不了解</label>
							<input class="b" style="font-size: 20px;" type="button"  value="128">
						</li>
						<li style="width:99%;">
							<a href="javascript:" class="jqCheckbox" rel="q16_7">
								<i class="iconfontNew"></i>
							</a>
							<!-- <input style="" id="q16_7" type="checkbox" name="q16" value="7"> -->
							<label>缺乏财税规划</label>
							<input class="b" style="font-size: 20px;" type="button"  value="128">
						</li>
						<li style="width:99%;">
							<a href="javascript:" class="jqCheckbox" rel="q16_8">
								<i class="iconfontNew"></i>
							</a>
							<!-- <input style="" id="q16_8" type="checkbox" name="q16" value="8"> -->
							<label>人才流失</label>
							<input class="b" style="font-size: 20px;" type="button"  value="128">
						</li>
						<li style="width:99%;">
							<a href="javascript:" class="jqCheckbox" rel="q16_9">
								<i class="iconfontNew"></i>
							</a>
							<!-- <input style="" id="q16_9" type="checkbox" name="q16" value="9"> -->
							<label>缺乏业务对接渠道</label>
							<input class="b" style="font-size: 20px;" type="button"  value="128">
						</li>
						<li style="width:99%;">
							<a href="javascript:" class="jqCheckbox" rel="q16_10">
								<i class="iconfontNew"></i>
							</a>
							<!-- <input style="" id="q16_10" type="checkbox" name="q16" value="10"> -->
							<label>缺乏供需资源对接渠道</label>
							<input class="b" style="font-size: 20px;" type="button"  value="128">
						</li>
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
						14.贵企业认为我们的服务工作有哪些不足
						<span class="qtypetip">&nbsp;【多选题】</span>
					</div>
					<div style="clear:both;"></div>
					</div>
					<div class="div_table_radio_question" id="divquestion17" gm="">
						<div class="div_table_clear_top"></div>
						<ul class="ulradiocheck">
							<li style="width:99%;">
								<a href="javascript:" class="jqCheckbox" rel="q17_1">
									<i class="iconfontNew"></i>
								</a>
								<!-- <input style="" id="q17_1" type="checkbox" name="q17" value="1"> -->
								<label >无</label>
								<input class="b" style="font-size: 20px;" type="button"  value="357">
							</li>
							<li style="width:99%;">
								<a href="javascript:" class="jqCheckbox" rel="q17_2">
									<i class="iconfontNew"></i>
								</a>
								<!-- <input style="" id="q17_2" type="checkbox" name="q17" value="2"> -->
								<label >挂牌之后没有得到有效宣传</label>
								<input class="b" style="font-size: 20px;" type="button"  value="128">
							</li>
							 <li style="width:99%;">
								 <a href="javascript:" class="jqCheckbox" rel="q17_3">
									 <i class="iconfontNew"></i>
								</a>
								<!-- <input style="" id="q17_3" type="checkbox" name="q17" value="3"> -->
								<label >挂牌仪式不够隆重</label>
								<input class="b" style="font-size: 20px;" type="button"  value="128">
							</li>
							<li style="width:99%;">
								<a href="javascript:" class="jqCheckbox" rel="q17_4">
									<i class="iconfontNew"></i>
								</a>
								<!-- <input style="" id="q17_4" type="checkbox" name="q17" value="4"> -->
								<label >不清楚负责公司挂牌的是哪位经理</label>
								<input class="b" style="font-size: 20px;" type="button"  value="128">
							</li>
							<li style="width:99%;">
								<a href="javascript:" class="jqCheckbox" rel="q17_5">
									<i class="iconfontNew"></i>
								</a>
								<!-- <input style="" id="q17_5" type="checkbox" name="q17" value="5"> -->
								<label >挂牌之后没有对应的专属融资产品</label>
								<input class="b" style="font-size: 20px;" type="button"  value="128">
							</li>
							<li style="width:99%;">
								<a href="javascript:" class="jqCheckbox" rel="q17_6">
									<i class="iconfontNew"></i>
								</a>
								<!-- <input style="" id="q17_6" type="checkbox" name="q17" value="6"> -->
								<label>融资对接渠道单一</label>
								<input class="b" style="font-size: 20px;" type="button"  value="128">
							</li>
							<li style="width:99%;">
								<a href="javascript:" class="jqCheckbox" rel="q17_7">
									<i class="iconfontNew"></i>
								</a>
								<!-- <input style="" id="q17_7" type="checkbox" name="q17" value="7"> -->
								<label >培训形式不够多元化</label>
								<input class="b" style="font-size: 20px;" type="button"  value="128">
							</li>
							<li style="width:99%;">
								<a href="javascript:" class="jqCheckbox" rel="q17_8">
									<i class="iconfontNew"></i>
								</a>
								<!-- <input style="" id="q17_8" type="checkbox" name="q17" value="8"> -->
								<label >未通过众智联平台结识更多的企业家</label>
								<input class="b" style="font-size: 20px;" type="button"  value="128">
							</li>
							<li style="width:99%;">
								<a href="javascript:" class="jqCheckbox" rel="q17_9">
									<i class="iconfontNew"></i>
								</a>
								<!-- <input style="" id="q17_9" type="checkbox" name="q17" value="9"> -->
								<label >没有提供业务对接沟通平台</label>
								<input class="b" style="font-size: 20px;" type="button"  value="128">
							</li>
							<li style="width:99%;">
								<a href="javascript:" class="jqCheckbox" rel="q17_10">
									<i class="iconfontNew"></i>
								</a>
								<!-- <input style="" id="q17_10" type="checkbox" name="q17" value="10"> -->
								<label >其他</label>
								<input class="b" style="font-size: 20px;" type="button"  value="128">
							</li>
							<div style="clear:both;"></div>
						</ul>
						<div style="clear:both;"></div>
						<div class="div_table_clear_bottom"></div>
					</div>
					<div class="errorMessage"></div>
				</div>
				<!-- <div class="div_question" id="div18" style="" relation="17,1;2;3;4;5;6;7;8">
					<div class="div_title_question_all">
						<div id="divTitle18" class="div_title_question">
							<span style="position:absolute;left:-10px;top:1px" class="req">* </span>
							15.请您对服务工作不足提出建议或意见。
						</div>
						<div style="clear:both;"></div>
					</div>
					<div class="div_table_radio_question" id="divquestion18">
						<div class="div_table_clear_top"></div>
						<textarea title="" rows="" cols="35" style="overflow: auto;padding-right:27px;width:75%;height:50px;" class="inputtext" value="" id="q18" name="q18"></textarea>
						<div class="div_table_clear_bottom"></div>
					</div>
					<div class="errorMessage"></div>
				</div>
				<div class="div_question" id="div19">
					<div class="div_title_question_all">
						<div id="divTitle19" class="div_title_question">
							<span style="position:absolute;left:-10px;top:1px" class="req">* </span>
							16.贵企业是否有上下游衔接，产学研结合需求
						</div>
						<div style="clear:both;"></div>
					</div>
					<div class="div_table_radio_question" id="divquestion19">
						<div class="div_table_clear_top"></div>
						<textarea title="" rows="" cols="35" style="overflow: auto;padding-right:27px;width:75%;height:50px;" class="inputtext" value="" id="q19" name="q19"></textarea>
						<div class="div_table_clear_bottom"></div>
					</div>
					<div class="errorMessage"></div>
				</div>
				<div class="div_question" id="div20">
					<div class="div_title_question_all">
						<div id="divTitle20" class="div_title_question">
							<span style="position:absolute;left:-10px;top:1px" class="req">* </span>
							17.贵企业对项目服务工作有何建议或意见？
						</div>
						<div style="clear:both;"></div>
					</div>
					<div class="div_table_radio_question" id="divquestion20">
						<div class="div_table_clear_top"></div>
						<textarea title="" rows="" cols="35" style="overflow: auto;padding-right:27px;width:75%;height:50px;" class="inputtext" value="" id="q20" name="q20"></textarea>
						<div class="div_table_clear_bottom"></div>
					</div>
					<div class="errorMessage"></div>
				</div> -->
				
			</fieldset>
			
		</div>
		
		<p style="font-size: 12px; color: #000000; text-align: center; margin-bottom: 5px;">
			众智创联云科技（山东）有限公司
		</p>
		
		
		
		
		<script src="/js/jquery.js"></script>
		<script src="/js/bootstrap.min.js"></script>
		<script src="/js/jquery.hwslider.min.js"></script>
		<script src="/js/main.js"></script>
	<!-- 企业地址专用js -->
		<script src="/js/city.js"></script>
		<script src="/js/city02.js"></script>
		<script src="/js/method01.js"></script>
		<script src="/js/method02.js"></script>
		<script src="/js/method03.js"></script>
	</body>

</html>
