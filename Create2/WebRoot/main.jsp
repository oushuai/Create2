<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>申报管理</title>
    <link rel="stylesheet" href="./stylesheet.css" type="text/css"></link>
    
  </head>
<body style="overflow-y:hidden;background-color: rgb(102, 204, 255);">
 
    <div>
         <table style="width:100%;padding-left:15px;padding-top:13px;">
            <tr>
                <td style="width:80%;">
              
                            	<img alt="" src="./images/图片1.png" width="50px" height="50px">
                <span style="color:white;font-size:20px;vertical-align:top;line-height:50px;">  邵阳学院</span>
                </td>
                <td style="width:80%;">
                            	
                </td>
                <td style="width:20%;font-size:15px;color:white;" align="center" rowspan="2">
                    <img alt="" src="./images/1013.gif">
                    <br />
                    [<s:property value="#session.user1.username" />|<s:property value="#session.user1.type" />|<a href="./logout.action" target="_top" id="a">注销</a>]</td>
            </tr>
            <tr><td style="font-size:40px;color:white;font-weight:bold;">大学生创新性项目申报系统</td></tr>
            </table>
    </div>
</body>
</html>
