<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>企业调研-数据总览</title>
    <link rel="stylesheet" href="/css/index.css">
    <link rel="stylesheet" href="/fonts/icomoon.css">
	
</head>

<body>
    <div class="viewport">
        <div class="column">
            <!--概览-->
            <div class="overview panel">
                <div class="inner">
                    <div class="item">
                        <h4>${companyNum}</h4>
                        <span>
                            <i class="icon-dot" style="color: #006cff"></i>
                            企业总数
                        </span>
                    </div>
                    <div class="item">
                        <h4>${sCompanyNum}</h4>
                        <span>
                            <i class="icon-dot" style="color: #6acca3"></i>
                            科技型
                        </span>
                    </div>
                    <div class="item">
                        <h4>${nosCompanyNum}</h4>
                        <span>
                            <i class="icon-dot" style="color: #6acca3"></i>
                            生产型
                        </span>
                    </div>
                    <div class="">
                        <span>
                            <!-- <i class="icon-dot" style="color: #ed3f35"></i> -->
                            <a href="/question/data"  target="_blank" style="position: initial; color: #ffffff;">更多&gt;&gt;</a>
                        </span>
                    </div>
                </div>
            </div>
            <!--监控-->
            <div class="monitor panel">
                <div class="inner">
                    <div class="tabs">
                        <a href="javascript:;" data-index="0" class="active">科技型</a>
                        <a href="javascript:;" data-index="1">非科技型</a>
                        <a href="/question/all?pageNum=1&pageSize=3" target="_blank"> 全部</a>

<#--						<a href="data1.html">查看全部企业</a>-->
                    </div>
                    <div class="content" style="display: block;">
                        <div class="head">
                            <span class="col">公司名称</span>
                            <span class="col">公司地址</span>
                            <span class="col">人员规模</span>
                        </div>
                        <div class="marquee-view">
                            <div class="marquee">
                                <#list sCompany as sc>
                                <div class="row">
                                    <span class="col">${sc.company}</span>
                                    <span class="col">${sc.address}</span>
                                    <span class="col">${sc.scaleStr}</span>
                                    <span class="icon-dot"></span>
                                </div>
                                </#list>
                            </div>
                        </div>
                    </div>
                    <div class="content">
                        <div class="head">
                            <span class="col">公司名称</span>
                            <span class="col">公司地址</span>
                            <span class="col">人员规模</span>
                        </div>
                        <div class="marquee-view">
                            <div class="marquee">
                                <#list nosCompany as nsc>
                                <div class="row">
                                    <span class="col">${nsc.company}</span>
                                    <span class="col">${nsc.address}</span>
                                    <span class="col">${nsc.scaleStr}</span>
                                    <span class="icon-dot"></span>
                                </div>
                                </#list>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--点位-->
            <div class="point panel">
                <div class="inner">
                    <h3>企业分布统计</h3>
                    <div class="chart">
                        <div class="pie"></div>
                        <div class="data">
                            <div class="item">
                                <h4>8901</h4>
                                <span>
                                    <i class="icon-dot" style="color: #28d3ed"></i>
                                    科技型企业
                                </span>
                            </div>
                            <div class="item">
                                <h4>1109</h4>
                                <span>
                                    <i class="icon-dot" style="color: #ea6b40"></i>
                                    非科技型企业
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="column">
            <!-- 地图 -->
            <div id="wrap" class="my-map" style="margin: 0 auto; margin-top: 10px;margin-bottom: 30px;width: 600px; height: 430px; ">
                <h3 style="color: #ffffff;">
                    <span class="icon-cube" style="color: #ffffff;"></span>
                    公司数据统计分布图
                </h3>
                <div id="mapContainer" style="width: 100%;height:100%;margin:0"></div>
            </div>
			
            <!-- 用户 -->
            <div class="users panel">
                <div class="inner">
                    <h3>企业分布统计</h3>
                    <div class="chart">
                        <div class="bar"></div>
                        <div class="data">
                            <div class="item">
                                <h4>10010</h4>
                                <span>
                                    <!-- <i class="icon-dot" style="color: #ed3f35"></i> -->
                                    企业总量
                                </span>
                            </div>
                            <div class="item">
                                <h4>248</h4>
                                <span>
                                    <!-- <i class="icon-dot" style="color: #eacf19"></i> -->
                                    新增企业
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		
		
        <div class="column">
			<div class="monitor panel">
				<div class="inner">
					<div class="tabs">
                        <a></a>
						<a href="javascript:;" data-index="0" class="active">融资需求企业</a>
