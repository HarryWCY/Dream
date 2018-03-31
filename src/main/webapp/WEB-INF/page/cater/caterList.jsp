<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/page/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>餐饮住宿</title>
		<link href="${path }/css/style.css" rel="stylesheet" type="text/css" />
		<link href="${path }/css/common.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="${path }/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="${path }/js/jquery-1.9.1.min.js"></script>
		<script type="text/javascript" src="${path }/js/imgtoggle.js"></script>
		<script type="text/javascript" src="${path }/js/layer/layer.js"></script>
<script type="text/javascript">
	window.onload = function() {
		var iTgl = new k_iToggle();
		iTgl.init({
			boxId : 'box',
			numId : 'num',
			imgId : 'imgs',
			isAuto : true,
			aCls : 'act',
			iCls : 'imgs1',
			direct : 'crt'
		});
		chg(iTgl, 'chg');
		_auto(iTgl, 'auto_1');

		//改变方向
		function chg(o, id) {
			$('#' + id).click(function() {
				if (o.direct() == 'crt') {
					o.direct('lvl');
					$(this).text('纵向');
				} else {
					o.direct('crt');
					$(this).text('横向');
				}
			});
		}

		function _auto(o, id) {
			$('#' + id).click(function() {
				if (o.isAuto) {
					o.isAuto = false;
					$(this).text('自动播放已停止');
				} else {
					o.isAuto = true;
					o.auto();
					$(this).text('自动播放');
				}
			});
		}
	}
</script>

