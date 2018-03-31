<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>会员修改密码</title>
<link href="${path }/css/style.css" rel="stylesheet" type="text/css" />
<link href="${path }/css/common.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${path }/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="${path }/js/layer/layer.js"></script>
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
            	<div class="fmr1_top">修改密码</div>
                <div class="fmr1_m">
                	<div class="fcard">
                	<form id="updatepwdForm" action="#" method="post" role="form">
                    	<table border="0" cellpadding="0" cellspacing="0" width="636">
                        	<%-- <tr>
                            	<td align="right" height="30">请输入账号当前的密码：</td>
                                <td align="left" height="30"><input type="text" value="${user.password }" class="finput3"></td>
                            </tr> --%>
                            <tr><td><input name="id" type="hidden"></td></tr>
                            <tr>
                            	<td align="right" height="30">请输入要修改的密码：</td>
                                <td align="left" height="30"><input name="password" type="password" class="finput3"></td>
                            </tr>
                            <tr>
                            	<td align="right" height="30">请确认要修改的密码：</td>
                                <td align="left" height="30"><input name="rePassword" type="password" class="finput3"></td>
                            </tr>
                            <tr>
                            	<td colspan="2" align="center" valign="middle" height="50"><input type="button" onclick="updatepwdHandler()"  value="确认修改"></td>
                            </tr>
                        </table>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="/WEB-INF/page/common/foot.jsp" %>
</body>
<script type="text/javascript">
		function updatepwdHandler() {
			var data = $("#updatepwdForm").serialize();
			$.ajax({
				url:"${path }/user/updatepwdHandler",
				data:data,
				type:"post",
				success:function(msg){
					//判断密码是否修改成功
					if(msg == "101"){
						layer.msg("修改成功",{icon:1},function() {
							window.location.href = "${path}/user/login";
						});
						return;
					}else{
						layer.alert(msg);
						return false;
					}
				}
			});
		}
	</script>	
</html>