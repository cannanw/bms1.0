/**
 * 此js是用户进行点击添加或修改操作后，弹出模态框之后
 * 对模态框页面进行操作
 */

var zTree;
var setting = {
    data : {
        simpleData : {
            enable : true,
            idKey : "id",  //节点数据中保存唯一标识的属性名称
            pIdKey : "parentId",  //节点数据中保存其父节点唯一标识的属性名称
            rootPId : null  //根节点id
        }
    }
}

/**
 * 在modal上注册事件
 */
$(document).ready(function () {
    $("#editFormId").on("click",".load-book-type",doLoadZTreeNodes);
    $('#myModal')
        //在modal的ok上注册单击事件
        .on('click','.modalOk',doSaveOrUpdate);
    $('#myModal')
        .on('hidden.bs.modal',function () {
            $('#myModal')
                //取消modal单击事件，因为多次利用绑定会造成事件的叠加
                .off('click','.modalOk')
                .removeData("bId");
        });
    $("#typeLayer")
        .on("click",".btn-cancle",doHideZtree)
        .on("click",".btn-confirm",doSetSelectedNode);
    //获取绑定在修改页面上的id
    var bId = $('#myModal').data("bId");
    if(bId){
        doFindObjectById(bId);
    }
});

/**
 * 请求获取所要修改的图书信息
 */
function doFindObjectById(bId) {
    var url = "book/doGetObjectById.do";
    var param = {"bId":bId};
    $.getJSON(url,param,function (result) {
        if(result.state==0){
            alert(result.message);
        }else if(result.state==1){
            doInitFormData(result.data);
        }
    });
}
/*初始化表单信息*/
function doInitFormData(data) {
    $('#bName').val(data.bName);
    $('#isbn').val(data.isbn);
    $('#bClass').val(data.bClass);
    $('#author').val(data.author);
    $('#press').val(data.press);
    $('#publishTime').val(data.publishTime);
    $('#price').val(data.price);
    $('#num').val(data.num);
    $('#bookshelfNum').val(data.bookshelfNum);
    $('#editFormId input[name="state"]').each(function () {
       if($(this).val() == data.state){
           $(this).attr('checked',true);
       }
    });
}

/*保存更新书籍信息*/
function doSaveOrUpdate() {
    //验证表单信息是否为空
    // if(!$('#editFormId').valid()){
    //     alert('请填写完整的表单信息');
    //     return;
    // }
    //获取页面数据
    var params = getEditFormData();
    //判断请求类型
    var insertUrl = "book/doSaveObject.do";
    var updateUrl = "book/doUpdateObject.do";
    var id = $('#myModal').data("bId");
    var url = id?updateUrl:insertUrl;
    if(id){
        params.bId = id;
    }
    //进行异步请求提交数据
    $.post(url,params,function(result){
        if(result.state == 1){
            //保存成功，隐藏modal
            $('#myModal').modal('hide');
            //重新查询数据
            doGetObjects();
        }else {
            //保存失败，显示错误信息
            alert(result.message);
        }
    });
}

/*获取编辑页面的数据*/
function getEditFormData(){
    var params = {
        bName : $("#bName").val(),
        isbn : $("#isbn").val(),
        bClass : $("#bClass").val(),
        author : $("#author").val(),
        press : $("#press").val(),
        publishTime : $("#publishTime").val(),
        price : $("#price").val(),
        num : $("#num").val(),
        bookshelfNum : $("#bookshelfNum").val(),
        state : $('#editFormId input[name="state"]:checked').val()
    };
    return params;
}

/*设置选中的节点*/
function doSetSelectedNode(){
    //1.获得选中的的节点对象
    var selectedNodes=//返回值是一个数组
        //getSelectedNodes是zTree中的一个函数
        zTree.getSelectedNodes();
    //2.获得具体的节点(node)对象
    var node=selectedNodes[0];
    //3.通过node节点数据更新页面内容
    $("#bClass").val(node.name);
    $("#editTypeForm").data("parentId",node.id);
    //4.隐藏zTree
    doHideZtree();
}
/**隐藏Ztree*/
function doHideZtree(){
    $("#typeLayer").css("display","none");
}

/**显示Ztree以及树上的节点信息*/
function doLoadZTreeNodes() {
//1.显示Ztree(在type_edit.jsp页面上默认是隐藏的)
    $("#typeLayer").css("display", "block");
//2.发送异步请求加载分类信息,更新Ztree节点内容
    var url = "type/doFindZtreeObjects.do"
    $.getJSON(url, function (result) {
        console.log("result=" + JSON.stringify(result))
        if (result.state == 1) {
            //访问zTree方法通过数据初始化节点信息
            zTree = $.fn.zTree.init($("#typeTree"), setting, result.data);
        } else {
            alert(result.message);
        }
    });
}