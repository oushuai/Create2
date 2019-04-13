<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <title>操作信息</title>
    <link rel="stylesheet" href="./stylesheet.css" type="text/css"></link>
  </head>
  <body>
  	<img src="./images/failure.gif">
  	<FONT color="red">操作失败！</FONT> 
  	<s:fielderror/>
  	<s:action name="userList" executeResult="true" ignoreContextParams="false"></s:action> 
  </body>
</html>
