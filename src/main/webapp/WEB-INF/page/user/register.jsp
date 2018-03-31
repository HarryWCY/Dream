<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>会员注册</title>

<link href="${path }/bootstrap/css/bootstrap.css" rel="stylesheet"type="text/css" />
<script src="${path }/bootstrap/js/bootstrap.min.js"></script>
<!-- 注册验证 -->
<link href="${path }/css/bootstrapValidator.min.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="${path }/js/bootstrapValidator.min.js"></script>

<link href="${path }/css/style.css" rel="stylesheet" type="text/css" />
<link href="${path }/css/common.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${path }/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="${path }/js/layer/layer.js"></script>
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
<%@ include file="/WEB-INF/page/user/mainNav.jsp" %>

<div class="b_wrap">
    <div class="current"><span>当前所在地：</span><a href="中国梦想游首页.html">首页</a>  >> <a href="${path }/register">会员注册</a></div>
    <div class="regin_w clearfix">
        <div class="regin_con">
            <div class="regin">
              <div class="tab_menu regin_menu">
                <ul class="regin_ul">
                    <li class="selected">手机注册</li>
                </ul>
              </div>
              <div class="tab_box"> 
                   <div class="regin_tw">
                   <form id="registerForm" action="#" method="post" role="form">
                        <table width="650" border="0" cellspacing="0" cellpadding="0">
                        
                          <tr>
                            <td width="62">用户名：</td>
                            <td width="588"><input class="rg_in" type="text" name="userName" value="" placeholder=""></td>
                          </tr>
                          <tr>
                            <td width="62">真实姓名：</td>
                            <td width="588"><input class="rg_in" type="text" name="realName" value="" placeholder=""></td>
                          </tr>
                          <tr>
                            <td>手机号码：</td>
                            <td><input class="rg_in" type="text" name="phone" value="" placeholder=""></td>
                          </tr>
                          <tr>
                            <td>登录密码：</td>
                            <td><input class="rg_in" type="password" name="password" value="" placeholder=""></td>
                          </tr>
                          <tr>
                            <td>确认密码：</td>
                            <td><input class="rg_in" type="password" name="rePassword" value="" placeholder=""></td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                            <td><input type="checkbox" name="type" value="0"> 愿意接受旅游资讯免费信息 </td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                            <td><input type="button" onclick="registerHandler()" value="同意协议并注册"/></td>
                          </tr>
                        </table>
                        </form>
                        <div class="pdv_class" title="内容标题" style="width:650px;height:160px;z-index:12; overflow-y:auto;overflow-x:hidden;">
						<div  class="pdv_content" style="overflow:visible;width:100%;">
						<div class="pdv_border" style="margin:0;padding:0px;height:100%;">
						    <div style="height:25px;margin:1px;display:none;background:;">
						        
						    </div>
						<div class="contentDetail">
						<div class="step0" style="display: block;">
						                                           <p class="st_tit"><<中国梦想游会员协议>></p>
						<div class="stp01"><p>一、服务条款
						中国梦想游提供的服务将完全按照其发布的使用协议、服务条款和操作规则严格执行。为获得途牛服务，服务使用人（以下
						称"会员"）应当同意本协议的全部条款并按照页面上的提示完成全部的注册程序。</p></div>
						<div class="stp01"><p>一、服务条款
						中国梦想游提供的服务将完全按照其发布的使用协议、服务条款和操作规则严格执行。为获得途牛服务，服务使用人（以下
						称"会员"）应当同意本协议的全部条款并按照页面上的提示完成全部的注册程序。</p></div>
						<div class="stp01"><p>一、服务条款
						中国梦想游提供的服务将完全按照其发布的使用协议、服务条款和操作规则严格执行。为获得途牛服务，服务使用人（以下
						称"会员"）应当同意本协议的全部条款并按照页面上的提示完成全部的注册程序。</p></div>
						<div class="stp01"><p>一、服务条款
						中国梦想游提供的服务将完全按照其发布的使用协议、服务条款和操作规则严格执行。为获得途牛服务，服务使用人（以下
						称"会员"）应当同意本协议的全部条款并按照页面上的提示完成全部的注册程序。</p></div>
						<div class="stp01"><p>一、服务条款
						中国梦想游提供的服务将完全按照其发布的使用协议、服务条款和操作规则严格执行。为获得途牛服务，服务使用人（以下
						称"会员"）应当同意本协议的全部条款并按照页面上的提示完成全部的注册程序。</p></div>
						<div class="stp01"><p>一、服务条款
						中国梦想游提供的服务将完全按照其发布的使用协议、服务条款和操作规则严格执行。为获得途牛服务，服务使用人（以下
						称"会员"）应当同意本协议的全部条款并按照页面上的提示完成全部的注册程序。</p></div>
						<div class="stp01"><p>一、服务条款
						中国梦想游提供的服务将完全按照其发布的使用协议、服务条款和操作规则严格执行。为获得途牛服务，服务使用人（以下
						称"会员"）应当同意本协议的全部条款并按照页面上的提示完成全部的注册程序。</p></div>
						</div>
						</div>
						</div>
						
						</div>
						</div>
                   </div>
                   <div class="hide regin_tw">抱歉啦还没有开通</div>
              </div>
            </div>
        </div>
        <div class="regin_info">
            <p class="if_t"><b>为什么选择中国梦想游</b></p>
            <div>
                <div class="if_tit"><img src="${path }/images/dj_01.jpg"> 低价、放心</div>
                <p>低价保证、无零负团费、无特殊附加
                费、9大出游保障。</p>
            </div>
            <div>
                <div class="if_tit"><img src="${path }/images/ff_01.jpg"> 产品丰富</div>
                <p>8万+旅游产品，涵盖跟团、自助、自
                驾、邮轮、公司游等，总有一款适合您。</p>
            </div>
            <div>
                <div class="if_tit"><img src="${path }/images/xx_01.jpg"> 300万游客的选择</div>
                <p>累计服务300万人次，60万真实点评，
                2万原创游记。</p>
            </div>
            <div>
                <div class="if_tit"><img src="${path }/images/fw_01.jpg"> 更多服务</div>
                <p>全国15个出发城市，7X24小时服务</p>
            </div>
            <center><img src="${path }/images/zc_img0.jpg"></center>
        </div>
    </div>
