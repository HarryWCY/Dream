<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/page/common/taglib.jsp" %>
<div class="mainNav clearfix">
		<ul class="Nav_ul">
			<li ><a href="${path }/index">首页</a><img
				src="${path }/images/nav_line.jpg"></li>
			<li><a href="${path }/route/routeList">旅游路线</a><img
				src="${path }/images/nav_line.jpg"></li>
			<li     class="cur"><a href="${path }/sights/sightsList">旅游景点</a><img
				src="${path }/images/nav_line.jpg"></li>
			<li><a href="${path }/cater/caterList">餐饮住宿</a><img
				src="${path }/images/nav_line.jpg"></li>
			<li><a href="${path }/specialty/specialtyList">地方特产</a><img
				src="${path }/images/nav_line.jpg"></li>
			<c:if test="${!empty user}">
			<li><a href="${path }/user/member">会员中心</a><img
				src="${path }/images/nav_line.jpg"></li>
			</c:if>
		</ul>
	</div>