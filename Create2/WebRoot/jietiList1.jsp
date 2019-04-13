<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <title>系统用户</title>
    <link rel="stylesheet" href="./list.css" type="text/css"></link>
  </head>
   <style type="text/css">

.input_out{color:blue;}

.input_move{color: red;}

</style>
<script type="text/javascript">
function changeValue(){
    var btnVal=document.getElementById("s1");
    if(btnVal.value=="修改")
    {
        document.getElementById("s1").value="通道关闭,等待审核中…";
    }
    else{alert("通道已经关闭");}
}
function changeValue1(){
    var btnVal=document.getElementById("s2");
    if(btnVal.value=="增加")
    {
        document.getElementById("s1").value="通道关闭,等待审核中…";
    }
    else{alert("通道已经关闭");}
}
</script>
  <body>
  <div align="center">
  <h1 style="padding-top:20px;">项目结题报告</h1>
  <table width="900px" border="0">
  
  <hr>

  		<tr>
  		<td>
    <table width="900" align="center" border="0">
  		<tr>		
  		<td><s:if test="#session.user1.quanxian2!='关闭通道'">
			<a href="jietiAddView.action" target="rightFrame"><img alt="" src="./images/add.jpg" ></a>
  			<a href="jietiAddView.action" target="rightFrame">增加</a>
			</s:if>
			<s:if test="#session.user1.quanxian2=='关闭通道'">
			<img alt="" src="./images/add.jpg" >
			<a name="s2" id="s2" value="修改" onclick="changeValue();">增加</a>
			</s:if>
  		</td>
  		</tr>
  	</table>
  	<br><br><br>
  	<table width="1000" align="center" border="1">
  		<tr align="center" class="tr">
  			<td>项目名称</td><td>学生姓名</td><td>所在院系</td><td>项目实施时间</td><td>指导教师</td><td>联系电话</td><td>填表日期</td><td>进度</td><td>操作</td>
  		</tr>
  		<s:iterator value="#request.list" id="jieti">
  		<tr align="center" class="tr1">
  		    <td><s:property value="#jieti.pname"/></td>
			<td><s:property value="#jieti.leadername"/></td>
			<td><s:property value="#jieti.yuanhexi"/></td>
			<td><s:property value="#jieti.shishi"/></td>
			<td><s:property value="#jieti.leaderteacher"/></td>
			<td><s:property value="#jieti.phone"/></td>
			<td><s:property value="#jieti.tianbiao"/></td>
			<td align="left"><li><s:property value="#jieti.jindu"/>
			<s:property value="%{getText('{0,date,yyyy-MM-dd HH:mm}', {#jieti.jtime1})}"/></li>
			<li><s:property value="#jieti.jindu1"/>
			<s:property value="%{getText('{0,date,yyyy-MM-dd HH:mm}', {#jieti.jtime2})}"/></li></td>
			<td align="center">
			<s:if test="#session.user1.quanxian2!='关闭通道'">
			 <a href="jietiDelete.action?jieti.pname=<s:property value="#jieti.pname"/>" onClick="if(!confirm('确定删除吗？'))return false;else return true;">删除</a>
			<a href="jietiUpdateView.action?jieti.pname=<s:property value="#jieti.pname"/>">修改</a>
			</s:if>
			<s:if test="#session.user1.quanxian2=='关闭通道'">
			<a name="s1" id="s1" value="修改" onclick="changeValue();">修改</a>
			</s:if>
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
					<a href="jietiList1.action?pageNow=1&jieti.pname=<s:property value="jieti.pname"/>">首页</a>
				</s:if>
				<s:if test="#page.hasPre">
					<a href="jietiList1.action?pageNow=<s:property value="#page.pageNow-1"/>&jieti.pname=<s:property value="jieti.pname"/>">上一页</a>
				</s:if>
				<s:if test="#page.hasNext">
					<a href="jietiList1.action?pageNow=<s:property value="#page.pageNow+1"/>&jieti.pname=<s:property value="jieti.pname"/>">下一页</a>
				</s:if>
				<s:if test="#page.hasLast">
					<a href="jietiList1.action?pageNow=<s:property value="#page.totalPage"/>&jieti.pname=<s:property value="jieti.pname"/>">尾页</a>
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