<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="css/templatemo_style.css" rel="stylesheet" type="text/css">	
	<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript">
$(function(){
$('input').blur(function(){
var $parent = $(this).parent();
$parent.find(".formtips").remove();
//$(".formtips").hide();
if( $(this).is('#username') ){
                    if( this.value=="" || this.value.length < 5 ){
                        var errorMsg = '请输入至少5位的用户名.';
                        $parent.append('<span class="formtips onError">'+errorMsg+'</span>');
                        
                    }else{
 
                    }
}
if( $(this).is('#password1') ){
                    if( this.value=="" || this.value.length < 5 ){
                        var errorMsg = '请输入至少5位的密码';
                        $parent.append('<span class="formtips onError">'+errorMsg+'</span>');
                        
                    }else{
                         }   
}
if($(this).is('#password2')){
					if(this.value!=$('#password1').val()){
					    var errorMsg = '两次输入的密码不一致';
                        $parent.append('<span class="formtips onError">'+errorMsg+'</span>');
					}
					else{
					
					}

}

}).keyup(function(){
           $(this).triggerHandler("blur");
        }).focus(function(){
             $(this).triggerHandler("blur");
        });//end blur



});


</script>


  </head>
  
  <body class="templatemo-bg-gray">
	<h1 class="margin-bottom-15">注册Vine音乐账号</h1>
	<div class="container">
		<div class="col-md-12">			
			<form class="form-horizontal templatemo-create-account templatemo-container" action="regist" method="post">
				<div class="form-inner">
					<div class="form-group">
			          <div class="col-md-12">		          	
			            <label for="username" class="control-label">用户名</label>
  						<input type="text" class="form-control"  name="username"> 		            		            
			          </div>  
			        </div>
			        <div class="form-group">
			          <div class="col-md-12">
			            <label for="email" class="control-label">邮箱</label>
			            <input type="email" class="form-control" name="email">
			          </div>              
			        </div>			
			        <div class="form-group">
			          <div class="col-md-12">
			          	<label class="radio-inline">
		          			<input type="radio" name="sex" value="man"> 男
		          		</label>
		          		<label class="radio-inline">
		          			<input type="radio" name="sex"  value="woman"> 女
		          		</label>
			          </div>            
			        </div>
			        <div class="form-group">
			          <div class="col-md-6">
			            <label for="password1" class="control-label">密码</label>
			            <input type="password" class="form-control" id="password1" name="password" >
			          </div>

			          <div class="col-md-6">
			            <label for="password2" class="control-label">确认密码</label>
			            <input type="password" class="form-control" id="password2" name="password" >
			          </div>
			        </div>
			        <div class="form-group">
			          <div class="col-md-12">
			            <label><input type="checkbox">阅读并接受<a href="javascript:;" data-toggle="modal" data-target="#templatemo_modal">《服务条款》</a> </label>
			          </div>
			        </div>

			        <div class="form-group">
			          <div class="col-md-12">
			            <input type="submit" value="创建账户" class="btn btn-info">
			            <a href="login.jsp" class="pull-right">登陆</a>
			          </div>
			        </div>	
				</div>				    	
		      </form>		      
		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="templatemo_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">关闭</span></button>
	        <h4 class="modal-title" id="myModalLabel">小组成员</h4>
	      </div>
	      <div class="modal-body">
	      	<p>小组成员：杨旋、詹景明、王亚美、王晓茹、江卓</p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>
	  </div>
	</div>

  </body>
</html>
