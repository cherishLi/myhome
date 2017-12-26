<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html >
<html>
<c:set var="basePath" value="${pageContext.request.contextPath}" />
  <head>
    <title>dqdg</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script src="${basePath}/js/jquery-2.0.3.min.js"></script>
	<style type="text/css">
	p {
  		font-family:"微软雅黑";
 	 }
	.s-head{
		width:100%; height:60px;
		position: relative !important;
		color: rgba(255,255,255,0.75);
    	background-color: #24292e;
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
		background-color:#F0F0F0;
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
	</style>
	
  </head>
  
  <body style="margin: 0;">
  <div class="s-head">
  
  </div>
  <div class="s-body">
  	<div class="login">
  	<h3>Sign in to DQDG</h3>
  		<form action="" method="post" class="s-form">
  			<p><label>Username</label></p>
  			<p><input type="text" size="16" required="required"/></p><br/>
  			<p><label>Password</label><a  href="#" style="margin-left:100px;">Forgot password?</a></p>
  			<p><input type="password" size="16" required="required"/></p><br/>
  			<p><input type="button" style="width:310px;font-size:20px;"class="login-button" value="Sign in"></p>
  		</form>
  		<p style="margin-left:15%">New to DQDG ?  <a href="#">Create an count.</a></p>
  		
  	</div>
  
  
  </div>
  </body>
  <script>
  	$(".s-load").click(function(){

  		$(".s-body").load($(this).attr("href"));
  	});
  </script>
</html>
