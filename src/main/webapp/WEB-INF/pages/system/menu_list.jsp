<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri= "http://java.sun.com/jsp/jstl/core" prefix= "c" %> 
<c:set var="basePath" value="${pageContext.request.contextPath}"></c:set>
<section class="wrapper site-min-height">
	<h3><i class="fa fa-angle-right"></i> 菜单信息管理</h3>
	<div class="row mt">
		<div class="col-lg-12">
			<p class="content">
				<form method="post" id="formHead">
					<!-- 查询表单 -->
					<div class="row page-search">
					 <div class="col-md-12">
						<ul class="list-unstyled list-inline">
							<li class='O1'><button type="button" class="btn btn-primary btn-add">新增</button></li>
							<li class='O2'><button type="button" class="btn btn-primary btn-update">修改</button></li>
							<li class='O3'><button type="button" class="btn btn-primary btn-delete">删除</button></li>
						</ul>
					  </div>
					</div>
					<!-- 列表显示内容 -->
					<div class="row col-md-12">
						<table id="menuTable" data-click-to-select="true">
							<thead>
							<tr>
								<th data-field="selectItem" data-checkbox="true"></th>
							</tr>
							</thead>
						</table>
					</div>
				</form>
		</div>
    </div>
</section>
<script type="text/javascript" src="${basePath}/bms/system/menu_list.js"></script>