<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/page/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>地方特产</title>
<link href="${path }/css/style.css" rel="stylesheet" type="text/css" />
<link href="${path }/css/common.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${path }/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="${path }/js/imgtoggle.js"></script>
<script type="text/javascript" src="${path }/dist/js/bootstrap.min.js" ></script>
<script type="text/javascript" src="${path }/js/layer/layer.js"></script>
<script type="text/javascript">
window.onload=function(){
    var iTgl=new k_iToggle();
        iTgl.init({
            boxId:'box',
            numId:'num',
            imgId:'imgs',
            isAuto:true,
            aCls:'act',
            iCls:'imgs1',
            direct:'crt'
        });
        chg(iTgl,'chg');
        _auto(iTgl,'auto_1');
        
    //改变方向
    function chg(o,id){
        $('#'+id).click(function(){
            if(o.direct()=='crt'){
                o.direct('lvl');
                $(this).text('纵向');
            }else{
                o.direct('crt');
                $(this).text('横向');
            }
        });
    }
    
    function _auto(o,id){
        $('#'+id).click(function(){
            if(o.isAuto){
                o.isAuto=false;
                $(this).text('自动播放已停止');
            }else{
                o.isAuto=true;
                o.auto();
                $(this).text('自动播放');
            }
        });
    }
}
</script>
<script type="text/javascript"> 
    $(function(){
        var wweya_li =$("div.tab_menu ul li");
        wweya_li.click(function(){
        $(this).addClass("selected")            
         .siblings().removeClass("selected");  
            var index =  wweya_li.index(this); 
        $("div.tab_box > div")  
        .eq(index).show(100)   
            .siblings().hide(); 
                }).hover(function(){
            $(this).addClass("hover");
        },function(){
            $(this).removeClass("hover");           
        });
    });
