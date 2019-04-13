<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <title>系统用户</title>
    <link rel="stylesheet" href="./list.css" type="text/css"></link>
  </head>
  <body>
 <div align="center">
  <h1 style="padding-top:20px;">专家评委审核</h1>
  <table width="920px" border="0">
  
  <hr>

  		<tr>
  		<td>
 
  	</table>
	<table width="920px" align="center" border="0">
  		<tr>
  			<td>
  			查询结果：共 <s:property value="#request.page.totalSize"/> 项。
  			</td>
  		</tr>
  	</table>
  	<table width="920px" align="center" border="1">
  		<tr align="center" class="tr">
  			<td>项目名称</td><td>学校名称</td><td>项目负责人信息</td><td>指导老师信息</td><td>申报时间</td><td>审核意见</td><td>操作</td>
  		</tr>
  		<s:iterator value="#request.list" id="projectinformation1">
  		<tr align="center" class="tr1">
  		    <td><s:property value="#projectinformation1.pname"/></td>
			<td><s:property value="#projectinformation1.sname"/></td>
			<td><s:property value="#projectinformation1.leadername"/><br>
			<s:property value="#projectinformation1.leadernum"/><br>
			<s:property value="#projectinformation1.zhuanye"/><br>
			<s:property value="#projectinformation1.sex"/><br>
			<s:property value="#projectinformation1.year"/></td>
			<td><s:property value="#projectinformation1.leadteacher"/><br>
			<s:property value="#projectinformation1.rank"/></td>
			<td><s:property value="%{getText('{0,date,yyyy-MM-dd HH:mm}', {#projectinformation1.ptime1})}"/></td>
			
			<td><s:property value="#projectinformation1.jindu2"/>
			    <s:property value="%{getText('{0,date,yyyy-MM-dd HH:mm}', {#projectinformation1.stime3})}"/>
			</td>
			<td align="center">
		 
			 <a href="view3.action?projectinformation1.pname=<s:property value="#projectinformation1.pname"/>">审核</a> 
			</td>
		</tr>
		</s:iterator>
	</table>
	<table width="920px" align="center" border="0">
  		<tr align="center">
  		<td>
			<s:set name="page" value="#request.page"></s:set>
				<s:if test="#page.totalSize!=0">
					[第<s:property value="#page.pageNow"/>页/共<s:property value="#page.totalPage"/>页]
				</s:if> 
  				<s:if test="#page.hasFirst">
					<a href="shenhe3.action?pageNow=1&projectinformation1.pname=<s:property value="projectinformation1.pname"/>">首页</a>
				</s:if>
				<s:if test="#page.hasPre">
					<a href="shenhe3.action?pageNow=<s:property value="#page.pageNow-1"/>&projectinformation1.pname=<s:property value="projectinformation1.pname"/>">上一页</a>
				</s:if>
				<s:if test="#page.hasNext">
					<a href="shenhe3.action?pageNow=<s:property value="#page.pageNow+1"/>&projectinformation1.pname=<s:property value="projectinformation1.pname"/>">下一页</a>
				</s:if>
				<s:if test="#page.hasLast">
					<a href="shenhe3.action?pageNow=<s:property value="#page.totalPage"/>&projectinformation1.pname=<s:property value="projectinformation1.pname"/>">尾页</a>
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