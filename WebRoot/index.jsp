<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html >
<html>
<c:set var="basePath" value="${pageContext.request.contextPath}" />
<script>
	var basePath = '${basePath}';
</script>
  <head>
    <title>dqdg</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script src="${basePath}/js/jquery-2.0.3.min.js"></script>
	<script src="${basePath}/js/layui/layui.js"></script>
	<script>
	layui.use(['layer', 'form'], function(){
  	var layer = layui.layer
  	,form = layui.form;
});
</script>
	<style type="text/css">
	p label{
  		font-family:"微软雅黑";
 	 }
	.s-head{
		width:100%; height:60px;
		position: relative !important;
		color: rgba(255,255,255,0.75);
    	background-color: #24292e;
    	padding-left:10%;
    	padding-right:10%;
    	line-height:60px;
	}
	.s-body{
		background-color: rgb(43, 49, 55);
		width:100%;height:1200px;
	}
	.login{
		border-radius:5px;
		position:absolute;
		width:400px;
		height:440px;
		left:60%;top:120px;
		background-color:#FCFCFC;
		padding-left:40px;
		padding-right:40px;
		padding-top:15px;
	}
	.s-form  input{
		font-size:16px;
		border-radius:4px;
		width:300px;
		height:30px;
		border: 1px solid #DBDBDB;
		padding-left:10px;
		 
	}
	.s-form{
		padding:20px;
		border-radius:5px;
		border: 2px solid #d0d0d0;
	}
	.s-form  p{
		margin:5px;
	}
	.login-button{
		color: #FFF;
		background-color:#8E8E8E;
	}
	.title{
		font-size:21px;
	}
	.error{
		position: absolute;
    	z-index: 10;
    	display: block;
    	max-width: 450px;
   	 	padding: 5px 5px;
    	font-size: 10px;
    	font-weight: 400;
    	border-style: solid;
    	border-width: 1px;
    	border-radius: 3px;
    	left:150px;
    	top:95px;
	}
	</style>
	
  </head>
  
  <body style="margin: 0;">
  <div class="s-head">
  <label class="title">DQDG</label>
  </div>
  <div class="s-body">
  
  	<div class="login">
  	<h3>Sign in to DQDG</h3>
  		<form action="" method="post" class="s-form">
  			<p><label>Username</label></p>
  			<p><input type="text" size="16" id="loginname"/></p>
  			<p class="error">enter worng</p>
  			<p><label>Password</label><a  href="#" style="margin-left:100px;">Forgot password?</a></p>
  			<p><input type="password" size="16" id="pwd"required="required"/></p><br/>
  			<p><input type="button" style="width:310px;font-size:20px;" class="login-button" onclick ="login()" value="Sign in"></p>
  		</form>
  		<p style="margin-left:15%">New to DQDG ?  <a href="#">Create an count.</a></p>
  		
  	</div>
  	<!-- register -->
  	<div class="register">
  	</div>
  
  </div>
  </body>
 <script type="text/javascript">
 $("#loginname").keyup(function(){
	  $("#loginname").css("background-color","#F75000");
	});

  </script>
<script type="text/javascript">
  	function login(){
  		var loginname = $("#loginname").val();
  		var pwd = $("#pwd").val();
  		$.ajax({
  			type:'get',
  			data:{
  				loginname:loginname,
  				pwd:pwd
  			},
  			url:basePath+"/login/login",
  			success: function (data) {
  				if(data.obj =="0")
  					layer.msg("Username or password is wrong");
  				else
  					$(".s-body").load(basePath+"/login/success");
  			}
  		});
  	}
  </script>
</html>


