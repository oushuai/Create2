<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <title>系统用户</title>
    <link rel="stylesheet" href="./list.css" type="text/css"></link>
  </head>
  <body>
  <div align="center">
   <h1 style="padding-top:20px;">用户列表</h1>
  <table width="800" border="0">
 
  <hr />
 
  <tr>
  <td>
    <table width="800" align="center" border="0">
  		<tr>
  		<td>
  			<form action="userList.action" method="post">
			用户名:<input type="text" name="user.username" value="<s:property value="user.username" />" size="10" maxlength="10"/>
			<input type="submit" value="查询" class="input" onmouseover="this.style.backgroundColor='rgb(12, 254, 255)';" 
onmouseout="this.style.backgroundColor=' rgb(102, 204, 255)';"/>
  			</form>
  		</td>
  		<td align="right">
  			<img alt="" src="./images/add.jpg" align="absmiddle">
  			<a href="userAddView.action" target="rightFrame">增加</a>
  		</td>
  		</tr>
  	</table>
	<div align="left">	
  		<span>
  			查询结果：共 <s:property value="#request.page.totalSize"/> 项。
  		</span>
  		</div>
  <br>
  	<table width="800" align="center" border="1">
  		<tr align="center" class="tr">
  			<td>用户名</td><td>密码</td><td>用户类型</td><td>二级学院和学生申报权限</td><td>校级评委和学生中期报告权限</td><td>专家评委和学生结题权限</td><td>指导老师和学生延期权限</td><td>学生结转权限</td><td>操作</td>
  		</tr>
  		<s:iterator value="#request.list" id="user">
  		<tr align="center" class="tr1">
			<td><s:property value="#user.username"/></td>
			<td><s:property value="#user.password"/></td>
			<td><s:property value="#user.type"/></td>
			<td><s:property value="#user.quanxian"/></td>
			<td><s:property value="#user.quanxian1"/></td>
			<td><s:property value="#user.quanxian2"/></td>
			<td><s:property value="#user.quanxian3"/></td>
			<td><s:property value="#user.quanxian4"/></td>
			<td align="center">
			 <a href="userDelete.action?user.username=<s:property value="#user.username"/>" onClick="if(!confirm('确定删除吗？'))return false;else return true;">删除</a> 
			 <a href="userUpdateView.action?user.username=<s:property value="#user.username"/>">修改</a> 
			 <a href="userResetPwd.action?user.username=<s:property value="#user.username"/>" onClick="if(!confirm('确定重置密码吗？'))return false;else return true;">密码重置</a> 
			</td>
		</tr>
		</s:iterator>
	</table>
	<table width="800" align="center" border="0">
  		<tr align="center">
  		<td>
			<s:set name="page" value="#request.page"></s:set>
				<s:if test="#page.totalSize!=0">
					[第<s:property value="#page.pageNow"/>页/共<s:property value="#page.totalPage"/>页]
				</s:if> 
  				<s:if test="#page.hasFirst">
					<a href="userList.action?pageNow=1&user.username=<s:property value="user.username"/>">首页</a>
				</s:if>
				<s:if test="#page.hasPre">
					<a href="userList.action?pageNow=<s:property value="#page.pageNow-1"/>&user.username=<s:property value="user.username"/>">上一页</a>
				</s:if>
				<s:if test="#page.hasNext">
					<a href="userList.action?pageNow=<s:property value="#page.pageNow+1"/>&user.username=<s:property value="user.username"/>">下一页</a>
				</s:if>
				<s:if test="#page.hasLast">
					<a href="userList.action?pageNow=<s:property value="#page.totalPage"/>&user.username=<s:property value="user.username"/>">尾页</a>
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