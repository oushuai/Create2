<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <title>系统用户</title>
    <link rel="stylesheet" href="./list.css" type="text/css"></link>
  </head>
  <body>
 <div align="center">
   <h1 style="padding-top:20px;">项目延期表</h1>
  <table width="1000" border="0">
 
  <hr />
 
  <tr>
  <td>
    <table width="1000" align="center" border="0">
  		<tr>
  		<td>
  			<form action="yanqiList.action" method="post">
			项目名称:<input type="text" name="yanqi.pname" value="<s:property value="yanqi.pname" />" size="20" maxlength="20"/>
			<input type="submit" value="查询" class="input" onmouseover="this.style.backgroundColor='rgb(12, 254, 255)';" 
onmouseout="this.style.backgroundColor=' rgb(102, 204, 255)';"/>
  			</form>
  		</td>
  		<td align="right">
  			<img alt="" src="./images/add.jpg" align="absmiddle">
  			<a href="yanqiAddView.action" target="rightFrame">增加</a>
  		</td>
  		</tr>
  	</table>
	<div align="left">	
  		<span>
  			查询结果：共 <s:property value="#request.page.totalSize"/> 项。
  		</span>
  		</div>
  <br>
  	<table width="1000" align="center" border="1">
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
			<s:property value="#yanqi.jtime1"/></li>
			</td>			
			<td align="center">
			 <a href="yanqiDelete.action?yanqi.pname=<s:property value="#yanqi.pname"/>" onClick="if(!confirm('确定删除吗？'))return false;else return true;">删除</a> 
			 <a href="yanqiUpdateView.action?yanqi.pname=<s:property value="#yanqi.pname"/>">修改</a> 
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
					<a href="yanqiList.action?pageNow=1&yanqi.pname=<s:property value="yanqi.pname"/>">首页</a>
				</s:if>
				<s:if test="#page.hasPre">
					<a href="yanqiList.action?pageNow=<s:property value="#page.pageNow-1"/>&yanqi.pname=<s:property value="yanqi.pname"/>">上一页</a>
				</s:if>
				<s:if test="#page.hasNext">
					<a href="yanqiList.action?pageNow=<s:property value="#page.pageNow+1"/>&yanqi.pname=<s:property value="yanqi.pname"/>">下一页</a>
				</s:if>
				<s:if test="#page.hasLast">
					<a href="yanqiList.action?pageNow=<s:property value="#page.totalPage"/>&yanqi.pname=<s:property value="yanqi.pname"/>">尾页</a>
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