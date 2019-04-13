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
  			<a href="studentinformationAddView.action" target="rightFrame"><img alt="" src="./images/add.jpg" ></a>
  			<a href="studentinformationAddView.action" target="rightFrame">增加</a>
  		</td>
  		</tr> 		
  	</table>
   	</s:if>
  	<table width="900" align="center" border="1">
  		<tr align="center" class="tr">
  			<td>学号</td><td>姓名</td><td>电话</td><td>院系</td><td>专业</td><td>指导老师</td><td>项目名称</td><td>操作</td>
  		</tr>
  		<s:iterator value="#request.list" id="studentinformation">
  		<tr align="center" class="tr1">
  		    <td><s:property value="#studentinformation.num"/></td>
			<td><s:property value="#studentinformation.name"/></td>
			<td><s:property value="#studentinformation.phone"/></td>
			<td><s:property value="#studentinformation.yuanxi"/></td>
			<td><s:property value="#studentinformation.zhuanye"/></td>
		
			<td><s:property value="#studentinformation.leadteacher"/></td>
			<td><s:property value="#studentinformation.pname"/></td>
			
			<td align="center">
			  
			 <a href="studentinformationUpdateView.action?studentinformation.num=<s:property value="#studentinformation.num"/>">修改</a> 
			</td>
		</tr>
		</s:iterator>
	</table>
	<br> <br> <br> <br> <br>
	<table width="900" align="center" border="0">
  		<tr align="center">
  		<td>
			<s:set name="page" value="#request.page"></s:set>
				
  				<s:if test="#page.hasFirst">
					<a href="studentinformationList1.action?pageNow=1&studentinformation.num=<s:property value="studentinformation.num"/>">首页</a>
				</s:if>
				<s:if test="#page.hasPre">
					<a href="studentinformationList1.action?pageNow=<s:property value="#page.pageNow-1"/>&studentinformation.num=<s:property value="studentinformation.num"/>">上一页</a>
				</s:if>
				<s:if test="#page.hasNext">
					<a href="studentinformationList1.action?pageNow=<s:property value="#page.pageNow+1"/>&studentinformation.num=<s:property value="studentinformation.num"/>">下一页</a>
				</s:if>
				<s:if test="#page.hasLast">
					<a href="studentinformationList1.action?pageNow=<s:property value="#page.totalPage"/>&studentinformation.num=<s:property value="studentinformation.num"/>">尾页</a>
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