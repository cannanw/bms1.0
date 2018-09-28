<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri= "http://java.sun.com/jsp/jstl/core" prefix= "c" %> 
<c:set var="basePath" value="${pageContext.request.contextPath}"></c:set>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>BMS图书管理系统</title>

    <!-- Bootstrap core CSS -->
    <link href="${basePath}/assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="${basePath}/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        
    <!-- Custom styles for this template -->
    <link href="${basePath}/assets/css/style.css" rel="stylesheet">
    <link href="${basePath}/assets/css/style-responsive.css" rel="stylesheet">
  </head>

  <body>

      <!-- **********************************************************************************************************************************************************
      正文
      *********************************************************************************************************************************************************** -->

	  <div id="login-page">
	  	<div class="container">
	  	
		      <div class="form-login" >
		        <h2 class="form-login-heading">BMS图书管理系统</h2>
		        <!-- 显示用户错误信息 -->
		        <div class="alert alert-danger alert-dismissible" style="display:none">
			        <h4 style="margin-bottom: 0px;"><i class="fa fa-exclamation-triangle" id="errorMessage"></i></h4>
			    </div>
			    <!-- 登录表单 -->
		        <div class="login-wrap">
		            <input type="text" class="form-control" id="username" placeholder="User ID" autofocus>
		            <br>
		            <input type="password" class="form-control"  id="userpwd" placeholder="Password">
		            <label class="checkbox">
		                <span class="pull-right">
		
		                </span>
		            </label>
		            <button class="btn btn-theme btn-block" id="btn-login" ><i class="fa fa-lock"></i> 登录</button>
		            <hr>
		            
		            <div class="registration">
		                还没有账户?<br/>
		                <a data-toggle="modal" href="login.html#myModal">
		                    快来加入
		                </a>
		            </div>
		
		        </div>
		
		          <!-- Modal模态框—用于注册 -->
		          <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
		              <div class="modal-dialog">
		                  <div class="modal-content">
		                      <div class="modal-header">
		                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		                          <h4 class="modal-title">欢迎加入</h4>
		                      </div>
		                      <div class="modal-body">
		                          <p>请输入你的账号密码，用来完成注册</p>
		                          
		                           <!-- 显示用户错误信息 -->
							       <div class="alert alert-danger alert-dismissible" style="display:none">
								       <h4 style="margin-bottom: 0px;"><i class="fa fa-exclamation-triangle" id="rerrorMessage"></i></h4>
								   </div>
		                          
		                          <input type="text" class="form-control" id="rusername" placeholder="User ID" autofocus>
						          <br>
						          <input type="password" class="form-control"  id="ruserpwd" placeholder="Password">
		                     	
		                      </div>
		                      <div class="modal-footer">
		                          <button data-dismiss="modal" class="btn btn-default" type="button">取消</button>
		                          <button class="btn btn-theme" type="button" id="btn-register">提交</button>
		                      </div>
		                  </div>
		              </div>
		          </div>
		          <!-- modal -->
		
		      </div>	  	
	  	
	  	</div>
	  </div>

    <!-- 将js放在页面的最后，可以使页面加载更快 -->
     <script src="${basePath}/assets/js/jquery.js"></script>
     <script src="${basePath}/assets/js/bootstrap.min.js"></script>
    
    

    <!--BACKSTRETCH动态设置背景的插件-->
    <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->

    <script type="text/javascript" src="${basePath}/assets/js/jquery.backstretch.min.js"></script>
    <script>
        $.backstretch("${basePath}/assets/img/login-bg.jpg", {speed: 500});
    </script>
	<!-- 实现登录、注册功能的js
	<script type="text/javascript" src="${basePath}/bms/user/user_login_register.js"></script>-->


  </body>
</html>

<script type="text/javascript">
    $(document).ready(function(){
        //回车按钮
        $(document).keyup(function(event) {
            if (event.keyCode == 13) {
                //触发btn-login绑定的submit事件
                $("#btn-login").trigger("click");
            }
        });
        //点击登录按钮
        $('#btn-login').click(doLogin);
    })
    function doLogin(){
        debugger
        var userName = $('#username').val();
        var userPwd = $('#userpwd').val();
        if(userName==''){
            $('#errorMessage').parent().parent().css('display','block');
            $('#errorMessage').text('用户名不能为空！');
            return false;
        }
        if(userPwd==''){
            $('#errorMessage').parent().parent().css('display','block');
            $('#errorMessage').text('密码不能为空！');
            return false;
        }
        //判断此用户是否存在于数据库中
        var url = 'login.do';
        var params = {'username':userName,'password':userPwd};
        $.post(url,params,function(result){
            if(result.state==1){   //用户校验成功，跳转到主页面
                location.href='indexUI.do';
            }else{
                $('#errorMessage').parent().parent().css('display','block');
                $('#errorMessage').text(result.message);
            }
        })
    }
</script>
