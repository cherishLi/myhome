<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0"/>
<title></title>
<link rel="stylesheet" href="<c:url value='/static/css/system/bootstrap/bootstrap.min.css'/>" />
<link rel="stylesheet" href="<c:url value='/static/css/system/ace/font-awesome.min.css'/>" />
<!--[if IE 7]>
		  <link rel="stylesheet" href="<c:url value='/static/css/system/ace/font-awesome-ie7.min.css' />" />
<![endif]-->
<link rel="stylesheet" href="<c:url value='/static/css/system/ace/ace.min.css'/>" />
<link rel="stylesheet" href="<c:url value='/static/css/system/ace/ace-rtl.min.css'/>" />
<link rel="stylesheet" href="<c:url value='/static/css/system/ace/ace-skins.min.css'/>" />
<link rel="stylesheet" href="<c:url value='/static/css/system/ant-font/iconfont.css'/>" />
</head>
<body style="background-color:#FFFFFF;">
	<div class="error-container">
		<div class="well" style="border:none">
			<h1 class="grey lighter smaller" style="padding: 8px 10px;">
				<span class="bigger-125"> <i class="icon-warning-sign icon-animated-wrench" style="color:#fee188"></i>
					404
				</span>Error
			</h1>
			
			<h3 class="lighter smaller"></h3>
			<div style="padding:0px 10px;">
				<div class="space"></div>
				<h3 class="smaller" >我们到处找，但找不到！最可能的原因是:</h3>
				<ul class="list-unstyled spaced inline bigger-110 margin-15" style="font-family:'Open Sans';">
					<li style="text-align:left;"><i class="icon-hand-right blue icon-animated-wrench"></i> 
					可能我们的页面和系统正在升级或者维护</li>
					<li style="text-align:left;"><i class="icon-hand-right blue icon-animated-wrench"></i> 
					可能该网页已经被删除</li>
					<li style="text-align:left;"><i class="icon-hand-right blue icon-animated-wrench"></i> 
					可能地址是错误的</li>
					<li style="text-align:left;"> <i class="icon anticon blue iconsh-phone demo_i"></i>
				                  请联系我们：0510-83597227</li>
				</ul>
			</div>
			
			<div class="space"></div>
			<div class="center" style="padding: 8px 0;">
			   <div style="width:100%">
					<a class="btn bg" href="javascript:location.reload();"> <i class="icon-refresh"></i>
						刷新页面
					</a>
					<a class="btn bg" href="javascript:void(0);" onclick="skipGuidePage();" style="margin-left:20px;"> <i class="icon anticon iconsh-ie"></i>
						官网
					</a>
					<a class="btn  bg" href="http://wpa.qq.com/msgrd?v=3&uin=2990367731&site=qq&menu=yes" style="margin-left:20px;"> <i class="icon anticon iconsh-customerservice demo_i"></i>
					         QQ
					</a>
				</div>
			</div>
		</div>
	</div>		
</body>
<script>
function skipGuidePage() {
	window.open("http://www.itsmcn.com/");
}
</script>
</html>