</head>
<body>
<%@ include file="/WEB-INF/page/common/head.jsp" %>
<%@ include file="/WEB-INF/page/cater/mainNav.jsp" %>
	<div class="b_wrap">
		<div class="current">
			<span>当前所在地：</span><a href="${path }/cater/caterList">餐饮住宿</a>
		</div>
		<div class="clumn_w clearfix">
			<div class="clu_zb">
				<div class="tab_menu mul_w">
					<ul class="tab_mul">
						<li class="selected">全自助游</li>
						<li>途径城市设定</li>
						<li>入住酒店设定</li>
						<li>交通设定</li>
						<li>线路设定</li>
						<li>特殊需求线路</li>
					</ul>
				</div>
				<div class="tab_box tw_tab">
					<div>
						<table class="t_tab" width="250" border="0" cellspacing="0"
							cellpadding="0">
							<tr>
								<td>入住城市</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>入住日期</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>离店日期</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>行程价格</td>
								<td><select name=""></select></td>
							</tr>
							<tr>
								<td>酒店位置</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>酒店名称</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><a href="#">生成行程单搜索</a></td>
							</tr>
						</table>
					</div>
					<div class="hide">
						<table class="t_tab" width="250" border="0" cellspacing="0"
							cellpadding="0">
							<tr>
								<td>入住城市</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>入住日期</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>离店日期</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>行程价格</td>
								<td><select name=""></select></td>
							</tr>
							<tr>
								<td>酒店位置</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>酒店名称</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><a href="#">生成行程单搜索</a></td>
							</tr>
						</table>
					</div>
					<div class="hide">
						<table class="t_tab" width="250" border="0" cellspacing="0"
							cellpadding="0">
							<tr>
								<td>入住城市</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>入住日期</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>离店日期</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>行程价格</td>
								<td><select name=""></select></td>
							</tr>
							<tr>
								<td>酒店位置</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>酒店名称</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><a href="#">生成行程单搜索</a></td>
							</tr>
						</table>
					</div>
					<div class="hide">
						<table class="t_tab" width="250" border="0" cellspacing="0"
							cellpadding="0">
							<tr>
								<td>入住城市</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>入住日期</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>离店日期</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>行程价格</td>
								<td><select name=""></select></td>
							</tr>
							<tr>
								<td>酒店位置</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>酒店名称</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><a href="#">生成行程单搜索</a></td>
							</tr>
						</table>
					</div>
					<div class="hide">
						<table class="t_tab" width="250" border="0" cellspacing="0"
							cellpadding="0">
							<tr>
								<td>入住城市</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>入住日期</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>离店日期</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>行程价格</td>
								<td><select name=""></select></td>
							</tr>
							<tr>
								<td>酒店位置</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>酒店名称</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><a href="#">生成行程单搜索</a></td>
							</tr>
						</table>
					</div>
					<div class="hide">
						<table class="t_tab" width="250" border="0" cellspacing="0"
							cellpadding="0">
							<tr>
								<td>入住城市</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>入住日期</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>离店日期</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>行程价格</td>
								<td><select name=""></select></td>
							</tr>
							<tr>
								<td>酒店位置</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>酒店名称</td>
								<td><input name="" type="text"></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><a href="#">生成行程单搜索</a></td>
							</tr>
						</table>
						卦
					</div>
				</div>
			</div>
			<div class="in">
				<div class="pbox">
					<div id="box" class="box">
						<ul id="imgs">
							<li><a href="#"><img src="${path }/images/bimg01.jpg"
									width="570" height="280"></a></li>
							<li><a href="#"><img src="${path }/images/bimg01.jpg"
									width="570" height="280"></a></li>
							<li><a href="#"><img src="${path }/images/bimg01.jpg"
									width="570" height="280"></a></li>
							<li><a href="#"><img src="${path }/images/bimg01.jpg"
									width="570" height="280"></a></li>
						</ul>
					</div>
					<div class="cons">
						<ul id="num" class="num">
							<li class="act"><a href="#">夏阳湖皇冠假日酒店</a></li>
							<li><a href="#">黄金水岸开业酬宾</a></li>
							<li><a href="#"> 首尔公寓酒店</a></li>
							<li style="width: 140px"><a href="#"> 新加坡文化酒店</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="clumn_w clearfix">
			<div class="clumn_l">
				<div class="clumn">
					<div class="clumn_tit t01">餐饮住宿</div>
					<div class="clumn_con">
						<div class="cln_w">
							<p style="margin-left: 20px">城市</p>
							<div class="cln_c clearfix" id="city">
								<input type="hidden" id="city" value="">
								<c:forEach items="${citys }" var="city">
									<a style="margin-left: 20px" href="#" onclick="queryCity('${city}')">${city }</a>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
				<input type="hidden" id="lv" value=""> 
				<div class="clumn" style="margin-top: 40px">
					<div class="clumn_tit t03">
						<span>餐饮</span>
					</div>
					<div class="cln_w">
						<p  style="text-align: left;">饭店星级</p>
						<div class="cln_c clearfix">
							<a style="margin-left: 30px" href="#" onclick="queryLv('p_tar05.jpg,0')">五星饭店</a> 
							<a style="margin-left: 30px" href="#" onclick="queryLv('p_tar04.jpg,0')">四星饭店</a> 
							<a style="margin-left: 30px" href="#" onclick="queryLv('p_tar03.jpg,0')">三星饭店</a>
							<a style="margin-left: 30px" href="#" onclick="queryLv('p_tar02.jpg,0')">两星饭店</a>
							<a style="margin-left: 30px" href="#" onclick="queryLv('p_tar01.jpg,0')">一星饭店</a>
						</div>
					</div>
				</div>
				<div class="clumn" style="margin-top: 40px">
					<div class="clumn_tit t02">
						<span>酒店</span>
					</div>
					<div class="cln_w">
						<p  style="text-align: left;">酒店星级</p>
						<div class="cln_c clearfix">
							<a style="margin-left: 30px" href="#" onclick="queryLv('p_tar05.jpg,1')">五星/豪华</a> 
							<a style="margin-left: 30px" href="#" onclick="queryLv('p_tar04.jpg,1')">四星/高档</a> 
							<a style="margin-left: 30px" href="#" onclick="queryLv('p_tar03.jpg,1')">三星/舒适</a>
							<a style="margin-left: 30px" href="#" onclick="queryLv('p_tar02.jpg,1')">两星/客栈</a>
							<a style="margin-left: 30px" href="#" onclick="queryLv('p_tar01.jpg,1')">一星/经济</a>
						</div>
					</div>
				</div>
			</div>
			<div class="clumn_r">
				<div class="tab_menu b_border clearfix">
					<input type="hidden" id="type" value="0">
					<ul class="m_ul">
						<li id="colorBack1" onclick="query(0)">餐饮</li>
						<li id="colorBack2" onclick="query(1)">酒店</li>
					</ul>
				</div>
				<div id="caterData"></div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/page/common/foot.jsp" %>
</body>
<script type="text/javascript">
	$(function() {
		$("#caterData").load("${path }/cater/getCaterData");
		$("#colorBack1").css("background","#419703");
		$("#colorBack2").css("background","#1A7EBC");
	});

	function queryPage(page) {
	 var index = layer.load(1, {shade : false});  
		$("#caterData").load("${path }/cater/getCaterData", buildQuery(page),
				function() {
					layer.closeAll();
				});
	}

	function buildQuery(page) {
		var query = {};
		query.page = typeof (page) == "undefined" ? 1 : page;
		query.type = $("#type").val();
		query.city = $("#city").val();
		query.lv = $("#lv").val();
		return query;
	}
	function query(type){
		clear();
		$("#type").val(type);
		if(type == 0){
			$("#colorBack1").css("background","#419703");
			$("#colorBack2").css("background","#1A7EBC");
		}else {
			$("#colorBack2").css("background","#419703");
			$("#colorBack1").css("background","#1A7EBC");
		}
		queryPage();
	}
	function queryCity(city){
		clear();
		$("#city").val(city);
		queryPage();
	}
	function queryLv(lv){
		clear();
		$("#lv").val(lv);
		queryPage();
	}
	function clear(){
		var type = "";
		$("#type").val(type);
		var city = "";
		$("#city").val(city);
		var lv = "";
		$("#lv").val(lv);
	}
</script>
</html>