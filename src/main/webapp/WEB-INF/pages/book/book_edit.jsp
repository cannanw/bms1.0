<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
    //初始化datepicker对象
    $('.datepicker').datepicker({
        format: 'yyyy/mm/dd',
        autoclose: true//选中自动关闭
    })
</script>
<form  class="form-horizontal" role="form" id="editFormId">
    <div class="form-group">
        <label for="bName" class="col-sm-2 control-label" >书名:</label>
        <div class="col-sm-10">
            <input type="text" class="form-control required"  id="bName"  placeholder="请输入书名">
        </div>
    </div>
    <div class="form-group">
        <label for="isbn" class="col-sm-2 control-label">书号(ISBN):</label>
        <div class="col-sm-10">
            <input type="text" class="form-control required" id="isbn">
        </div>
    </div>
    <div class="form-group">
        <label for="bClass"  class="col-sm-2 control-label">类别:</label>
        <div class="col-sm-10">
            <input type="text" id="bClass" readonly="readonly" placeholder="一级分类"
                   class="form-control required dynamicClear load-book-type" style="cursor: pointer;">
        </div>
    </div>
    <div class="form-group">
        <label for="author"  class="col-sm-2 control-label">作者:</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="author">
        </div>
    </div>
    <div class="form-group">
        <label for="press"  class="col-sm-2 control-label">出版社:</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="press">
        </div>
    </div>
    <div class="form-group">
        <label for="publishTime" class="col-sm-2 control-label">出版时间:</label>
        <div class="col-sm-10">
            <input type="text" class="form-control datepicker " id="publishTime">
        </div>
    </div>
    <div class="form-group">
        <label for="price" class="col-sm-2 control-label">单价:</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="price">
        </div>
    </div>
    <div class="form-group">
        <label for="num" class="col-sm-2 control-label">数量:</label>
        <div class="col-sm-10">
            <input type="text" class="form-control " id="num">
        </div>
    </div>
    <div class="form-group">
        <label for="bookshelfNum"  class="col-sm-2 control-label">书架:</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="bookshelfNum">
        </div>
    </div>
    <div class="form-group">
        <label class="col-md-2 control-label"> 状态: </label>
        <div class="col-md-10">
            <label class="radio-inline"><input  type="radio" name="state" checked value="1" > 可借阅</label>
            <label class="radio-inline"><input  type="radio" name="state" value="0"> 不可借</label>
        </div>
    </div>
</form>

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
<c:url var="url" value="/bms/book/book_edit.js"/>
<script type="text/javascript" src="${url}"></script>