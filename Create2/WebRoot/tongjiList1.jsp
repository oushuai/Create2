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
  <h1 style="padding-top:20px;">大学生研究性学习和创新性实验计划实施情况及成果统计表</h1>
  <table width="920px" border="0">
  
  <hr>

  		<tr>
  		<td>
    
    <table width="920px" align="center" border="0">
  		<tr>		
  		<td>
  		<s:if test="#session.user1.quanxian3!='关闭通道'">
			<a href="tongjiAddView.action" target="rightFrame"><img alt="" src="./images/add.jpg" ></a>
  			<a href="tongjiAddView.action" target="rightFrame">增加</a>
			</s:if>
			<s:if test="#session.user1.quanxian3=='关闭通道'">
			<img alt="" src="./images/add.jpg" >
			<a name="s2" id="s2" value="修改" onclick="changeValue();">增加</a>
			</s:if>
  			
  		</td>
  		</tr>
  	</table>
  	<br><br><br>
  	<table width="920px" align="center" border="1">
  		<tr align="center" class="tr">
  			<td>指导老师</td><td>项目名称</td><td>立项时间</td><td>项目级别</td><td>进度</td><td>操作</td>
  		</tr>
  		<s:iterator value="#request.list" id="tongji">
  		<tr align="center" class="tr1">
  		    <td><s:property value="#tongji.leaderteacher"/></td>
			<td><s:property value="#tongji.pname"/></td>
			<td><s:property value="#tongji.lixiang"/></td>
			<td><s:property value="#tongji.jibie"/></td>
			<td><li><s:property value="#tongji.jindu"/>
			<s:property value="%{getText('{0,date,yyyy-MM-dd HH:mm}', {#tongji.gtime1})}"/></li>
			</td>					
			<td align="center">
			  	<s:if test="#session.user1.quanxian3!='关闭通道'">
			 <a href="tongjiDelete.action?tongji.pname=<s:property value="#tongji.pname"/>" onClick="if(!confirm('确定删除吗？'))return false;else return true;">删除</a>
			<a href="tongjiUpdateView.action?tongji.pname=<s:property value="#tongji.pname"/>">修改</a>
			</s:if>
			<s:if test="#session.user1.quanxian3=='关闭通道'">
			<a name="s1" id="s1" value="修改" onclick="changeValue();">修改</a>
			</s:if>
			  
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
					<a href="tongjiList1.action?pageNow=1&tongji.pname=<s:property value="tongji.pname"/>">首页</a>
				</s:if>
				<s:if test="#page.hasPre">
					<a href="tongjiList1.action?pageNow=<s:property value="#page.pageNow-1"/>&tongji.pname=<s:property value="tongji.pname"/>">上一页</a>
				</s:if>
				<s:if test="#page.hasNext">
					<a href="tongjiList1.action?pageNow=<s:property value="#page.pageNow+1"/>&tongji.pname=<s:property value="tongji.pname"/>">下一页</a>
				</s:if>
				<s:if test="#page.hasLast">
					<a href="tongjiList1.action?pageNow=<s:property value="#page.totalPage"/>&tongji.pname=<s:property value="tongji.pname"/>">尾页</a>
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