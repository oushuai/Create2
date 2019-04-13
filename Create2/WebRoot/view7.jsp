<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>系统用户</title> 
    <link rel="stylesheet" href="./stylesheet.css" type="text/css"></link>
</head>
<body>
<h1 align="center">邵阳学院大学生研究性学习和创新性实验计划项目</h1>
<h1 align="center">延期结题申请表</h1>
  <s:form action="view77.action" method="post" theme="simple">
<table align="center" width="580" border="1">
<tr>
<td align="center">项目编号</td><td> <s:textfield name="yanqi.pnum" size="20" maxlength="20" required="required" id="pnum" disabled="true"/></td>
<td align="center">项目名称</td><td> <s:textarea name="yanqi.pname" cols="30" rows="2" size="60" maxlength="60" required="required" id="pname" disabled="true"/></td></tr>
<tr><td align="center">项目来源</td><td> <s:textfield name="yanqi.source" size="20" maxlength="40" required="required" id="source" disabled="true"/></td>
<td align="center">研究年限</td><td> <s:textfield name="yanqi.nianxian" size="20" maxlength="40" required="required" id="nianxian" disabled="true"/></td>
</tr>
<tr><td align="center">项目负责人</td><td> <s:textfield name="yanqi.leadername" size="20" maxlength="20" required="required" id="leadername" disabled="true"/></td>
<td align="center">指导教师</td><td> 
<s:textfield name="yanqi.leaderteacher" size="20" maxlength="20" required="required" id="leaderteacher" disabled="true"/></td>
</tr>
<tr><td align="center"  colspan="2">课题进展情况</td><td  colspan="2"> <s:textarea name="yanqi.jinzhan"  cols="40" rows="4" size="50" maxlength="50" required="required" disabled="true" id="jinzhan"/></td></tr>
<tr><td align="center"  colspan="2">不能按期结题的主客观原因</td><td  colspan="2"> <s:textarea name="yanqi.yuanyin"  cols="40" rows="4" size="50" maxlength="50" required="required" disabled="true" id="yuanyin"/></td></tr>
<tr><td align="center"  colspan="2">改进意见（包括何时能够结题）</td><td  colspan="2"> <s:textarea name="yanqi.yijian"  cols="40" rows="4" size="50" maxlength="50" required="required" disabled="true" id="yijian" /></td></tr>
<tr><td align="center"  colspan="2">指导教师意见</td><td  colspan="2"> <s:textarea name="yanqi.yijian1" size="50" cols="40" rows="4" maxlength="50" required="required" disabled="true" id="yijian1"/></td></tr>
<tr><td align="center"  colspan="2">所在学院意见</td><td  colspan="2"> <s:textarea name="yanqi.yijian2" size="50" cols="40" rows="4" maxlength="50" required="required" disabled="true" id="yijian2"/></td></tr>
 <tr><td colspan="5" width="100%">审核意见<br>
<s:radio list="{'校级评委审核通过','校级评委审核不通过'}" name="yanqi.jindu" required="required" label="审核意见" size="20" maxlength="20" id="jindu" />
 </td>
</tr>
 <%
    java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat(  
     "yyyy-MM-dd HH:mm:ss");  
   java.util.Date currentTime = new java.util.Date();  
   String ytime1 = simpleDateFormat.format(currentTime).toString();  
     %>
  	<input name="yanqi.ytime1" id="ytime1" type="hidden" value="<%=ytime1 %>"/>
  	<s:hidden name="yanqi.ytime"></s:hidden>
  	<s:hidden name="yanqi.pnum"></s:hidden>
  <s:hidden name="yanqi.pname"></s:hidden>
  	<s:hidden name="yanqi.source"></s:hidden>
  	<s:hidden name="yanqi.nianxian"></s:hidden>
 <s:hidden name="yanqi.leadername"></s:hidden>
  	<s:hidden name="yanqi.leaderteacher"></s:hidden>
 <s:hidden name="yanqi.jinzhan"></s:hidden>
  	<s:hidden name="yanqi.yijian"></s:hidden>
  	<s:hidden name="yanqi.yijian1"></s:hidden>
  	<s:hidden name="yanqi.yijian2"></s:hidden>
  	<s:hidden name="yanqi.yuanyin"></s:hidden>
<tr>
  <td align="center" colspan="5">
  <s:submit value="确定"/>
  <s:reset value="重置" />
  </td>
  </tr>
</table>
</s:form>

<tr><td>&nbsp;</td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注：本表栏空不够可另附纸张</td></tr>
</body>
</html>