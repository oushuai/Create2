<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <title>系统用户</title>
    <link rel="stylesheet" href="./list.css" type="text/css"></link>
  </head>
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
  <h1 style="padding-top:20px;">项目中期检查表</h1>
  <table width="900px" border="0">
  
  <hr>

  		<tr>
  		<td>
    <table width="900" align="center" border="0">
  		<tr>		
  		<td>
  		<s:if test="#session.user1.quanxian1!='关闭通道'">
			<a href="mediumAddView.action" target="rightFrame"><img alt="" src="./images/add.jpg" ></a>
  			<a href="mediumAddView.action" target="rightFrame">增加</a>
			</s:if>
			<s:if test="#session.user1.quanxian1=='关闭通道'">
			<img alt="" src="./images/add.jpg" >
			<a name="s2" id="s2" value="修改" onclick="changeValue();">增加</a>
			</s:if>
  			
  		</td>
  		</tr>
  	</table>
  	<br><br><br>
  	<table width="1000" align="center" border="1">
  		<tr align="center" class="tr">
  			<td>项目名称</td><td>项目负责人</td><td>指导教师姓名</td><td>资助金额</td><td>起止年月</td><td>填报日期</td><td>审核意见</td><td>操作</td>
  		</tr>
  		<s:iterator value="#request.list" id="medium">
  		<tr align="center" class="tr1">
  		    <td><s:property value="#medium.pname"/></td>
			<td><s:property value="#medium.leadername"/></td>
			<td><s:property value="#medium.leaderteacher"/></td>
			
			<td><s:property value="#medium.zizhu"/></td>
			<td><s:property value="#medium.qizhi"/></td>
			<td><s:property value="#medium.tianbao"/></td>
			<td align="left"><li><s:property value="#medium.jindu"/>
			<s:property value="%{getText('{0,date,yyyy-MM-dd HH:mm}', {#medium.mtime1})}"/></li></td>
			<td align="center">
		<s:if test="#session.user1.quanxian1!='关闭通道'">
			 <a href="mediumDelete.action?medium.pname=<s:property value="#medium.pname"/>" onClick="if(!confirm('确定删除吗？'))return false;else return true;">删除</a>
			<a href="mediumUpdateView.action?medium.pname=<s:property value="#medium.pname"/>">修改</a>
			</s:if>
			<s:if test="#session.user1.quanxian1=='关闭通道'">
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
					<a href="mediumList1.action?pageNow=1&medium.pname=<s:property value="medium.pname"/>">首页</a>
				</s:if>
				<s:if test="#page.hasPre">
					<a href="mediumList1.action?pageNow=<s:property value="#page.pageNow-1"/>&medium.pname=<s:property value="medium.pname"/>">上一页</a>
				</s:if>
				<s:if test="#page.hasNext">
					<a href="mediumList1.action?pageNow=<s:property value="#page.pageNow+1"/>&medium.pname=<s:property value="medium.pname"/>">下一页</a>
				</s:if>
				<s:if test="#page.hasLast">
					<a href="mediumList1.action?pageNow=<s:property value="#page.totalPage"/>&medium.pname=<s:property value="medium.pname"/>">尾页</a>
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