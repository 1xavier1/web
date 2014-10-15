<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<title>DESCRIBE</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<link href="css/common.css" rel="stylesheet" media="screen">
<meta charset="utf-8">
</head>

<body>
	<div class="wrapper" id="body">

		<div class="logo">
			<img src="img/logo.png" width="270" height="129">
		</div>
		<div class="nav-top">
			<a href="">home</a> 
		</div>
		<div class="search">
			<div class="s-wrap">
				<form action="search">
					<input type="text" class="s-t" name="author" class="s-t"
						maxlength="100" autocomplete="off"
						style="font-family: 'Microsoft Yahei', STHeiti; height: 43px; width: 157px"> <span
						
						class="btn_wr s_btn_wr bg" id="s_btn_wr"></span>
						<input type="submit" value="SEARCH AUTHOR" id="su" class="btn self-btn bg s_btn" style="width: 223px; height: 45px">
				</form>
			</div>
		</div>
		<div style="margin: 12px 0 15px 0;height: 20px;"></div>

		<h1>description</h1>
		<div class="item2">
			BOOK NAME:&nbsp;&nbsp;&nbsp;&nbsp;
			<s:property value="book.title" />
		</div>

		<div class="item2">
			ISBN:&nbsp;&nbsp;&nbsp;&nbsp;
			<s:property value="book.isbn" />
		</div>
		<div class="item2">
			PUBLISH DATA:&nbsp;&nbsp;&nbsp;&nbsp;
			<s:property value="book.publishdata" />
		</div>
		<div class="item2">
			PUBLISHER:&nbsp;&nbsp;&nbsp;&nbsp;
			<s:property value="book.publisher" />
		</div>
		<div class="item2">
			PRICE:&nbsp;&nbsp;&nbsp;&nbsp;
			<s:property value="book.price" />
		</div>
		<div style="margin: 12px 0 15px 0;height: 20px;"></div>

		<h1>AUTHOR</h1>
		<div class="item2">
			AUTHOR:&nbsp;&nbsp;&nbsp;&nbsp;
			<s:property value="author.name" />
		</div>
		<div class="item2">
			AGE:&nbsp;&nbsp;&nbsp;&nbsp;
			<s:property value="author.age" />
		</div>
		<div class="item2">
			COUNTRY:&nbsp;&nbsp;&nbsp;&nbsp;
			<s:property value="author.country" />
		</div>
	</div>


	<div class="clear"></div>
	
</body>
</html>