</script>
</head>
<body>
<%@ include file="/WEB-INF/page/common/head.jsp" %>
<%@ include file="/WEB-INF/page/specialty/mainNav.jsp" %>
<div class="b_wrap">
    <div class="current"><span>当前所在地：</span><a href="${path }/specialty/specialtyList">地方特产</a> </div>
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
                     <table class="t_tab" width="250" border="0" cellspacing="0" cellpadding="0">
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
                    <table class="t_tab" width="250" border="0" cellspacing="0" cellpadding="0">
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
                    <table class="t_tab" width="250" border="0" cellspacing="0" cellpadding="0">
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
                    <table class="t_tab" width="250" border="0" cellspacing="0" cellpadding="0">
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
                    <table class="t_tab" width="250" border="0" cellspacing="0" cellpadding="0">
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
                    <table class="t_tab" width="250" border="0" cellspacing="0" cellpadding="0">
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
                    卦</div>         
            </div>
        </div>
        <div class="in">
          <div class="pbox">
            <div id="box" class="box">
              <ul id="imgs">
                <li><a href="#"><img src="${path }/images/bimg01.jpg" width="570" height="280"></a></li>
                <li><a href="#"><img src="${path }/images/bimg01.jpg" width="570" height="280"></a></li>
                <li><a href="#"><img src="${path }/images/bimg01.jpg" width="570" height="280"></a></li>
                <li><a href="#"><img src="${path }/images/bimg01.jpg" width="570" height="280"></a></li>
              </ul>
            </div>
            <div class="cons">
              <ul id="num" class="num">
                <li class="act"><a href="#">夏阳湖皇冠假日酒店</a></li>
                <li><a href="#">黄金水岸开业酬宾</a></li>
                <li><a href="#"> 首尔公寓酒店</a></li>
                <li style="width:140px"><a href="#"> 新加坡文化酒店</a></li>
              </ul>
            </div>
          </div>
        </div>
    </div>
    <div class="clumn_w clearfix">
        <div class="clumn_l">
            <div class="clumn">
                <div class="clumn_tit t01">地方特产</div>
                <form action="${path }/specialty/getSpecialtyData" class="bs-example bs-example-form" role="form" method="post" >
                <input type="hidden" id="region">
                <div class="clumn_con">
                    <div class="cln_w">
                        <p>华北</p>
                        <div class="cln_c clearfix">
                          <a href="#" onclick="query('北京')">北京特产</a>
                          <a href="#" onclick="query('天津')">天津特产</a>
                          <a href="#" onclick="query('河北')">河北特产</a>
                          <a href="#" onclick="query('山西')">山西特产</a>
                          <a href="#" onclick="query('内蒙古')">内蒙古特产</a>
                        </div>
                    </div>
                    <div class="cln_w">
                        <p>西北</p>
                        <div class="cln_c clearfix">
                            <a href="#" onclick="query('宁夏')">宁夏特产</a>
                            <a href="#" onclick="query('新疆')">新疆特产</a>
                            <a href="#" onclick="query('青海')">青海特产</a>
                            <a href="#" onclick="query('陕西')">陕西特产</a>
                            <a href="#" onclick="query('甘肃')">甘肃特产</a>
                        </div>
                    </div>
                    <div class="cln_w">
                        <p>西北</p>
                        <div class="cln_c clearfix">
                            <a href="#" onclick="query('四川')">四川特产</a>
                            <a href="#" onclick="query('云南')">云南特产</a>
                            <a href="#" onclick="query('贵州')">贵州特产</a>
                            <a href="#" onclick="query('西藏')">西藏特产</a>
                            <a href="#" onclick="query('重庆')">重庆特产</a>
                        </div>
                    </div>
                    <div class="cln_w">
                        <p>华中</p>
                        <div class="cln_c clearfix">
                            <a href="#" onclick="query('湖北')">湖北特产</a>
                            <a href="#" onclick="query('湖南')">湖南特产</a>
                            <a href="#" onclick="query('河南')">河南特产</a>
                        </div>
                    </div>
                    <div class="cln_w">
                        <p>华南</p>
                        <div class="cln_c clearfix">
                            <a href="#" onclick="query('广东')">广东特产</a>
                            <a href="#" onclick="query('广西')">广西特产</a>
                            <a href="#" onclick="query('海南')">海南特产</a>
                        </div>
                    </div>
                    <div class="cln_w">
                        <p>东北</p>
                        <div class="cln_c clearfix">
                            <a href="#" onclick="query('辽宁')">辽宁特产</a>
                            <a href="#" onclick="query('吉林')">吉林特产</a>
                            <a href="#" onclick="query('黑龙江')">黑龙江特产</a> 
                        </div>
                    </div>
                    <div class="cln_w">
                        <p>港澳台</p>
                        <div class="cln_c clearfix">
                            <a href="#" onclick="query('香港')">香港特产</a>
                            <a href="#" onclick="query('澳门')">澳门特产</a>
                            <a href="#" onclick="query('台湾')">台湾特产</a>
                        </div>
                    </div>
                    <div class="cln_w">
                        <p>华东</p>
                        <div class="cln_c clearfix">
                            <a href="#" onclick="query('山东')">山东特产</a>
                            <a href="#" onclick="query('江苏')">江苏特产</a>
                            <a href="#" onclick="query('江西')">江西特产</a>
                            <a href="#" onclick="query('安徽')">安徽特产</a>
                            <a href="#" onclick="query('浙江')">浙江特产</a>
                            <a href="#" onclick="query('福建')">福建特产</a>
                            <a href="#" onclick="query('上海')">上海特产</a> 
                        </div>
                    </div>
                </div>
                </form>
            </div>
            <div class="clumn">
                <div class="clumn_tit t03"><span>游览历史记录</span><a href="#">更多>></a></div>
                <div class="clumn_con">
                    <ul class="clu_ul s_ul">
                        <li><a href="#">日本航空·大阪自由行5日    </a><span>¥3152</span></li>
                        <li><a href="#">日本航空·名古屋自由行4日  </a><span>¥3129</span></li>
                        <li><a href="#">购物·东京涉谷原宿自由行5日</a><span>¥5880</span></li>
                        <li><a href="#">日本航空·大阪自由行5日    </a><span>¥3152</span></li>
                        <li><a href="#">日本航空·名古屋自由行4日  </a><span>¥3129</span></li>
                        <li><a href="#">购物·东京涉谷原宿自由行5日</a><span>¥5880</span></li>
                        <li><a href="#">日本航空·大阪自由行5日    </a><span>¥3152</span></li>
                        <li><a href="#">日本航空·名古屋自由行4日  </a><span>¥3129</span></li>
                        <li><a href="#">购物·东京涉谷原宿自由行5日</a><span>¥5880</span></li>
                    </ul>
                </div>
            </div>
        </div>        
       <div id="specialtyDate"></div>
    </div>
</div>
<%@ include file="/WEB-INF/page/common/foot.jsp" %>
</body>
<script type="text/javascript">
//加载数据 
		$(function(){
			$("#specialtyDate").load("${path }/specialty/getSpecialtyData");
		})
		
		function queryPage(page){
			var index = layer.load(1, {shade: false});
			$("#specialtyDate").load("${path }/specialty/getSpecialtyData",buildQuery(page),function(){
				layer.closeAll();
			});
		}
		
		function buildQuery(page){
			var query = {};
			query.page = typeof(page) == "undefined"?1:page;
			query.origin = $("#region").val();
			return query;
		}
		
		function query(val) {
			$("#region").val(val);
			queryPage();
		}
		</script>
</html>