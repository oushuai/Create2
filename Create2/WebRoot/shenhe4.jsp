<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <title>系统用户</title>
    <link rel="stylesheet" href="./list.css" type="text/css"></link>
  </head>
  <body>
<div align="center">
  <h1 style="padding-top:20px;">项目中期检查审核</h1>
  <table width="920px" border="0">
  
  <hr>

  		<tr>
  		<td>
    <table width="1000" align="center" border="0">
  		<tr>
  		<td>
  			<form action="shenhe4.action" method="post">
			项目名称:<input type="text" name="medium.pname" value="<s:property value="medium.pname" />" size="20" maxlength="20"/>
			<input type="submit" value="查询" class="input" onmouseover="this.style.backgroundColor='rgb(12, 254, 255)';" 
onmouseout="this.style.backgroundColor=' rgb(102, 204, 255)';"/>
  			</form>
  		</td>
  		</tr>
  	</table>
	<table width="1000" align="center" border="0">
  		<tr>
  			<td>
  			查询结果：共 <s:property value="#request.page.totalSize"/> 项。
  			</td>
  		</tr>
  	</table>
  	<table width="1000" align="center" border="1">
  		<tr align="center" class="tr">
  			<td>项目名称</td><td>项目负责人</td><td>指导教师姓名</td><td>起止年月</td><td>填报日期</td><td>审核意见</td><td>操作</td>
  		</tr>
  		<s:iterator value="#request.list" id="medium">
  		<tr align="center" class="tr1">
  		    <td><s:property value="#medium.pname"/></td>
			<td><s:property value="#medium.leadername"/></td>
			<td><s:property value="#medium.leaderteacher"/></td>
			
			<td><s:property value="#medium.qizhi"/></td>
			<td><s:property value="#medium.tianbao"/></td>
			<td><li><s:property value="#medium.jindu"/>
			<s:property value="%{getText('{0,date,yyyy-MM-dd HH:mm}', {#medium.mtime1})}"/></li></td>
			<td align="center">
			 
			 <a href="view4.action?medium.pname=<s:property value="#medium.pname"/>">审核</a> 
			</td>
		</tr>
		</s:iterator>
	</table>
	<table width="1000" align="center" border="0">
  		<tr align="center">
  		<td>
			<s:set name="page" value="#request.page"></s:set>
				<s:if test="#page.totalSize!=0">
					[第<s:property value="#page.pageNow"/>页/共<s:property value="#page.totalPage"/>页]
				</s:if> 
  				<s:if test="#page.hasFirst">
					<a href="shenhe4.action?pageNow=1&medium.pname=<s:property value="medium.pname"/>">首页</a>
				</s:if>
				<s:if test="#page.hasPre">
					<a href="shenhe4.action?pageNow=<s:property value="#page.pageNow-1"/>&medium.pname=<s:property value="medium.pname"/>">上一页</a>
				</s:if>
				<s:if test="#page.hasNext">
					<a href="shenhe4.action?pageNow=<s:property value="#page.pageNow+1"/>&medium.pname=<s:property value="medium.pname"/>">下一页</a>
				</s:if>
				<s:if test="#page.hasLast">
					<a href="shenhe4.action?pageNow=<s:property value="#page.totalPage"/>&medium.pname=<s:property value="medium.pname"/>">尾页</a>
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