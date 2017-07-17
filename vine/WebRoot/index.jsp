<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>My JSP 'index.jsp' starting page</title>
<link rel="stylesheet" type="text/css" href="css/layout.css">
<link rel="stylesheet" type="text/css" href="css/index.css">
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/templatemo_style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
 var index1=0;
 var cow=0;
 function showImg1(){
	 img1s=document.getElementsByClassName("banner")[0].getElementsByTagName("div");
	 lis=document.getElementsByClassName("ban_menu")[0].getElementsByTagName("li");
	 	 for(var i=0;i<img1s.length;i++){
		 if(i==index1){
			 img1s[i].style.display="block";
			 lis[i].getElementsByTagName("a")[0].style.backgroundColor="#F30";}
			 else {
				 img1s[i].style.display="none";
				 lis[i].getElementsByTagName("a")[0].style.backgroundColor="#36C";}
			 }
			 index1++;
			 if(index1==img1s.length){
				 index1=0;}
 }
 window.onload=showImg1;
 window.setInterval("showImg1()",1500);
 function showMe(i){
	 index1=i;
	}
	//ajax
function setId(i){
cow=i;
}
$(document).ready(function(){
  $("a[name='aa']").click(function(){
  
  $ajax({
  url:"issue",
  type:"POST",
  data:""+cow,
  dataType:"json"
  success:function(data){
  
  }
  });
  
  });
  
  
  
});
</script>

</head>
<body class="templatemo-bg-gray">
	<div id="container">
			<header>
				<div class="f_1">
				<div class="f_2">
					<div class="logo_img">
						<a><img src="images/logo1.png" /></a>
					</div>
					<div class="logo_wb">
						<span>关注vine音乐新浪微博</span>
					</div>
					<div class="load_t">
						<span id="comTopLogin">
						<span class="register"><a href="regist.jsp">注册</a></span>|
						<span class="load">
						<c:if test="${!empty user }"> ${user}<a href="#">注销</a></c:if> 
						<c:if test="${empty user }"><a href="login.jsp">登录</a>|<span class="load"></c:if> 
						<a href="#" target="_blank">充值</a></span>|
						<span class="load"> <a href="#">会员中心</a></span>
						<span class="none" id="comTopMyDuomi" style="display: none;">
						<span class="load"><a href="#" id="comTopNick">我的多米</a></span>|
						<span class="load"><a href="#" target="_blank">充值</a></span>|
						<span class="load"><a href="#" target="_blank">会员</a></span>|
						<span class="load"><a href="javascript:void(0);" onclick="com.logout();">退出</a>
						</span>
						</span>
					</div>
					</div>
				
				<div class="nav_div">
					<ul class="index_nav ">
						<li class="nav_01"><a href="index.jsp">首页</a></li>
						<li class="nav_gap"><img src="images/b.png"></li>
						<li class="nav_02"><a href="#">歌曲搜索</a></li>
						<li class="nav_gap"><img src="images/b.png"></li>
						<li class="nav_05"><a href="#">歌手搜索</a></li>
						<li class="nav_gap"><img src="images/b.png"></li>
						<li class="nav_04"><a href="#">音乐新闻</a><img class="nav-new" src="images/nav_new.jpg"></li>
						<li class="nav_gap"><img src="images/b.png"></li>
						<li class="nav_05"><a href="#">联系我们</a></li>
					</ul>
				</div>
				</div>
			</header>
		<boder>

			<div class="content_l">
				<!--轮播广告开始-->
				<div class="banner">
					<div ><a name="aa" id="i1" onMouseOver="setId(2016)"><img src="images/1.jpg" /></a></div>
					<div ><a name="aa" id="i2" onMouseOver="setId(2015)"><img src="images/2.jpg" /></a></div>
					<div ><a name="aa" id="i3" onMouseOver="setId(2014)"><img src="images/3.jpg" /></a></div>
					<div ><a name="aa" id="i4" onMouseOver="setId(2013)"><img src="images/4.jpg" /></a></div>
					<div ><a name="aa" id="i5" onMouseOver="setId(2012)"><img src="images/5.jpg" /></a></div>					
				</div>
				<div class="content_l_l">
				<img src="images/down.jpg" />
				</div>

				<ul class="ban_menu">
					<li><a href="#" onMouseOver="showMe(0)">1</a></li>
					<li><a href="#" onMouseOver="showMe(1)">2</a></li>
					<li><a href="#" onMouseOver="showMe(2)">3</a></li>
					<li><a href="#" onMouseOver="showMe(3)">4</a></li>
					<li><a href="#" onMouseOver="showMe(4)">5</a></li>

				</ul>
			</div>
			
				<div class="form1">
		<div class="col-md-12">		
		<table class="table table-striped table-hover">
	      <thead>
	        <tr>
	          <th>#</th>
	          <th>歌曲名</th>
	          <th>歌手</th>
	          <th class="text-right">Down</th>
	        </tr>
	      </thead>
	      <tbody>
	        <tr>
	          <td>1</td>
	          <td>Login Form 1</td>
	          <td></td>
	          <td class="text-right"><a href="login-1.html" class="btn btn-info"><i class="fa fa-arrow-circle-right"></i></a></td>
	        </tr>
	        

	      </tbody>
	    </table>
		</div>
	</div>
			
			
		</boder>
	</div>
</body>

</html>
