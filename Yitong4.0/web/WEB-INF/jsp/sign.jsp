<%@ page import="com.xc.dao.StucoaDao" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.xc.model.StuCoa" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    	<meta charset="gbk">
    	<meta name="viewport" content="width=device-width">
    <title>Rabbit : Home</title>
    <link rel="stylesheet" href="css/sign.css" type="text/css" />
    <link rel="stylesheet" type="text/css" href="css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="css/demo.css" />
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
					<form name="LoginForm" method="post" action="Singin.do?method=1"  class="main-title" id="center_div" style="position: fixed;font-size: 15px;top: 365px;border: 2px solid #000;width:900px;height:530px;margin: auto;border-radius:25px;border-color:#f1f1f1 #f5f5f5">
				    	 	<h3 style="color: #2196f3;margin: auto;text-align:center;font-family: 微软雅黑;font-size: 40px;">注&nbsp;&nbsp;册</h3>
				        <table id="sign_table" cellpadding="8" >
				        		<tr>
				        			<td style="font-size: 24px;">姓&nbsp;&nbsp;名:</td>
				        			<td><input id="coa_name" type="text" name="name" class="input" style="width: 100px;"></td>
				        				<td style="font-size: 24px;">教练号:</td>
				        			<td><input type="text" name="Coach_number" class="input" style="width: 100px;"></td>
				        		</tr>
				        		<tr>
				        			<td style="font-size: 24px;">性&nbsp;&nbsp;别:</td>
				        			<td>
				        				<input type="radio" name="coa_sex" value="男">&nbsp;男&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="coa_sex" value="女">&nbsp;女
				        			</td>
				        		</tr>
				        		<tr>
				        			<td style="font-size: 24px;">教&nbsp;&nbsp;龄:</td>
									<td>
										<input type="text" name="coa_scage" style="width: 100px">
									</td>
				        		</tr>
				        		<tr>
				        			<td style="font-size: 24px;">联系方式:</td>
				        			<td><input type="text" name="coa_phonr" id="phone_number" style="width: 150px;"/></td>
				       			<td style="font-size: 24px;">身份证:</td>
				       			<td><input type="text" name="coa_idcard" id="idcard"/></td>
				        		</tr>
								<tr>
									<td><label style="font-size: 24px;">密码:</label></td>
									<td colspan="3"><input type="password" name="coa_password" style="width: 495px;"></input></td>
								</tr>
				        		<tr>
					        		<td><label style="font-size: 24px;">家庭住址:</label></td>
					        		<td colspan="3"><textarea name="coa_addr" style="width: 495px;height: 70px;"></textarea></td>
				       		 	</tr>
								<tr>
									<td></td>
									<td colspan="2" style="margin: auto;text-align: center">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" style="position:relative;top:20px;width: 120px;border: none;color: white;padding: 15px 20px;border-radius: 12px;text-align: center;text-decoration: none;display: inline-block;font-weight: bold;font-size: 16px;background-color: #2196f3" value="提交">
									</td>
									<td></td>
								</tr>
				        </table>
				    	 	
				    </form>
				</div>
			</div>
		</div><!-- /container -->
		<script src="js/TweenLite.min.js"></script>
		<script src="js/EasePack.min.js"></script>
		<script src="js/rAF.js"></script>
		<script src="js/demo-1.js"></script>
		

</body>