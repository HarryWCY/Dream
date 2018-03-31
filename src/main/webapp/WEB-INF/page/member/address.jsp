<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/page/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的配送地址</title>
<link href="${path }/css/style.css" rel="stylesheet" type="text/css" />
<link href="${path }/css/common.css" rel="stylesheet" type="text/css" />
</head>
<body>
<%@ include file="/WEB-INF/page/common/head.jsp" %>
<%@ include file="/WEB-INF/page/member/mainNav.jsp" %>
<div class="b_wrap">
    <div class="current"><span>当前所在地：</span><a href="${path }/user/member">会员中心</a></div>
    <div class="fmember">
    	<div class="fmleft">
        	<div class="fmleft_top"><img src="${path }/images/fmbt1.png" border="0"></div>
            <div class="fmlist">
            	<ul>
                	<li class="f1">订单中心</li>
                	<li> >><a href="${path }/order">我的订单</a> </li>
                    <li> >><a href="会员中心 - 发布结伴同行.html">发布结伴同行</a> </li>
                    <li> >><a href="会员中心 - 我申请的结伴同行.html">我申请的结伴同行</a> </li>
                    <li> >><a href="会员中心 - 我的点评.html">我的点评</a> </li>
                    <li class="f2"> >><a href="会员中心 - 我的提问.html">我的提问</a> </li>
                </ul>
                <ul>
                	<li class="f1">我的优惠卡券</li>
                	<li> >><a href="会员中心 - 现金账号.html">现金账号</a> </li>
                    <li> >><a href="会员中心 - 抵用券.html">抵用券</a> </li>
                    <li class="f2"> >><a href="#">旅游券</a> </li>
                </ul>
                <ul>
                	<li class="f1">账户信息</li>
                	<li> >><a href="会员中心 - 个人资料.html">个人资料</a> </li>
                    <li> >><a href="会员中心 - 账户安全.html">账户安全</a> </li>
                    <li> >><a href="会员中心 - 我的积分.html">我的积分</a> </li>
                    <li> >><a href="${path }/user/updatepassword">修改密码</a> </li>
                    <li class="f2"> >><a href="${path }/user/address">配送地址</a> </li>
                </ul>
            </div>
        </div>
        <div class="fmright">
        	<div class="fmr1">
            	<div class="fmr1_top">配送地址</div>
                <div class="fmr1_m">
					<table border="1" cellpadding="0" cellspacing="0" bordercolor="#ddd" width="678" >
                    	<tr height="29" style="background:url(images/forbg1.png) repeat-x;">
                        	<td width="100" align="center" >收件人</td>
                            <td width="188" align="center">配送地址</td>
                            <td width="100" align="center">邮编</td>
                            <td width="100" align="center">手机</td>
                            <td width="188" align="center">操作</td>
                        </tr>
                        <c:forEach items="${address }" var="addr">
                        <tr height="29" >
                        	<td width="100" align="center" >${addr.userName }</td>
                            <td width="188" align="center">${addr.detail }</td>
                            <td width="100" align="center">${addr.postCode }</td>
                            <td width="100" align="center">${addr.phone }</td>
                            <td width="188" align="center"><span class="fspan10"><a href="${path }/user/updateaddress?id=${addr.id}">编辑</a> | <a href="${path }/user/deleteaddress?id=${addr.id}">删除</a> | 
                            <c:if test="${0 eq addr.defaul}" var="nodefaul"><a href="${path }/user/defaultaddress?id=${addr.id}">默认</a></c:if><c:if test="${!nodefaul}"><span>默认</span></c:if>
                            </span></td>
                        </tr>
                        </c:forEach>
                        <tr height="55">
                        	<td colspan="5" align="center" valign="middle"><a href="${path }/user/addaddress">添加新的配送地址</a></td>
                        </tr>
                    </table>                  
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="/WEB-INF/page/common/foot.jsp" %>
</body>
</html>