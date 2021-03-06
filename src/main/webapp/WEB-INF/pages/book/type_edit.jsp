<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="basePath" value="${pageContext.request.contextPath}"></c:set>
<section class="wrapper">
	<!--<h3 id="titleId"><i class="fa fa-angle-right"></i> 分类管理</h3>-->

	<!-- BASIC FORM ELELEMNTS -->
	<div class="row mt">
		<div class="col-lg-12">
		  <form class="form-horizontal" id="editTypeForm">
					<div class="form-group">
						<div class="col-sm-2 control-label">分类名称：</div>
						<div class="col-sm-10">
							<input type="text" id="typeNameId"  placeholder="分类名称" class="form-control dynamicClear required">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-2 control-label">上级分类：</div>
						<div class="col-sm-10">
							<input type="text" id="parentNameId" readonly="readonly" placeholder="一级分类"
								class="form-control required dynamicClear load-book-type" style="cursor: pointer;">
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-2 control-label">排序号：</div>
						<div class="col-sm-10">
							<input type="number" id="typeSortId" placeholder="排序号" class="form-control required dynamicClear">
						</div>
					</div>
						<div class="form-group">
						<label for="noteId" class="col-sm-2 control-label">备注:</label>
						<div class="col-sm-10">
						<textarea class="form-control"  id="typeNoteId"></textarea>
					   </div>
					</div>
				</form>
			</div>
		</div>
</section>

		<!-- 选择菜单 -->
		<div class="layui-layer layui-layer-page layui-layer-molv layer-anim" id="typeLayer" type="page" times="2" showtime="0" contype="object"
			style="z-index: 19891016; width: 300px; height: 450px; top: 100px; left: 500px; display:none">
			<div class="layui-layer-title" style="cursor: move;">选择菜单</div>
			<div class="layui-layer-content" style="height: 358px;">
				<div style="padding: 10px;" class="layui-layer-wrap">
					<ul id="typeTree" class="ztree"></ul>    <!-- 动态加载树 -->
				</div>
			</div>
			<span class="layui-layer-setwin"> <a class="layui-layer-ico layui-layer-close layui-layer-close1 btn_cancle" ></a></span>
			<div class="layui-layer-btn layui-layer-btn-">
				<a class="layui-layer-btn0 btn-confirm">确定</a>
				<a class="layui-layer-btn1 btn-cancle">取消</a>
			</div>
		</div>

<script type="text/javascript" src="${basePath}/bms/book/type_edit.js"></script>




