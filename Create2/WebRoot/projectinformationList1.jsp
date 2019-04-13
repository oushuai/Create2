<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <title>系统用户</title>
    <link rel="stylesheet" href="./list.css" type="text/css"></link>
    <script>  document.getElementById("projectinformation").style.display="none";</script>
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
  </head>
  <div align="center">
  <h1 style="padding-top:20px;">项目汇总表</h1>
  <table width="900px" border="0">
  
  <hr>

  		<tr>
  		<td>
    <table width="900" align="center" border="0">
  		<tr>		
  		<td>
  		<s:if test="#session.user1.quanxian!='关闭通道'">
			<a href="projectinformationAddView.action" target="rightFrame"><img alt="" src="./images/add.jpg" ></a>
  			<a href="projectinformationAddView.action" target="rightFrame">增加</a>
			</s:if>
			<s:if test="#session.user1.quanxian=='关闭通道'">
			<img alt="" src="./images/add.jpg" >
			<a name="s2" id="s2" value="修改" onclick="changeValue();">增加</a>
			</s:if>

  		</td>
  		</tr>
  	</table> 
	<table width="900" align="center" border="0">
  		<tr>
  			<td>
  			查询结果：共 <s:property value="#request.page.totalSize"/> 项。
  			</td>
  		</tr>
  	</table>
  	<table width="900" align="center" border="1">
  		<tr align="center" class="tr">
  			<td>学校名称</td><td>项目名称</td><td>项目负责人信息</td><td>指导老师信息</td><td>申报时间</td><td>操作</td>
  		</tr>
  		<s:iterator value="#request.list" id="projectinformation">
  		<tr align="center" class="tr1"> 		    
			<td><s:property value="#projectinformation.sname"/></td>			
			<td><s:property value="#projectinformation.pname"/></td>
			<td><s:property value="#projectinformation.leadername"/><br>
			<s:property value="#projectinformation.leadernum"/></td>			
			<td><s:property value="#projectinformation.leadteacher"/><br>
			<s:property value="#projectinformation.rank"/></td>
			<td><s:property value="%{getText('{0,date,yyyy-MM-dd HH:mm:ss}', {#projectinformation.ptime})}"/></td>			
			
			
			
			<td align="center">
			<s:if test="#session.user1.quanxian!='关闭通道'">
			 <a href="projectinformationDelete.action?projectinformation.pnum=<s:property value="#projectinformation.pnum"/>" onClick="if(!confirm('确定删除吗？'))return false;else return true;">删除</a>
			<a href="projectinformationUpdateView.action?projectinformation.pnum=<s:property value="#projectinformation.pnum"/>">修改</a>
			</s:if>
			<s:if test="#session.user1.quanxian=='关闭通道'">
			<a name="s1" id="s1" value="修改" onclick="changeValue();">修改</a>
			</s:if>
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
					<a href="projectinformationList1.action?pageNow=1&projectinformation.pnum=<s:property value="projectinformation.pnum"/>">首页</a>
				</s:if>
				<s:if test="#page.hasPre">
					<a href="projectinformationList1.action?pageNow=<s:property value="#page.pageNow-1"/>&projectinformation.pnum=<s:property value="projectinformation.pnum"/>">上一页</a>
				</s:if>
				<s:if test="#page.hasNext">
					<a href="projectinformationList1.action?pageNow=<s:property value="#page.pageNow+1"/>&projectinformation.pnum=<s:property value="projectinformation.pnum"/>">下一页</a>
				</s:if>
				<s:if test="#page.hasLast">
					<a href="projectinformationList1.action?pageNow=<s:property value="#page.totalPage"/>&projectinformation.pnum=<s:property value="projectinformation.pnum"/>">尾页</a>
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