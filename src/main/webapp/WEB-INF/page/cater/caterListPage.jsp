<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/page/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="${path }/dist/css/bootstrap.css" />
	</head>
	<body>
		<div class="tab_box">
		<div class="tab_ul">

			<c:forEach items="${page.datas }" var="cat">
				<div class="clearfix tab_d">
					<div class="fn-left">
						<img style="width: 260px; height: 195px" src="${path }/img/${cat.image}">
					</div>
					<div class="tab_con">
						<p>
							<b>${cat.caterName }</b>
						</p>
						<p>
							推荐星级：<img src="${path }/img/${cat.lv}">
						</p>
						<p>联系方式：${cat.phone }</p>
						<p>城市：${cat.city } 地址：${cat.address }</p>
						<p>
							<a href="${path }/cater/caterDetail?id=${cat.id }"><img
								src="${path }/images/more)).jpg"></a>
						</p>
					</div>
				</div>
				<div class="line_b"></div>
			</c:forEach>
			<!-- 分页界面开始 -->
			<div class="container">
				<div class="">
					<div class="col-md-12">
						<ul class="pagination">
							<li><a href="javascript:;" onclick="queryPage(1)">首页</a></li>
							<li class="${page.current eq page.first ? 'disabled':'' }"><a
								href="#" onclick="queryPage(${page.previous})">&laquo;</a></li>
							<c:forEach begin="1" end="${page.pageNum }" var="pages">
								<li class="${page.current eq pages ? 'active':'' }"><a
									href="#" onclick="queryPage(${pages})">${pages}</a></li>
							</c:forEach>
							<li class="${page.current eq page.last ? 'disabled':'' }"><a
								href="#" onclick="queryPage(${page.next})">&raquo;</a></li>
							<li><a href="#" style="border: 1px solid #ddd;"
								onclick="queryPage(${page.pageNum})">尾页</a></li>
							<li><a style="border: 0px; margin-left: 0px;">当前页${page.current }/${page.pageNum }总页</a></li>
							<li > 跳转到第 <input id="page"  type="text" size="1" > 页  
                      		<button onclick="TiJiao()" class="btn btn-info btn-search" >确定</button></li>  
						</ul>
					</div>
				</div>
			</div>
			<!-- 分页界面结束 -->
		</div>
	</div>
	</body>
	<script type="text/javascript">
	function TiJiao(){  
	        var regPage = /^[1-9]*$/;  
	        var page = $('#page').val();
	        $("#caterData").load("${path }/cater/getCaterData",buildQuery(page),function(){
				layer.closeAll();
			});
	    }; 
	</script>
</html>