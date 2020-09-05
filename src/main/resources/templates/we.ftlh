<!DOCTYPE html>
<html lang="zh-CN">

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="keywords" content="">
		<title>众智创联云科技（山东）有限公司</title>
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/hwslider.css" rel="stylesheet">
		<link href="css/fonts.css" rel="stylesheet">
		<link href="css/reset.css" rel="stylesheet">
		<link href="css/style.css" rel="stylesheet">
		<script src="/js/jquery.js"></script>
		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>

		<script src="/js/html5shiv.min.js"></script>
      <script src="/js/respond.min.js"></script>
    <![endif]-->
		<style type="text/css">
			#mapContainer {
			  width: 95%;
			  padding-bottom: 95%;
			  height: 0;
			}
		</style>
	
	</head>

	<body>
		<#include "./icn/header.ftlh">
		<!--大图-->
		<section class="ban">
			<img src="images/banner-1.jpg">
		</section>
		<section>
			<div class="container pa">
				<div class="pic-tit">
					<div class="ab-tit">
						<h2><em>联系</em><em class="f-normal">我们</em></h2>
						<p class="s-font">CONTACT US</p>
					</div>
					<div class="v-line"></div>
				</div>
				
			<!-- 原地图样式 -->	
				<!-- <div style="width:100%;height:350px;border:#ccc solid 1px;font-size:12px" id="map"></div> -->
				<div style="width:100%;height:550px;border:#ccc solid 1px;font-size:12px" id="map"></div>
				
				<div class="auto clearfix">
					<div class="col-sm-12 text-center" style="font-size: 20px;font-weight: bold; margin-bottom: 10px;">用户留言</div>
					<div class="col-sm-4">
						<ul class="lx-dan">
							<li>联系人：高经理</li>
							<li>电话：400 0256 757</li>
							<li>邮箱： 270739888@qq.com</li>

							<li>地址：山东省淄博市张店区马尚镇新村西路185号</li>
							<img src="images/bg_c.jpg">
						</ul>
					</div>
					<div class="col-sm-8">
						<form>
							<input class="con" type="text" placeholder="姓名：" />
							<input class="con" type="text" placeholder="电话：" />
							<input class="con" type="text" placeholder="邮箱：" />
							<input class="con" type="text" placeholder="公司：" />
							<textarea type="text" placeholder="留言："></textarea>
							<input style="margin-bottom: 5px;" class="submit" type="submit" value="提交" onclick="thank()"/>
						</form>
					</div>
				</div>
			</div>
		</section>
		<!--页脚-->
		<#include "./icn/footer.ftlh">
		<script src="js/bootstrap.min.js"></script>
		<script src="js/jquery.hwslider.min.js"></script>
		<script src="js/main.js"></script>
		<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
		<!--原地图js
		 <script type="text/javascript">
			//创建和初始化地图函数：
			function initMap() {
				createMap(); //创建地图
				setMapEvent(); //设置地图事件
				addMapControl(); //向地图添加控件
				addMapOverlay(); //向地图添加覆盖物
			}

			function createMap() {
				map = new BMap.Map("map");
				map.centerAndZoom(new BMap.Point(104.25, 25.67), 19);
			}

			function setMapEvent() {
				map.enableScrollWheelZoom();
				map.enableKeyboard();
				map.enableDragging();
				map.enableDoubleClickZoom()
			}

			function addClickHandler(target, window) {
				target.addEventListener("click", function() {
					target.openInfoWindow(window);
				});
			}

			function addMapOverlay() {
				var markers = [{
					content: "山东省淄博市张店区马尚镇新村西路185号",
					title: "众智创联云科技（山东）有限公司",
					imageOffset: {
						width: 0,
						height: 0
					},
					position: {
						lat: 36.808951,
						lng: 118.022163
					}
				}];
				for(var index = 0; index < markers.length; index++) {
					var point = new BMap.Point(markers[index].position.lng, markers[index].position.lat);
					var marker = new BMap.Marker(point, {
						icon: new BMap.Icon("images/mar.png", new BMap.Size(20, 25), {
							imageOffset: new BMap.Size(markers[index].imageOffset.width, markers[index].imageOffset.height)
						})
					});
					var label = new BMap.Label(markers[index].title, {
						offset: new BMap.Size(25, 5)
					});
					var opts = {
						width: 200,
						title: markers[index].title,
						enableMessage: false
					};
					var infoWindow = new BMap.InfoWindow(markers[index].content, opts);
					marker.setLabel(label);
					addClickHandler(marker, infoWindow);
					map.addOverlay(marker);
				};
			}
			//向地图添加控件
			function addMapControl() {
				var scaleControl = new BMap.ScaleControl({
					anchor: BMAP_ANCHOR_BOTTOM_LEFT
				});
				scaleControl.setUnit(BMAP_UNIT_IMPERIAL);
				map.addControl(scaleControl);
				var navControl = new BMap.NavigationControl({
					anchor: BMAP_ANCHOR_TOP_LEFT,
					type: BMAP_NAVIGATION_CONTROL_LARGE
				});
				map.addControl(navControl);
				var overviewControl = new BMap.OverviewMapControl({
					anchor: BMAP_ANCHOR_BOTTOM_RIGHT,
					isOpen: true
				});
				map.addControl(overviewControl);
			}
			var map;
			initMap();
		</script> -->
		
		 <script type="text/javascript">
		    //创建和初始化地图函数：
		    function initMap(){
		      createMap();//创建地图
		      setMapEvent();//设置地图事件
		      addMapControl();//向地图添加控件
		      addMapOverlay();//向地图添加覆盖物
		    }
		    function createMap(){ 
		      map = new BMap.Map("map"); 
		      map.centerAndZoom(new BMap.Point(118.022163,36.808951),19);
		    }
		    function setMapEvent(){
		      map.enableScrollWheelZoom();
		      map.enableKeyboard();
		      map.enableDragging();
		      map.enableDoubleClickZoom()
		    }
		    function addClickHandler(target,window){
		      target.addEventListener("click",function(){
		        target.openInfoWindow(window);
		      });
		    }
		    function addMapOverlay(){
		      var markers = [
		        {content:"淄博市张店区新村西路185号电商创业园",title:"众智创联云科技（山东）有限公司",imageOffset: {width:0,height:3},position:{lat:36.809045,lng:118.021588}}
		      ];
		      for(var index = 0; index < markers.length; index++ ){
		        var point = new BMap.Point(markers[index].position.lng,markers[index].position.lat);
		        var marker = new BMap.Marker(point,{icon:new BMap.Icon("images/mar.png",new BMap.Size(20,25),{   
												/* http://api.map.baidu.com/lbsapi/createmap/images/icon.png*/

		          imageOffset: new BMap.Size(markers[index].imageOffset.width,markers[index].imageOffset.height)
		        })});
		        var label = new BMap.Label(markers[index].title,{offset: new BMap.Size(25,5)});
		        var opts = {
		          width: 200,
		          title: markers[index].title,
		          enableMessage: false
		        };
		        var infoWindow = new BMap.InfoWindow(markers[index].content,opts);
		        marker.setLabel(label);
		        addClickHandler(marker,infoWindow);
		        map.addOverlay(marker);
		      };
		    }
		    //向地图添加控件
		    function addMapControl(){
		      var scaleControl = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
		      scaleControl.setUnit(BMAP_UNIT_IMPERIAL);
		      map.addControl(scaleControl);
		      var navControl = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:0});
		      map.addControl(navControl);
		      var overviewControl = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:true});
		      map.addControl(overviewControl);
		    }
		    var map;
		      initMap();

		      function thank() {
				  alert("我们已收到您的留言，感谢您的宝贵建议！")
			  }
		  </script>
		
		
	</body>

</html>