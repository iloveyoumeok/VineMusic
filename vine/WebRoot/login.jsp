<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>


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
	padding-top: 5px;
}
td{ text-align:center;
}
</style>
<script type="text/javascript">
	function checkLogin() {
		//获取用户名文本框
		//	var uname = document.getElementById('username');

		alert(username);
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
			<s:form action="login" onsubmit="checkLogin()">
				<table class="denglu" border="0" align="center" >
					<tr>
						<td colspan="2"><h1>welcome</h1></td>
					</tr>
					<tr><td>&nbsp;</td></tr>
					<tr>
						<td><s:textfield name="username" key="用户名" /></td>
					</tr>
					<tr><td>&nbsp;</td></tr>
					<tr>
						<td><s:textfield name="password" key="密码" /></td>
					</tr>
					<tr><td>&nbsp;</td></tr>
					<tr style="">
						<td><s:submit key="login" value="立即登陆"/>&nbsp;<s:reset value="重置"></s:reset></td>
					</tr>
				</table>
				</s:form>
			</div>
		</div>
	

</body>
</html>
