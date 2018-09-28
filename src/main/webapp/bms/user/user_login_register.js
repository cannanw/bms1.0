$(document).ready(function(){
	//回车按钮的keycode为13
	$(document).keyup(function(event) {
		if (event.keyCode == 13) {//使用event.which同样
			//触发btn-login绑定的submit事件,trigger用来触发指定元素的事件
			$("#btn-login").trigger("click");
		}
	});
	//点击登录按钮
	$('#btn-login').click(doLogin);
	$('#btn-register').click(doRegister);
})
//登录方法
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
			location.href='/bms1.0/indexUI.do';
		}else{
			$('#errorMessage').parent().parent().css('display','block');
			$('#errorMessage').text(result.message);
		}
	})
}

//注册功能
function doRegister(){
	var userName = $('#rusername').val();
	var userPwd = $('#ruserpwd').val();
	if(userName==''){
		$('#rerrorMessage').parent().parent().css('display','block');
		$('#rerrorMessage').text('用户名不能为空！');
		return false;
	}
	if(userPwd==''){
		$('#rerrorMessage').parent().parent().css('display','block');
		$('#rerrorMessage').text('密码不能为空！');
		return false;
	}
	//判断此用户是否存在于数据库中
	var url = 'register.do';
	var params = {'username':userName,'password':userPwd};
	$.post(url,params,function(result){
		if(result.state==1){   //用户校验成功，跳转到主页面
			alert("注册成功");
			location.href='/bms1.0/indexUI.do';
		}else{
			$('#rerrorMessage').parent().parent().css('display','block');
			$('#rerrorMessage').text(result.message);
		}
	})
}