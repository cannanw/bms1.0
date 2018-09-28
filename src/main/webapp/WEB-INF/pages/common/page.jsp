<%@ page  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<span id="pageId">
		<a class="first">首页</a>
		<a class="pre">上一页</a>&nbsp;
		<a class="next">下一页</a>
		<a class="last">尾页</a>
		<a class="pageCount">总页数(1)</a>
		<a class="pageCurrent">当前页(1)</a>
		<a class="rowCount">共有条总记录</a>&nbsp;
		<input class="form-control" placeholder="页数" id="jumpPage" onkeyup="value=value.replace(/[^\d]/g,'') " onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))" style="height:27px;width:54px;display:inline-block;">
		<a class="jump">跳转至</a>
	</span>