<#--						<a href="data3.html" style="color: #68d8db;">导出数据</a>-->
					</div>
					<div class="content" style="display: block;">
						<div class="head">
							<span class="col">公司名称</span>
							<span class="col">联系电话</span>
							<span class="col">融资方式</span>
							<span class="col">融资金额</span>
						</div>
						<div class="marquee-view">
							<div class="marquee">
                                <#list finanCompany as fc>
								<div class="row">
									<span class="col">${fc.company}</span>
									<span class="col">${fc.phone}</span>
									<span class="col">${fc.financingStr}</span>
									<sapn class="col">${fc.financingMoneyStr}</sapn>
									<span class="icon-dot"></span>
								</div>
                                </#list>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<!-- 公司规模统计 -->
			<div class="monitor panel">
				<div class="inner">
					<h3 style="margin-left: 30px; margin-bottom: 15px;">公司人员规模占比</h3>
					<div id="container" style="height: 100%"></div>
				</div>
			</div>
		</div>
		
		
		
		
    </div>
</body>
<script src="/js/jquery.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/echarts/4.2.1/echarts.min.js"></script> 

<script src="/js/index.js"></script>

<script src="/js/china.js"></script>
<script src="/js/mymap.js"></script>
<script src="https://webapi.amap.com/maps?v=1.4.15&key=8325164e247e15eea68b59e89200988b&plugin=AMap.DistrictSearch"></script>

<!-- 人员规模模块 -->
<script type="text/javascript">
	var dom = document.getElementById("container");
	var myChart = echarts.init(dom);
	var app = {};
	option = null;
	option = {
	    tooltip: {
	        trigger: 'item',
	        formatter: '{a} <br/>{b}: {c} ({d}%)'
	    },
	    legend: {
	        orient: 'vertical',
	        left: 10,
	        data: ['1-10人', '10-50人', '50-100人', '100人以上',],
			color:'#FFFFFF'
	    },
	    series: [
	        {
	            name: '公司规模占比',
	            type: 'pie',
	            radius: ['50%', '70%'],
	            avoidLabelOverlap: false,
	            label: {
	                show: false,
	                position: 'center',
					color:'#ffffff'
	            },
	            emphasis: {
	                label: {
	                    show: true,
	                    fontSize: '30',
	                    fontWeight: 'bold',
						color: '#ffffff'
	                }
	            },
	            labelLine: {
	                show: false,
	            },
	            data: [
	                {value: 335, name: '1-10人'},
	                {value: 310, name: '10-50人'},
	                {value: 234, name: '50-100人'},
	                {value: 135, name: '100人以上'},
	                // {value: 1548, name: ''}
	            ],
				
	        }
	    ]
	};
	;
	if (option && typeof option === "object") {
	    myChart.setOption(option, true);
	}

    // 地图遮罩
    var map = new AMap.Map('mapContainer', {
        resizeEnable: true,
        zoom: 8,
        center:[118.047649,36.814939],
        layers:[
            new AMap.TileLayer.RoadNet({
                zIndex:20
            }),
            new AMap.TileLayer({
                zIndex:6,
                opacity:1,
                getTileUrl:'https://t{1,2,3,4}.tianditu.gov.cn/DataServer?T=ter_w&x=[x]&y=[y]&l=[z]'
            })]
    });
    new AMap.DistrictSearch({
        extensions:'all',
        subdistrict:0
    }).search('淄博市',function(status,result){
        // 外多边形坐标数组和内多边形坐标数组
        var outer = [
            new AMap.LngLat(-360,90,true),
            new AMap.LngLat(-360,-90,true),
            new AMap.LngLat(360,-90,true),
            new AMap.LngLat(360,90,true),
        ];
        var holes = result.districtList[0].boundaries

        var pathArray = [
            outer
        ];
        pathArray.push.apply(pathArray,holes)
        var polygon = new AMap.Polygon( {
            pathL:pathArray,
            strokeColor: '#00eeff',
            strokeWeight: 1,
            fillColor: '#377dff',
            fillOpacity: 0.5
        });
        polygon.setPath(pathArray);
        map.add(polygon)
    })

    // 结束遮罩

</script>


</html>