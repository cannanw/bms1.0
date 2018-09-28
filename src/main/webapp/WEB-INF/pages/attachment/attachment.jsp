<%@ page  contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="basePath" value="${pageContext.request.contextPath}"></c:set>
<script type="text/javascript" src="${basePath}/bms/attach/attach.js"></script>
<script type="text/javascript" src="${basePath}/bms/common/page.js"></script>
<section class="wrapper">
	<h3><i class="fa fa-angle-right"></i> 附件管理</h3>

	<!-- BASIC FORM ELELEMNTS -->
	<div class="row mt">
		<div class="col-lg-12">
			<form method="post" id="uploadFormId"
				  enctype="multipart/form-data">
				<!-- 查询表单 -->
				<div class="row page-search">
				 <div class="col-md-12">
					<ul class="list-unstyled list-inline">
						<li><input type="text" name="title" id="attachTitle" class="form-control"placeholder="附件标题"></li>
						<li><input type="file" name="mFile" class="form-control"></li>
						<li class='O1'><button type="button" class="btn btn-primary btn-upload" >上传</button></li>
					</ul>
				  </div>
				</div>
				<!-- 列表显示内容 -->
				<div class="row col-md-12">
					<table class="table table-bordered">
						<thead>
							<tr>
							   <th>标题</th>
								<th>文件名</th>
								<th>文件类型</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody id="tbodyId"></tbody>
					</table>
				</div>
			</form>
		</div>
	</div>
</section>





