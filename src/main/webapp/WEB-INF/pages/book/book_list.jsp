<%@ page  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="basePath" value="${pageContext.request.contextPath}"></c:set>
<script type="text/javascript" src="${basePath}/bms/book/book_list.js"></script>
<script type="text/javascript" src="${basePath}/bms/common/page.js"></script>

<section class="wrapper">
	<h3><i class="fa fa-angle-right"></i> 书籍信息管理</h3>

	<!-- BASIC FORM ELELEMNTS -->
	<div class="row mt">
		<div class="col-lg-12">

			<!-- 表单 -->
			<form method="post" id="queryFormId">
				<!-- 查询表单 -->
				<div class="row page-search">
					<div class="col-md-12">
						<ul class="list-unstyled list-inline">
							<li><input type="text" id="searchNameId" class="form-control"placeholder="书名"></li>
							<li><select id="searchStateId" class="form-control">
								<option id="optionDefault" value="">选择状态</option>
								<option value="1">可借阅</option>
								<option value="0">不可借</option>
							</select></li>
							<li class='O1'><button type="button" class="btn btn-primary btn-search">查询</button></li>
							<li class='O2'><button type="button" class="btn btn-primary btn-add">添加</button></li>
							<li class='O3'><button type="button" class="btn btn-primary btn-delete">删除</button></li>
							<li class='O4'><button type="button" class="btn btn-primary btn-instate">不可借</button></li>
							<li class='O5'><button type="button" class="btn btn-primary btn-state">可借阅</button></li>
						</ul>
					</div>
				</div>
				<!-- 列表显示内容 -->
				<div class="row col-md-12">
					<table class="table table-striped table-advance table-hover">
						<thead>
						<tr>
							<th>选择</th>
							<th>书号</th>
							<th>书名</th>
							<th>类别</th>
							<th>作者</th>
							<th>出版社</th>
							<th>出版时间</th>
							<th>单价</th>
							<th>数量</th>
							<th>书架</th>
							<th>状态</th>
						</tr>
						</thead>
						<!-- ajax异步获得,并将数据填充到tbody中 -->
						<tbody id="tbodyId">
						</tbody>
					</table>
					<%@include file="../common/page.jsp" %>
				</div>
			</form>
		</div>
	</div>
</section>
