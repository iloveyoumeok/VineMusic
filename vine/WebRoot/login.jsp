<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="css/templatemo_style.css" rel="stylesheet" type="text/css">	
<title>login</title>

<script type="text/javascript">
	function checkLogin() {
		//获取用户名文本框
		var uname = document.getElementById('username');

		
		//获取密码框
		var pwd = document.getElementById('password');
		if (uname.value.length == 0) {
			alert("用户名不能为空");

			return false;
		}
		if (pwd.value.length == 0) {
			alert("密码不能为空");

			return false;
		}
		return true;
	}
</script>

</head>

	<body class="templatemo-bg-gray">
	<div class="container">
		<div class="col-md-12">
			<h1 class="margin-bottom-15">welcome</h1>
			<form class="form-horizontal templatemo-container templatemo-login-form-1 margin-bottom-30" action="login" method="post" onsubmit="checkLogin()">				
		        <div class="form-group">
		          <div class="col-xs-12">		            
		            <div class="control-wrapper">
		            	<label for="username" class="control-label fa-label"><i class="fa fa-user fa-medium"></i></label>
		            	<input type="text" class="form-control" id="username" name="username" placeholder="Username">
		            </div>		            	            
		          </div>              
		        </div>
		        <div class="form-group">
		          <div class="col-md-12">
		          	<div class="control-wrapper">
		            	<label for="password" class="control-label fa-label"><i class="fa fa-lock fa-medium"></i></label>
		            	<input type="password" class="form-control" id="password" name="password" placeholder="Password">
		            </div>
		          </div>
		        </div>
		        <div class="form-group">
		          <div class="col-md-12">
		          	<div class="control-wrapper">
		          	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		          		<input type="submit" value="立即登陆" class="btn btn-info">
		          	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		          		<input type="reset" value="重置" class="btn btn-info">
                    </div>
		          </div>
		        </div>
<div class="form-group"> </div>
		      </form>
		      <div class="text-center">
		      	<a href="regist.jsp" class="templatemo-create-new">注册用户<i class="fa fa-arrow-circle-o-right"></i></a>	
		      </div>
		</div>
	</div>
</body>
</html>
