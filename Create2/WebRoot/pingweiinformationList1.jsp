<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>系统用户</title>
    <link rel="stylesheet" href="./list.css" type="text/css"></link>
  </head>
  <body>
 <div align="center">
  <h1 style="padding-top:20px;">个人信息</h1>
  <table width="900px" border="0">
  
  <hr>

  		<tr>
  		<td>
<s:if test="#request.page.totalSize==0">
  <tr>
  <td>
    <table width="900" align="center" border="0">
  		<tr>		
  		<td>
  			<a href="pingweiinformationAddView.action" target="rightFrame"><img alt="" src="./images/add.jpg" ></a>
  			<a href="pingweiinformationAddView.action" target="rightFrame">增加</a>
  		</td>
  		</tr> 		
  	</table>
   	</s:if>
  	<table width="450" align="center" border="1">
  		<tr align="center" class="tr">
  			<td>姓名</td><td>性别</td><td>电话</td><td>评委类型</td><td>操作</td>
  		</tr>
  		<s:iterator value="#request.list" id="pingweiinformation">
  		<tr align="center" class="tr1">
			<td><s:property value="#pingweiinformation.name"/></td>
			<td><s:property value="#pingweiinformation.sex"/></td>
			<td><s:property value="#pingweiinformation.phone"/></td>
			<td><s:property value="#pingweiinformation.type"/></td>
			<td align="center">
			  
			 <a href="pingweiinformationUpdateView.action?pingweiinformation.name=<s:property value="#pingweiinformation.name"/>">修改</a> 
			</td>
		</tr>
		</s:iterator>
	</table>
	<table width="450" align="center" border="0">
  		<tr align="center">
  		<td>
			<s:set name="page" value="#request.page"></s:set>
				<s:if test="#page.totalSize!=0">
					[第<s:property value="#page.pageNow"/>页/共<s:property value="#page.totalPage"/>页]
				</s:if> 
  				<s:if test="#page.hasFirst">
					<a href="pingweiinformationList1.action?pageNow=1&pingweiinformation.name=<s:property value="pingweiinformation.name"/>">首页</a>
				</s:if>
				<s:if test="#page.hasPre">
					<a href="pingweiinformationList1.action?pageNow=<s:property value="#page.pageNow-1"/>&pingweiinformation.name=<s:property value="pingweiinformation.name"/>">上一页</a>
				</s:if>
				<s:if test="#page.hasNext">
					<a href="pingweiinformationList1.action?pageNow=<s:property value="#page.pageNow+1"/>&pingweiinformation.name=<s:property value="pingweiinformation.name"/>">下一页</a>
				</s:if>
				<s:if test="#page.hasLast">
					<a href="pingweiinformationList1.action?pageNow=<s:property value="#page.totalPage"/>&pingweiinformation.name=<s:property value="pingweiinformation.name"/>">尾页</a>
				</s:if>
		</td>
  		</tr>
  	</table>
  </td>
  </tr>
  <tr>
  <td>
  <hr />
  </td>
  </tr>
  </table>
  </div>
  </body>
</html>	