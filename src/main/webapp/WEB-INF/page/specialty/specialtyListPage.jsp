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
		<div class="clumn_r">
         <div class="tc_tit">地方特产</div>
            <div class="tc_wrap clearfix">
            <c:forEach items="${page.datas }" var="spe">
              <dl>
                <dt><a href="${path}/specialty/specialtyDetail?id=${spe.id}"><img src="${path }/img/${spe.image}" style="width: 160px;height: 124px"></a></dt>
                <dd>
                  <p class="d01"><a href="${path}/specialty/specialtyDetail?id=${spe.id}">【${spe.origin }特产】${spe.specialtyName }</a></p>
                  <p><span>${spe.introduce }</span></p>
                  <p>优惠价：<span>¥${spe.preferentialPrice }</span></p>
                </dd>
              </dl>
             </c:forEach>
        </div>
        <div >
			<div class="row text-center">
				<div class="col-md-12">
					<ul class="pagination">
						<li><a href="javascript:;" onclick="queryPage(1)">首页</a></li>
					    <li class="${page.current eq page.first ? 'disabled':'' }"><a href="#" onclick="queryPage('${page.previous}')">&laquo;</a></li>
					    <c:forEach begin="1" end="${page.pageNum }" var="pages">
						    <li class="${page.current eq pages ? 'active':'' }"><a href="#" onclick="queryPage('${pages}')" >${pages}</a></li>
					    </c:forEach>
					    <li class="${page.current eq page.last ? 'disabled':'' }"><a href="#" onclick="queryPage('${page.next}')">&raquo;</a></li>
					    <li><a href="#" style="border: 1px solid #ddd;" onclick="queryPage('${page.pageNum}')">尾页</a></li>
					    <li><a style="border: 0px;margin-left: 0px;">当前页${page.current }/${page.pageNum }总页</a></li>
					   <li > 跳转到第 <input id="page"  type="text" size="1" > 页  
                      <button onclick="TiJiao()" class="btn btn-info btn-search" >确定</button></li>  
				    </ul>
				</div>
			</div>
		</div>
	</div>
	</body>
	<script type="text/javascript">
	function TiJiao(){  
	        var regPage = /^[1-9]*$/;  
	        var page = $('#page').val();
	        $("#specialtyDate").load("${path }/specialty/getSpecialtyData",buildQuery(page),function(){
				layer.closeAll();
			});
	    }; 
	</script>
</html>