</div>
<%@ include file="/WEB-INF/page/common/foot.jsp" %>
</body>
<script type="text/javascript">
function registerHandler() {
	var data = $("#registerForm").serialize();
	$.ajax({
		url:"${path }/user/registerHandler",
		data:data,
		type:"post",
		success:function(msg){
			//判断是否注册成功
			if(msg == "101"){
				layer.msg("注册成功",{icon:1},function() {
					window.location.href = "${path}/user/login";
				});
				return;
			}else if(msg == "102"){
				layer.alert("用户名已存在");
				return false;
			}else{
				layer.alert(msg);
				return false;
			}
		}
	});
}
	$(document).ready(function() {
						$("#registerForm").bootstrapValidator({
											message : 'This value is not valid',
											feedbackIcons : {
												valid : 'glyphicon glyphicon-ok',
												invalid : 'glyphicon glyphicon-remove',
												validating : 'glyphicon glyphicon-refresh'
											},
											fields : {
												userName : {
													message : '用户名无效',
													validators : {
														notEmpty : {
															message : '用户名不能为空'
														},
														stringLength : {
															min : 6,
															max : 30,
															message : '用户名必须在6~30个字符之间'
														},
														regexp : {
															regexp : /^[a-z][a-zA-Z0-9]+$/,
															message : '用户名只能是小写字母开头,不能有中文'
														}

													}
												},

												password : {
													message : '密码无效',
													validators : {
														notEmpty : {
															message : '密码不能为空'
														},
														stringLength : {
															min : 6,
															max : 20,
															message : '密码必须在6~20个字符之间'
														},
														different : {
															field : 'userName',
															message : '密码不能和用户名一样'
														}

													}
												},

												rePassword : {
													message : '密码无效',
													validators : {
														notEmpty : {
															message : '密码不能为空'
														},

														identical : {
															field : 'password',
															message : '两次密码输入不一致'
														},
														different : {
															field : 'userName',
															message : '密码不能和用户名一样'
														}

													}
												},
												 realName : {
													message : '真实姓名无效',
													validators : {
														notEmpty : {
															message : '真实姓名不能为空'
														},
														regexp : {
															regexp : /^([\u4e00-\u9fa5]{1,20}|[a-zA-Z\.\s]{1,20})$/,
															message : '名字格式不正确'
														}
													}
												}, 
												phone : {
													message : '电话无效',
													validators : {
														notEmpty : {
															message : '电话不能为空'
														},
														regexp : {
															regexp : /^[1][3,4,5,7,8,9][0-9]{9}$/,
															message : '电话格式不正确'
														}

													}
												}

											}

									});
					});
</script>
</html>