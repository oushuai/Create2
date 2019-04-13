<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <title>系统用户</title>
    
    <link rel="stylesheet" href="./list.css" type="text/css"></link>
  </head>
  <body>
  <div align="center">
  <h1 style="padding-top:20px;">项目汇总表</h1>
  <table width="900px" border="0">
  
  <hr>

  		<tr>
  		<td>
  		
  			<form action="projectinformationList.action" method="post">
			项目编号:
			<s:property value="#projectinformation.leadernum" />
			<input type="text" name="projectinformation.pnum" value="<s:property value="projectinformation.pnum" />" size="12" maxlength="12"/>
			<input type="submit" value="查询" class="input" onmouseover="this.style.backgroundColor='rgb(12, 254, 255)';" 
onmouseout="this.style.backgroundColor=' rgb(102, 204, 255)';"/>
  			</form>
  		</td>
  		<td align="right">
  			<img alt="" src="./images/add.jpg" align="absmiddle">
  			<a href="projectinformationAddView.action" target="rightFrame">增加</a>
  		</td>
  		</tr>
  	</table>
  	<div align="left" style="padding-left:80px;">	
  		<span>
  			查询结果：共 <s:property value="#request.page.totalSize"/> 项。
  		</span>
  		</div>
  <br>
  	<table class="table1" border="1">
  		<tr align="center" class="tr">
  			<td>学校名称</td><td>项目编号</td><td>项目名称</td><td>项目负责人姓名</td><td>项目负责人学号</td><td>指导老师姓名</td><td>指导老师职称</td><td>操作</td>
  		</tr>
  		<s:iterator value="#request.list" id="projectinformation">
  		<tr class="tr1" align="center">
  		    
			<td><s:property value="#projectinformation.sname"/></td>
			<td><s:property value="#projectinformation.pnum"/></td>
			<td><s:property value="#projectinformation.pname"/></td>
			<td><s:property value="#projectinformation.leadername"/></td>
			<td><s:property value="#projectinformation.leadernum"/></td>
			
			
			<td><s:property value="#projectinformation.leadteacher"/></td>
			<td><s:property value="#projectinformation.rank"/></td>						
			<td align="center">
			 <a href="projectinformationDelete.action?projectinformation.pnum=<s:property value="#projectinformation.pnum"/>" onClick="if(!confirm('确定删除吗？'))return false;else return true;">删除</a> 
			 <a href="projectinformationUpdateView.action?projectinformation.pnum=<s:property value="#projectinformation.pnum"/>">修改</a> 
			</td>
		</tr>
		</s:iterator>
	</table>
	<table class="table1">
  		<tr align="center">
  		<td>
			<s:set name="page" value="#request.page"></s:set>
				<s:if test="#page.totalSize!=0">
					[第<s:property value="#page.pageNow"/>页/共<s:property value="#page.totalPage"/>页]
				</s:if> 
  				<s:if test="#page.hasFirst">
					<a href="projectinformationList.action?pageNow=1&projectinformation.pnum=<s:property value="projectinformation.pnum"/>">首页</a>
				</s:if>
				<s:if test="#page.hasPre">
					<a href="projectinformationList.action?pageNow=<s:property value="#page.pageNow-1"/>&projectinformation.pnum=<s:property value="projectinformation.pnum"/>">上一页</a>
				</s:if>
				<s:if test="#page.hasNext">
					<a href="projectinformationList.action?pageNow=<s:property value="#page.pageNow+1"/>&projectinformation.pnum=<s:property value="projectinformation.pnum"/>">下一页</a>
				</s:if>
				<s:if test="#page.hasLast">
					<a href="projectinformationList.action?pageNow=<s:property value="#page.totalPage"/>&projectinformation.pnum=<s:property value="projectinformation.pnum"/>">尾页</a>
				</s:if>
		</td>
  		</tr>
  	</table>

  <tr>
  <td>
  <hr />
  </td>
  </tr>

  </div>
  </body>
</html>	