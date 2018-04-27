<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    	<meta charset="gbk">
    	<meta name="viewport" content="width=device-width">
    <title>登 录</title>
    <link rel="stylesheet" href="css/login.css" type="text/css" />
    <link rel="stylesheet" type="text/css" href="css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="css/demo.css" />
	<link rel="stylesheet" href="css/jquery.idcode.css" />
	<script type="text/javascript" src="js/jquery-3.2.1.min.js" ></script>
	<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
	<script type="text/javascript" src="js/jquery.idcode.js" ></script>
<!--必要样式-->
<link rel="stylesheet" type="text/css" href="css/component.css" />
</head>
<body>
<header>

</header>
<div class="container demo-1">
			<div class="content">
				<div id="large-header" class="large-header">
					<canvas id="demo-canvas"></canvas>
					<form name="LoginForm" method="post" action="login.do?method=0&sign=0" onSubmit=" return userCheck()" class="main-title" id="center_div" style="position: fixed;font-size: 15px;top: 365px;border: 2px solid #000;width:350px;height:360px;margin: auto;border-radius:25px;border-color:#f1f1f1 #f5f5f5">
				    	 
				    	 	<h3 style="color: #2196f3;margin: auto;text-align:center;font-family: 微软雅黑;font-size: 40px;">帐号登录</h3>
				        
				        <table id="login_table" cellpadding="8">
				           
				            <tr>
				                <td style="font-size: 24px;"><label for="username" class="label">用户名：</label></td>
				                <td><input name="username" id="username" style="width: 150px;" type="text" size="2px" name="username"class="input" ></td>
				            </tr>
				            <tr>
				                <td style="font-size: 24px;"><label for="password" class="label">密&nbsp;&nbsp;码 ：</label></td>
				                <td><input name="password" id="password" style="width: 150px;" class="input"  type="password" size="2px" name="password"></td>
				            </tr>

				            <tr>
				                <td><input type="checkbox" name="vehicle" value="Bike">记住我</td>
				                <td style="float: right;font-width:bold ">忘记密码</td>
				                
				            </tr>
				
				        </table>
							
				        <div id="login_button">
				              <button name="submit" type="submit" style="background-color:#2196f3;color: #fffef7;margin: auto;text-align:center;font-family: 微软雅黑; width: 100%;height: 40px;font-size: 20px;">登录</button></td>
				        </div>
				        <div id="sign_in">
				            <a href="Singin.do?method=0"> 立即注册！</a>
				        </div>
				    </form>
				</div>
			</div>
		</div><!-- /container -->
		<script src="js/TweenLite.min.js"></script>
		<script src="js/EasePack.min.js"></script>
		<script src="js/rAF.js"></script>
		<script src="js/demo-1.js"></script>
		

</body>