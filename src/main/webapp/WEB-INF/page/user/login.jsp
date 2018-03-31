<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>会员登录页面</title>
<link href="${path }/css/style.css" rel="stylesheet" type="text/css" />
<link href="${path }/css/common.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${path }/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="${path }/js/layer/layer.js"></script>
</head>
<body>
<%@ include file="/WEB-INF/page/common/head.jsp" %>
<%@ include file="/WEB-INF/page/user/mainNav.jsp" %>
<div class="b_wrap">
    <div class="current"><span>当前所在地：</span><a href="中国梦想游首页.html">首页</a>  >> <a href="${path }/login">会员登录</a></div>
    <div class="login_w clearfix">
        <div class="login">
        <%!
				private String getCookieValue(Cookie[] cookies, String cookieName) {
					String cookieValue = null;
					if (cookies != null) {
						for (Cookie c : cookies) {
							if (cookieName.equals(c.getName())) {
								cookieValue = c.getValue();
								break;
							}
						}
					}
					return cookieValue;
				}
				%>
				<%
				String cookieValue = getCookieValue(request.getCookies(), "userInfo");
				String username = "";
				String password = "";
				boolean x = false;
				if (cookieValue != null) {
					username = cookieValue.split(":")[0];
					password = cookieValue.split(":")[1];
					x=true;
				}
				%>
            <div class="login_t">会员登录</div>
            <div class="login_con">
            <form id="loginForm" action="#" method="post" role="form">
                <table class="login_tab" width="270" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td>登录名：</td>
                    <td><input type="text" name="userName" value="<%=username %>" placeholder="请输入用户名"  ></td>
                  </tr>
                  <tr>
                    <td>密&nbsp;&nbsp;&nbsp;&nbsp;码：</td>
                    <td><input type="password" name="password" value="<%=password %>" placeholder="请输入密码" ></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td><input  type="checkbox" name="cookies" value="0" <c:if test="<%=x%>">checked</c:if>> 30天内自动登录</td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td><input type="button"  onclick="loginHandler()" value="登录"></input><input type="reset" value="重置"></td>
                  </tr>
                </table>
               </form>
            </div>
            <div class="login_b">
                <p>还不是梦想游会员？  <a class="free_zc" href="${path }/user/register">免费注册</a> </p>
                <p>使用合作网站帐号登录 </p>
                <p><a class="log_a01" href="#">新浪微博</a> <a class="log_a02" href="#">支付宝</a> <a class="log_a03" href="#">QQ帐号</a></p>
            </div>
        </div>
    </div>
</div>
<%@ include file="/WEB-INF/page/common/foot.jsp" %>
</body>
<script type="text/javascript">
		function loginHandler() {
			var data = $("#loginForm").serialize();
			$.ajax({
				url:"${path }/user/loginHandler",
				data:data,
				type:"post",
				success:function(msg){
					//判断是否登陆成功
					if(msg == "101"){
						layer.msg("登录成功",{icon:1},function() {
							window.location.href = "${path}/index";
						});
						return;
					}else if(msg == "102"){
						layer.alert("用户名或密码错误");
						return false;
					}else{
						layer.alert(msg);
						return false;
					}
				}
			});
		}
	</script>	
</html>