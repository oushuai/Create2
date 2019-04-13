<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <title>系统用户</title>
    <link rel="stylesheet" href="./list.css" type="text/css"></link>
  </head>
  <body>
 <div align="center">
   <h1 style="padding-top:20px;">项目结题表</h1>
  <table width="1000" border="0">
 
  <hr />
 
  <tr>
  <td>
    <table width="1000" align="center" border="0">
  		<tr>
  		<td>
  			<form action="jietiList.action" method="post">
			项目名称:<input type="text" name="jieti.pname" value="<s:property value="jieti.pname" />" size="20" maxlength="20"/>
			<input type="submit" value="查询" class="input" onmouseover="this.style.backgroundColor='rgb(12, 254, 255)';" 
onmouseout="this.style.backgroundColor=' rgb(102, 204, 255)';"/>
  			</form>
  		</td>
  		<td align="right">
  			<img alt="" src="./images/add.jpg" align="absmiddle">
  			<a href="jietiAddView.action" target="rightFrame">增加</a>
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
  			<td>项目名称</td><td>学生姓名</td><td>所在院系</td><td>指导教师</td><td>填表日期</td><td>进度</td><td>操作</td>
  		</tr>
  		<s:iterator value="#request.list" id="jieti">
  		<tr align="center" class="tr1">
  		    <td><s:property value="#jieti.pname"/></td>
			<td><s:property value="#jieti.xingming"/></td>
			<td><s:property value="#jieti.yuanhexi"/></td>
			
			<td><s:property value="#jieti.leaderteacher"/></td>
			
			<td><s:property value="#jieti.tianbiao"/></td>
			<td><li><s:property value="#jieti.jindu"/>
			<s:property value="%{getText('{0,date,yyyy-MM-dd HH:mm:ss}', {#jieti.jtime1})}"/></li>
			<li><s:property value="#jieti.jindu1"/>
			<s:property value="%{getText('{0,date,yyyy-MM-dd HH:mm:ss}', {#jieti.jtime2})}"/></li></td>
			
			<td align="center">
			 <a href="jietiDelete.action?jieti.pname=<s:property value="#jieti.pname"/>" onClick="if(!confirm('确定删除吗？'))return false;else return true;">删除</a> 
			 <a href="jietiUpdateView.action?jieti.pname=<s:property value="#jieti.pname"/>">修改</a> 
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
					<a href="jietiList.action?pageNow=1&jieti.pname=<s:property value="jieti.pname"/>">首页</a>
				</s:if>
				<s:if test="#page.hasPre">
					<a href="jietiList.action?pageNow=<s:property value="#page.pageNow-1"/>&jieti.pname=<s:property value="jieti.pname"/>">上一页</a>
				</s:if>
				<s:if test="#page.hasNext">
					<a href="jietiList.action?pageNow=<s:property value="#page.pageNow+1"/>&jieti.pname=<s:property value="jieti.pname"/>">下一页</a>
				</s:if>
				<s:if test="#page.hasLast">
					<a href="jietiList.action?pageNow=<s:property value="#page.totalPage"/>&jieti.pname=<s:property value="jieti.pname"/>">尾页</a>
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