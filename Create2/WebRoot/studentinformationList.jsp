<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <title>系统用户</title>
    <link rel="stylesheet" href="./list.css" type="text/css"></link>
  </head>
  <body>
 <div align="center">
   <h1 style="padding-top:20px;">项目负责人表</h1>
  <table width="1000" border="0">
 
  <hr />
 
  <tr>
  <td>
    <table width="900" align="center" border="0">
  		<tr>
  		<td>
  			<form action="studentinformationList.action" method="post">
			学号:<input type="text" name="studentinformation.num" value="<s:property value="studentinformation.num" />" size="12" maxlength="12"/>
			<input type="submit" value="查询" class="input" onmouseover="this.style.backgroundColor='rgb(12, 254, 255)';" 
onmouseout="this.style.backgroundColor=' rgb(102, 204, 255)';"/>
  			</form>
  		</td>
  		<td align="right">
  			<img alt="" src="./images/add.jpg" align="absmiddle">
  			<a href="studentinformationAddView.action" target="rightFrame">增加</a>
  		</td>
  		</tr>
  	</table>
	<div class="div">			
  		<span>
  			查询结果：共 <s:property value="#request.page.totalSize"/> 项。
  		</span>
  		</div>
  <br>
  	<table width="900" align="center" border="1">
  		<tr align="center" class="tr">
  			<td>学号</td><td>姓名</td><td>电话</td><td>院系</td><td>专业</td><td>性别</td><td>入学年份</td><td>指导老师</td><td>项目名称</td><td>操作</td>
  		</tr>
  		<s:iterator value="#request.list" id="studentinformation">
  		<tr align="center" class="tr1">
  		    <td><s:property value="#studentinformation.num"/></td>
			<td><s:property value="#studentinformation.name"/></td>
			<td><s:property value="#studentinformation.phone"/></td>
			<td><s:property value="#studentinformation.yuanxi"/></td>
			<td><s:property value="#studentinformation.zhuanye"/></td>
			<td><s:property value="#studentinformation.sex"/></td>
			<td><s:property value="#studentinformation.nianfen"/></td>
			<td><s:property value="#studentinformation.leadteacher"/></td>
			<td><s:property value="#studentinformation.pname"/></td>
			
			<td align="center">
			 <a href="studentinformationDelete.action?studentinformation.num=<s:property value="#studentinformation.num"/>" onClick="if(!confirm('确定删除吗？'))return false;else return true;">删除</a> 
			 <a href="studentinformationUpdateView.action?studentinformation.num=<s:property value="#studentinformation.num"/>">修改</a> 
			</td>
		</tr>
		</s:iterator>
	</table>
	<table width="900" align="center" border="0">
  		<tr align="center">
  		<td>
			<s:set name="page" value="#request.page"></s:set>
				<s:if test="#page.totalSize!=0">
					[第<s:property value="#page.pageNow"/>页/共<s:property value="#page.totalPage"/>页]
				</s:if> 
  				<s:if test="#page.hasFirst">
					<a href="studentinformationList.action?pageNow=1&studentinformation.num=<s:property value="studentinformation.num"/>">首页</a>
				</s:if>
				<s:if test="#page.hasPre">
					<a href="studentinformationList.action?pageNow=<s:property value="#page.pageNow-1"/>&studentinformation.num=<s:property value="studentinformation.num"/>">上一页</a>
				</s:if>
				<s:if test="#page.hasNext">
					<a href="studentinformationList.action?pageNow=<s:property value="#page.pageNow+1"/>&studentinformation.num=<s:property value="studentinformation.num"/>">下一页</a>
				</s:if>
				<s:if test="#page.hasLast">
					<a href="studentinformationList.action?pageNow=<s:property value="#page.totalPage"/>&studentinformation.num=<s:property value="studentinformation.num"/>">尾页</a>
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