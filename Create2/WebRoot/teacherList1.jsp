<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
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
  			<a href="teacherAddView.action" target="rightFrame"><img alt="" src="./images/add.jpg" ></a>
  			<a href="teacherAddView.action" target="rightFrame">增加</a>
  		</td>
  		</tr> 		
  	</table>
   	</s:if>
   	<br><br><br><br>
  	<table width="900" align="center" border="1">
  		<tr align="center" class="tr">
  			<td>姓名</td><td>性别</td><td>院系</td><td>电话</td><td>职称</td><td>情况</td><td>操作</td>
  		</tr>
  		<s:iterator value="#request.list" id="teacher">
  		<tr align="center" class="tr1">
			<td><s:property value="#teacher.name"/></td>
			<td><s:property value="#teacher.sex"/></td>
			<td><s:property value="#teacher.yuanxi"/></td>
			<td><s:property value="#teacher.phone"/></td>
			<td><s:property value="#teacher.rank"/></td>
			<td><s:property value="#teacher.siuation"/></td>
			<td align="center">
			
			 <a href="teacherUpdateView.action?teacher.name=<s:property value="#teacher.name"/>">修改</a> 
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
					<a href="teacherList1.action?pageNow=1&teacher.name=<s:property value="teacher.name"/>">首页</a>
				</s:if>
				<s:if test="#page.hasPre">
					<a href="teacherList1.action?pageNow=<s:property value="#page.pageNow-1"/>&teacher.name=<s:property value="teacher.name"/>">上一页</a>
				</s:if>
				<s:if test="#page.hasNext">
					<a href="teacherList1.action?pageNow=<s:property value="#page.pageNow+1"/>&teacher.name=<s:property value="teacher.name"/>">下一页</a>
				</s:if>
				<s:if test="#page.hasLast">
					<a href="teacherList1.action?pageNow=<s:property value="#page.totalPage"/>&teacher.name=<s:property value="teacher.name"/>">尾页</a>
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