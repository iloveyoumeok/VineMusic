<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title><s:text name="loginPage" /></title>
<style type="text/css">
body{
background-color:#233139;
}
#container {
	margin:0px auto;
	height: 800px;
	float: none;
	width: 1000px;
}

#menue {
	background-color: red; display : block;
	height: 100px;
	display: block;
}

#login {
	background-color:#547687;
	width:600px;
	height:400px;
	margin:50px auto;
	padding-top: 50px;
}
td{ text-align:center;
}
h1{
font-size: 70;
}
</style>
<script type="text/javascript">
	function checkLogin() {
		//获取用户名文本框
		var uname = document.getElementById('username');

		
		//获取密码框
		var pwd = document.getElementById('password');
		if (uname.value.length == 0) {
			alert("用户名不能为空");
			uname.focus(); //获取焦点
			return false;
		}
		if (pwd.value.length == 0) {
			alert("密码不能为空");
			pwd.focus();
			return false;
		}
		return true;
	}
</script>

</head>

<body>
		<div id="container">
		
			<div id="menue"></div>
			<div id="login">
			<form action="login" method="post" onsubmit="checkLogin()">
				<table class="denglu" border="0" align="center" >
					<tr>
						<td colspan="2"><h1>welcome</h1></td>
					</tr>
					<tr><td>&nbsp;</td></tr>
					<tr>
						<td>登陆：<input type="text" name="username" id="username"></td>
					</tr>
					<tr><td>&nbsp;</td></tr>
					<tr>
						<td>密码：<input type="password" name="password" id="password"></td>
					</tr>
					<tr><td>&nbsp;</td></tr>
					<tr>
						<td><input type="submit" value="立即登陆">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset"></td>
					</tr>
				</table>
				</form>
			</div>
		</div>
	

</body>
</html>
