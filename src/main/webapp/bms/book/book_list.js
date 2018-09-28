$(document).ready(function (){
	$('#queryFormId')
        .on('click', '.btn-state,.btn-instate', doStateById)
        .on('click','.btn-search',doQueryObjects)
	    .on('click','.btn-delete',doDeleteObjects)
        .on('click','.btn-add,.btn-update',doLoadEditPage);

	doGetObjects();
});

/*点击查询时调用*/
function doQueryObjects(){
	//1.初始化当前页码
	$('#pageId').data("pageCurrent",1);
	//2.获取项目信息并填充
	doGetObjects();
	//3.重置搜索输入框和选中框
	//$('#searchNameId').val('');
	//$('#optionDefault').prop("selected","selected");
}
/*点击删除时调用*/
function doDeleteObjects(){
	//1.根据选中的元素获取id
    var ids = "";
	$('#tbodyId input[name="checkedId"]').each(function () {
		if($(this).prop('checked')){
		    if(""==ids){
		        ids += $(this).val();
            }else{
		        ids +=","+$(this).val();
            }
        }
    });
    if(""==ids){
        alert("请至少选择一个");
        return;
    }
    //2.提示用户是否删除
    if(!confirm("确定删除所选?")){
        return;
    }
    //3.发出异步请求删除数据库信息
    var url="book/doDeleteObjects.do";
    var params={"ids":ids};
    $.post(url,params,function(result){
        //4.处理服务器返回信息,反馈执行结果
       if(result.state == 1){
           //5.刷新页面
           $('#pageId').data("pageCurrent",1);
           doGetObjects();
       }else {
           alert(result.message);
       }
    });
}
/*加载编辑页面*/
function doLoadEditPage() {
    if($(this).hasClass("btn-add")){
        var title = "添加图书信息";
    }
    if($(this).hasClass("btn-update")){
        var title = "修改图书信息";
        //将图书id绑定到modal chrome自动翻译页面改变页面元素结构 导致下代码取不到值
        $('#myModal').data("bId",$(this).parent().parent().data('id'));
    }
    var url = "book/editUI.do";
    $('#myModal .modal-body').load(url,function(){
        $('#myModalLabel').html(title);
        $('#myModal').modal('show');
    })

}

/*获取项目信息*/
function doGetObjects(){
	var url = "book/doGetPageObjects.do";
	var pageCurrent = $('#pageId').data("pageCurrent");
	if(!pageCurrent) pageCurrent=1;
	var params = {"pageCurrent":pageCurrent};
	params.name=$('#searchNameId').val();
	params.state=$('#searchStateId').val();
	//发送异步请求获取服务端数据
	$.getJSON(url,params,function (result){
		console.log(result);
		setTableBodyRows(result.data.list);
		setPagination(result.data.pageObject);
	});
}
/*将数据填充在table对象的body中*/
function setTableBodyRows(result){
	debugger
	//1.获得tbody
	var tbody = $('#tbodyId');
	//清空tbody
	//2.迭代数据集result
	tbody.empty();
	//for(var i in result)
	for(var i=0;i<result.length;i++){
		var tr = $('<tr></tr>');
		tr.data('id',result[i].bId);
		tr.append('<td><input type="checkbox" name="checkedId" value="'+result[i].bId+'"/></td>');
		tr.append('<td>'+result[i].isbn+'</td>');
		tr.append('<td>'+result[i].bName+'</td>');
		tr.append('<td>'+result[i].bClass+'</td>');
		tr.append('<td>'+result[i].author+'</td>');
		tr.append('<td>'+result[i].press+'</td>');
		tr.append('<td>'+result[i].publishTime+'</td>');
		tr.append('<td>'+result[i].price+'</td>');
		tr.append('<td>'+result[i].num+'</td>');
		tr.append('<td>'+result[i].bookshelfNum+'</td>');
		tr.append('<td>'+(result[i].state?"可借阅":"不可借")+'</td>');
		tr.append('<td><input type="button" class="btn btn-info btn-update" value="修改"/></td>');
		tbody.append(tr);
	}
}

function doStateById(){
    debugger
    //1.获得页面数据(valid,checkedIds)
    //1.1 获得valid的值(根据点击的按钮)
    var state;//定义一个变量(默认值undefined)
    //判定点击的按钮是启用还是禁用
    //hasClass用于判定对象上是否有某个选择器
    //$(this).attr("class"):课后了解此方法的含义及用法
    if($(this).hasClass("btn-state")){
        state=1;//表示启用
    }
    if($(this).hasClass("btn-instate")){
        state=0;//表示禁用
    }
    //1.2获得选中的id值(可能1个也可能是多个)
    var checkedIds=getCheckedIds();
    console.log("checkedIds="+checkedIds);
    if(checkedIds.length==0){
        alert("请至少选择一项");
        return;
    }
    //2.提交异步请求,更新对应记录的状态信息
    //2.1 定义url (对应控制器中的一个方法)
    var url="book/doStateById.do"
    //2.2 将数据封装为一个json对象
    var params={"checkedIds":checkedIds,"state":state};
    //2.3发起类型为post的ajax请求(类型为post)
    $.post(url,params,function(result){//回调函数
        //debugger
        //alert("result="+JSON.stringify(result));
        if(result.state==1){//异步请求成功了
            alert(result.message);//ok
            doGetObjects();//重新查询
        }else{//请求过程出现异常
            alert(result.message);
        }
    });
}
function getCheckedIds(){//1,2,3,4,5
    var checkedIds="";
    //1.遍历所有的checkbox,获得选中的值
    /*$('tbody input[name="checkedItem"]').
      each(function(){
         if($(this).is(":checked")){}//课后了解
      })
    */
    $('#tbodyId input[name="checkedId"]').each(function(){//each函数用于迭代对象
        //判定当前对象是否是选中的
        if($(this).prop("checked")){
            if(checkedIds==""){
                checkedIds+=$(this).val();//id
            }else{
                checkedIds+=","+$(this).val();
            }
        }
    });
    //2.返回获得的数据
    return checkedIds;
}
