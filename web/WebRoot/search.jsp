<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<link href="css/common.css" rel="stylesheet" media="screen">
</head>
<body>
	<div class="wrapper" id="body">

		<div class="logo" >
			<img src="img/logo.png" width="270" height="129" style="width: 121px; height: 109px" >
			
		</div>
				<div class="nav-top" style="width: 503px; height: 98px">
			<a href="">         home      </a>
			
			
		</div>
		<div class="search">
			<div class="s-wrap">
				<form action="search">
					<input type="text" class="s-t" name="author" class="s-t"
						maxlength="100" autocomplete="off"
						style="font-family: 'Microsoft Yahei', STHeiti;"> <span
						class="btn_wr s_btn_wr bg" id="s_btn_wr"><input
						type="submit" value="SEARCH AUTHOR" id="su" class="btn self-btn bg s_btn"></span>
				</form>
			</div>
		</div>
		<div style="margin: 12px 0 15px 0;height: 20px;"></div>
		<div class="s-content">
			<div class="list-tabs">
				<div style="font-size: 16px;line-height: 45px;">CONCLUSION: ${au} 'BOOK</div>
				<div class="list">
					<div class="title" style="color:#333;font-size:16px;">Bookname</div>
					<div class="author" style="color:#333;font-size:16px;">Author</div>
					<div class="opration" style="color:#333;font-size:16px;">OPERTION</div>
				</div>
				<s:iterator value="books" var="c">
					<div class="list">
						<div class="title">
							<a href="detail?isbn=<s:property value="#c.isbn"/>"><s:property
									value="#c.isbn" /></a>
						</div>
						<div class="name">
							<s:property value="#c.name" />
						</div>

						<div class="opration">
							<a href="delete?id=<s:property value="#c.id"/>">DELECT</a> 
						</div>
						<br />
					</div>
				</s:iterator>

			</div>
		</div>
	</div>
	<div class="clear"></div>

	<div class="clear"></div>
	<div id="xxshow" class="add">
		
		<div class="clean"></div>
		
</body>
</html>
