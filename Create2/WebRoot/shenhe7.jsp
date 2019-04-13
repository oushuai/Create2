<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <title>系统用户</title>
    <link rel="stylesheet" href="./list.css" type="text/css"></link>
  </head>
  <body>
  <div align="center">
  <h1 style="padding-top:20px;">项目延期审核</h1>
  <table width="920px" border="0">
  
  <hr>

  		<tr>
  		<td>
    <table width="700" align="center" border="0">
  		<tr>
  		<td>
  			<form action="shenhe7.action" method="post">
			项目名称:<input type="text" name="yanqi.pname" value="<s:property value="yanqi.pname" />" size="20" maxlength="20"/>
			<input type="submit" value="查询" class="input" onmouseover="this.style.backgroundColor='rgb(12, 254, 255)';" 
onmouseout="this.style.backgroundColor=' rgb(102, 204, 255)';"/>
  			</form>
  		</td>
  		</tr>
  	</table>
	<table width="700" align="center" border="0">
  		<tr>
  			<td>
  			查询结果：共 <s:property value="#request.page.totalSize"/> 项。
  			</td>
  		</tr>
  	</table>
  	<table width="700" align="center" border="1">
  		<tr align="center" class="tr">
  				<td>项目编号</td><td>项目名称</td><td>项目负责人</td><td>指导教师</td><td>进度</td><td>操作</td>
  		</tr>
  		<s:iterator value="#request.list" id="yanqi">
  		<tr align="center" class="tr1">
  		    <td><s:property value="#yanqi.pnum"/></td>
			<td><s:property value="#yanqi.pname"/></td>
			<td><s:property value="#yanqi.leadername"/></td>
			<td><s:property value="#yanqi.leaderteacher"/></td>
			<td><li><s:property value="#yanqi.jindu"/>
			<s:property value="%{getText('{0,date,yyyy-MM-dd HH:mm}', {#yanqi.ytime1})}"/></li>
			</td>			
			<td align="center">
			 <a href="view7.action?yanqi.pname=<s:property value="#yanqi.pname"/>">审核</a> 
			</td>
		</tr>
		</s:iterator>
	</table>
	<table width="700" align="center" border="0">
  		<tr align="center">
  		<td>
			<s:set name="page" value="#request.page"></s:set>
				<s:if test="#page.totalSize!=0">
					[第<s:property value="#page.pageNow"/>页/共<s:property value="#page.totalPage"/>页]
				</s:if> 
  				<s:if test="#page.hasFirst">
					<a href="shenhe7.action?pageNow=1&yanqi.pname=<s:property value="yanqi.pname"/>">首页</a>
				</s:if>
				<s:if test="#page.hasPre">
					<a href="shenhe7.action?pageNow=<s:property value="#page.pageNow-1"/>&yanqi.pname=<s:property value="yanqi.pname"/>">上一页</a>
				</s:if>
				<s:if test="#page.hasNext">
					<a href="shenhe7.action?pageNow=<s:property value="#page.pageNow+1"/>&yanqi.pname=<s:property value="yanqi.pname"/>">下一页</a>
				</s:if>
				<s:if test="#page.hasLast">
					<a href="shenhe7.action?pageNow=<s:property value="#page.totalPage"/>&yanqi.pname=<s:property value="yanqi.pname"/>">尾页</a>
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