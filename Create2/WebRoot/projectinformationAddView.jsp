<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="/struts-dojo-tags" prefix="sx"%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<% //request.setCharacterEncoding("UTF-8");%>
<html>
  <head>
    <title>项目</title>
    <link rel="stylesheet" href="./stylesheet.css" type="text/css"></link>
		<script type="text/javascript" src="<%=request.getContextPath()%>/dwr/engine.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/dwr/util.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/dwr/interface/AjaxProjectinformationService.js"></script>
		<script type="text/javascript">
	      function check3() {
	        var pnum=document.all.pnum.value;
	        if (pnum=="") {
	          window.alert("项目编号不能为空！");
	          return false;	      
	        }
	        AjaxProjectinformationService.exist(pnum,show1);
	      }
	    function show1(data) {
	        if (data) {
	          window.alert("该项目编号已经存在！");
	          return false;
	        }
	      }
		</script>
		<script type="text/javascript">
window.onload = function(){
getYear();
};
function getYear(){

function getEle(id){
return document.getElementById(id);
}
inputNow = getEle("now"),
d = new Date(),
nowYear = +d.getFullYear();
inputNow.value = nowYear;
}
</script>
 </head>
  <body>
  
  <h1 align="center">
<script>setInterval("time.innerHTML=new Date().getFullYear();");</script>
<div id="time"></div>年湖南省大学生研究性学习和创新性实验计划项目汇总表</h1>
  
  <br />
  <s:form action="projectinformationAdd.action" method="post" theme="simple" onsubmit="return check3();">
  <table style="border: thin dashed #008080;" width="500" align="center">
  <tr>
  <td style="width: 45%">&nbsp;</td>
  <td style="width: 55%">&nbsp;</td>
  </tr>
   <tr>
  <td align="right">
  	学校代码:
  </td>
  <td>
  	<s:textfield name="projectinformation.scode" required="required" label="学校代码" size="" maxlength="5" onkeyup="this.value=this.value.replace(/\D/g,'')" id="scode"/>
  </td>
  </tr>

  <tr>
<td align="right">
  	学校名称:
  </td>
  <td>
  	<s:textfield name="projectinformation.sname" required="required" label="学校名称" size="10" maxlength="10" onkeyup="this.value=this.value.replace(/^ +| +$/g,'')" id="sname"/>
  </td>
  </tr>
    <tr>
  <td align="right">
  	项目编号:
  </td>
  <td>
  	<s:textfield name="projectinformation.pnum" required="required" label="项目编号" size="12" maxlength="12" onblur="check3()" onkeyup="this.value=this.value.replace(/\D/g,'')" id="pnum"/>
  </td>
  </tr>
  <tr>
  <td align="right">
  	项目名称:
  </td>
  <td>
  	<s:textfield name="projectinformation.pname" required="required" label="项目名称" size="50" maxlength="50" id="pname"/>
  </td>
  </tr>
  <tr>
   <td align="right">
  	姓名:
  </td>
  <td>
  	<s:textfield name="projectinformation.leadername" required="required" label="姓名" size="10" maxlength="10" id="leadername"/>
  </td>
  </tr>
  <tr>
   <td align="right">
  	学号:
  </td>
  <td>
  	<s:textfield name="projectinformation.leadernum" required="required" onkeyup="this.value=this.value.replace(/\D/g,'')" label="学号" size="10" maxlength="10" id="leadernum"/>
  </td>
  </tr>
   <tr>
   <td align="right">
  	人数:
  </td>
  <td>
  	<s:textfield name="projectinformation.rs" required="required" onkeyup="this.value=this.value.replace(/\D/g,'')" label="人数" size="2" maxlength="2" id="rs"/>
  </td>
  </tr>
  <tr>
   <td align="right">
  	项目其他成员（不超过4个）:
  </td>
  <td>
  	<s:textarea name="projectinformation.others" cols="60" rows="4" required="required" label="其他成员" size="80" maxlength="80" id="others"/>
  </td>
  </tr>
   <tr>
   <td align="right">
  	指导老师:
  </td>
  <td>
  	<s:textfield name="projectinformation.leadteacher" required="required" label="指导老师" size="10" maxlength="10" id="leadteacher"/>
  </td>
  </tr>
   <tr>
   <td align="right">
  	职称:
  </td>
  <td>
  	<s:textfield name="projectinformation.rank" label="职称" id="rank" />
  </td>
  </tr>
   <tr>
   <td align="right">
  	学校拨款（元）:
  </td>
  <td>
  	<s:select list="{'','5000','10000'}" value="''" required="required" name="projectinformation.money" label="职称" id="money"></s:select>
  </td>
  </tr>
  <tr>
   <td align="right">
  	项目完成时间:
  </td>
  <td>
  	<s:textfield name="projectinformation.finish" label="项目完成时间" size="10" maxlength="10" id="finsih"/>
  </td>
  </tr>
   <tr>
   <td align="right">
  	项目科类:
  </td>
  <td>
  	<s:select list="{'','文科','理科'}" value="''" required="required" name="projectinformation.kemu" label="项目科类"></s:select>
  </td>
  </tr>
  <tr>
  <td align="right">
  	一级学科:
  </td>
  <td>
  	<s:textfield name="projectinformation.yijixueke" required="required" label="一级学科" onkeyup="this.value=this.value.replace(/\D/g,'')" size="3" maxlength="3" id="yijixueke"/>
  </td>
  </tr>
   <tr>
   <td align="right">
  	简介:
  </td>
  <td>
  <div style='width: 100px;display:block;word-break: break-all;word-wrap: break-word;'>
<s:textarea name="projectinformation.jianjie" cols="60" rows="6" required="required" label="简介" size="200" maxlength="200" id="jianjie"/> 
 </div>
  </td>
  </tr>
   <tr>
   <td align="right">
  	备注:
  </td>
  <td>
<s:textarea name="projectinformation.beizhu" cols="60" rows="6" label="beizhu" size="100" maxlength="100" id="beizhu"/> 
  </td>
  </tr>
   <tr> 
  <td>
    <%
    java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat(  
     "yyyy-MM-dd HH:mm:ss");  
   java.util.Date currentTime = new java.util.Date();  
   String ptime = simpleDateFormat.format(currentTime).toString();  
     %>
  	<input name="projectinformation.ptime" id="ptime" type="hidden" value="<%=ptime %>"/>
  	<s:hidden name="projectinformation.jindu"></s:hidden>
  </td>
  </tr>
  <tr>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  </tr>
  <tr>
  <td align="center" colspan="2">
  <s:submit value="确定"/>
  <s:reset value="重置" />
  </td>
  </tr>
  </table>
  </s:form>
  </div>
  </body>
</html>
