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
   <h1 style="padding-top:20px;">评委表</h1>
  <table width="1000" border="0">
 
  <hr />
 
  <tr>
  <td>
    <table width="450" align="center" border="0">
  		<tr align="left">
  		<td>
  			<form action="pingweiinformationList.action" method="post">
			用户名:<input type="text" name="pingweiinformation.name" value="<s:property value="pingweiinformation.name" />" size="10" maxlength="10"/>
			<input type="submit" value="查询" class="input" onmouseover="this.style.backgroundColor='rgb(12, 254, 255)';" 
onmouseout="this.style.backgroundColor=' rgb(102, 204, 255)';"/>
  			</form>
  		</td>
  		<td align="right">
  			<img alt="" src="./images/add.jpg" align="absmiddle">
  			<a href="pingweiinformationAddView.action" target="rightFrame">增加</a>
  		</td>
  		</tr>
  	</table>
	<div align="left" style="padding-left:275px;">	
  		<span>
  			查询结果：共 <s:property value="#request.page.totalSize"/> 项。
  		</span>
  		</div>
  <br>
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
			 <a href="pingweiinformationDelete.action?pingweiinformation.name=<s:property value="#pingweiinformation.name"/>" onClick="if(!confirm('确定删除吗？'))return false;else return true;">删除</a> 
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
					<a href="pingweiinformationList.action?pageNow=1&pingweiinformation.name=<s:property value="pingweiinformation.name"/>">首页</a>
				</s:if>
				<s:if test="#page.hasPre">
					<a href="pingweiinformationList.action?pageNow=<s:property value="#page.pageNow-1"/>&pingweiinformation.name=<s:property value="pingweiinformation.name"/>">上一页</a>
				</s:if>
				<s:if test="#page.hasNext">
					<a href="pingweiinformationList.action?pageNow=<s:property value="#page.pageNow+1"/>&pingweiinformation.name=<s:property value="pingweiinformation.name"/>">下一页</a>
				</s:if>
				<s:if test="#page.hasLast">
					<a href="pingweiinformationList.action?pageNow=<s:property value="#page.totalPage"/>&pingweiinformation.name=<s:property value="pingweiinformation.name"/>">尾页</a>
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