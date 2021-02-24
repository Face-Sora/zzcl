<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="ie=edge">
		<title>企业调研-数据总览</title>
		<link rel="stylesheet" href="/css/index.css">
		<link rel="stylesheet" href="/fonts/icomoon.css">
		<link rel="stylesheet" href="/css/bootstrap.min.css"/>
		<link rel="stylesheet" href="/css/fonts.css">
		<style type="text/css">
			body{
				background-color: #101129;
			}
			.inner{
			    height: 100%;
			}
			.table_data01{
			    width: 98%;
			    margin: 0 auto;
			    border-collapse: collapse;
			    color: #ffffff;
			    /* margin-top: 200px; */
			}
			.table_data01 tr td{
				text-align: left;
			    border: 3px solid #5bc0de;
			    padding-top: 5px;
			    padding-bottom: 5px;
			    text-indent: 2px;
			}
			.table_data02{
			    width: 96%;
			    margin-left: 2%;
			    border-collapse: collapse;
			    color: #ffffff;
			    margin-top: 10px;
			    border-radius: 5px;
			    border: 1px solid #5bc0de;
				text-align: left;
			}
			.table_data02 tr td{
			
			    padding-top: 8px;
			    padding-bottom: 8px;
			    text-indent: 10px;
			}
			.font00{
				font-size: 26px;
				color: #ffffff;
				margin-left: 30px;
			}
			.font01{
			    font-size: 26px;
			    color: #101129;
			}
			.font02{
			    font-size: 20px;
			    color: #1dbbff;
			}
			.data_left02{
				margin-top: 50px;
			}
			
			.new{
				float: right; 
				font-size: inherit; 
				color: #ffffff; 
				text-align: center;
				margin-top: 10px;
				margin-right: 35px;
			}
			.new1{
				float: right;
				margin-top: 15px;
				margin-right: 35px;
				margin-bottom: 10px;
			}
			
			
		</style>
	</head>
	<body>
		<div class="viewport">
		    <div class="column">
				<div class="">
				    <div class="data_left02">
				        <div>
				            <div>
							<!-- 表格操作 -->	
								<button class="btn btn-info new1">导出数据</button>
								<a href="/question/index">
									<button class="btn btn-info new1">返回主页</button>
								</a>
				                <div>
				                    <table class="table_data01" style="background-color: #ffffff;">
				                        <thead>
											<h3 class="font00">企业数据总览</h3>
											<h4 class="font00">科技型企业</h4>
										</thead>
										<tbody>
				                        	<tr>
				                        		<td class="font01">企业名称</td>
				                        		<td colspan="3" class="font01">企业地址</td>
				                        		<td class="font01">企业类型</td>
				                        		<td class="font01">融资需求</td>
				                        	</tr>
				                        	<tr class="font02">
				                        		<td>你好公司</td>
				                        		<td colspan="3">你好省</td>
				                        		<td>科技型</td>
				                        		<td>有</td>
				                        	</tr>
				                        </tbody>
				                    </table>
				                </div>
								
				            </div>
				        </div>
				        
				    </div>
				   
				</div>
			<!-- 非科技型 -->	
				<div class="">
				    <div class="data_left02">
				        <div>
				            <div>
								<!-- 表格操作 -->
								<button class="btn btn-info new1">导出数据</button>
				                <div>
				                    <table class="table_data01" style="background-color: #ffffff;">
				                        <thead>
											<h4 class="font00">非科技型企业</h4>
										</thead>
										<tbody>
				                        	<tr>
				                        		<td class="font01">企业名称</td>
				                        		<td colspan="3" class="font01">企业地址</td>
				                        		<td class="font01">企业类型</td>
				                        		<td class="font01">融资需求</td>
				                        	</tr>
				                        	<tr class="font02">
				                        		<td>不好公司</td>
				                        		<td colspan="3">不好省</td>
				                        		<td>非科技型</td>
				                        		<td>无</td>
				                        	</tr>
				                        </tbody>
				                    </table>
				                </div>
								
				            </div>
				        </div>
				        
				    </div>
				   
				</div>
				
			</div>
		</div>		
	</body>
</html>
