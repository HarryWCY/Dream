<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/page/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
<title>中国梦想游--地方特产页</title>
<link href="${path }/css/style.css" rel="stylesheet" type="text/css" />
<link href="${path }/css/common.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${path }/js/jquery-1.9.1.min.js"></script>
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
    <div class="current"><span>当前所在地：</span><a href="${path }/specialty/specialtyList">地方特产</a>>> <a href="${path }/specialty/specialtyDetail?id=${specialty.id}">${specialty.specialtyName}</a> </div>
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
        </div>
       <div class="clumn_r">
            <div class="tc_tit">商品详情</div>
            <div class="xq_wrap clearfix">
              <div class="xq_left"><img src="${path }/img/${specialty.image}" style="width: 370px;height: 330px"></div>
              <div class="xq_right">
                <div class="xq_detail">
                  <p class="xq_t"><b>【${specialty.origin }特产】${specialty.specialtyName }</b></p>
                  <p class="xq_xs"><span>${specialty.introduce }</span></p>
                  <p><b>优惠价：<span>¥ ${specialty.preferentialPrice }</span></b></p>
                  <p class="zg_price">专柜价格 ¥ ${specialty.shopPrice }</p>
                  <p>净含量${specialty.weight }g </p>
                  <p>配送：${specialty.distribution } </p>
                  <p>快递: ${specialty.courierFees }  </p>
                  <p>月销量：${specialty.monthlySales }件  </p>
                  <p>评价：${specialty.evaluation }分  累计评价${specialty.evalCount }</p>
                </div>
                <div class="share">
                  <img src="${path }/images/share.jpg" >分享给朋友：
                  <a href="#"><img src="${path }/images/s01.jpg" ></a> 
                  <a href="#"><img src="${path }/images/s02.jpg" ></a>
                  <a href="#"><img src="${path }/images/s03.jpg" ></a> 
                  <a href="#"><img src="${path }/images/s04.jpg"></a>
                  <a href="#"><img src="${path }/images/s05.jpg"></a> 
                  <a href="#"><img src="${path }/images/s06.jpg"></a>
                </div>
                <div class="xq_button"><a href="地方特产—拍下商品.html"><img src="${path }/images/buy_button.jpg"></a> <a href="地方特产—拍下商品.html"><img src="${path }/images/shop_button.jpg"></a></div>
              </div>
            </div>
            <div class="xq_wrap">
              <div class="tab_menu xq_menu">
                <ul class="xq_ul">
                    <li class="selected">商品详情</li>
                    <li>用户评论</li>
                </ul>
              </div>
              <div class="tab_box"> 
                   <div class="tab_w">
                     <table class="tab_con" width="670" border="0" cellspacing="0" cellpadding="0">
                       <caption>品牌名称：${specialty.specialtyName }</caption>
                       <tbody>
                         <tr>
                           <td>产品参数：${specialty.productParamenters } </td>
                           <td>产品标准号：${specialty.productCode }</td>
                         </tr>
                         <tr>
                           <td>厂名：${specialty.factoryName }</td>
                           <td> 厂址：${specialty.factoryAddress }</td>
                         </tr>
                         <tr>
                           <td>厂家联系方式：${specialty.factoryPhone } </td>
                           <td>配料表：${specialty.burdenSheet }</td>
                         </tr>
                         <tr>
                           <td>储藏方法：${specialty.stroageMetod } </td>
                           <td>保质期：${specialty.expirationDate } 天</td>
                         </tr>
                         <tr>
                           <td>食品添加剂：${specialty.foodAdditives }</td>
                           <td>包装方式: ${specialty.paching }</td>
                         </tr>
                         <tr>
                           <td>系列: ${specialty.series }</td>
                           <td>商品条形码: ${specialty.barCode }</td>
                         </tr>
                         <tr>
                           <td>重量(g): ${specialty.weight }</td>
                           <td>是否为有机食品: ${specialty.organism }</td>
                         </tr>
                         <tr>
                           <td>等级: ${specialty.rank } </td>
                           <td> 产地: ${specialty.origin }</td>
                         </tr>
                         <tr>
                           <td>生产日期: <fmt:formatDate value="${specialty.productDate}" pattern="yyyy-MM-dd"/></td>
                           <td></td>
                         </tr>
                       </tbody>
                     </table>
                     <img src="${path }/img/${specialty.image}">
                     <img src="${path }/img/${specialty.image}">
                     <img src="${path }/img/${specialty.image}">
                   </div>
                   <div class="hide">dhgjfd</div>
              </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="/WEB-INF/page/common/foot.jsp" %>
</body>
</html>