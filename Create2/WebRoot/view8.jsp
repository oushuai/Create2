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
<h1 align="center">结转申请表</h1>
  <s:form action="view88.action" method="post" theme="simple">
<table align="center" width="580" border="1">
<tr><td align="center" colspan="2">项目名称</td><td colspan="2"> <s:textarea name="jiezhuan.pname" cols="40" rows="2" disabled="true" size="60" maxlength="60" required="required" id="pname"/></td></tr>
<tr><td align="center">项目来源</td><td> <s:textfield name="jiezhuan.source" size="20" maxlength="40" required="required" id="source" disabled="true"/></td>
<td align="center">研究年限</td><td> <s:textfield name="jiezhuan.nianxian" size="20" maxlength="40" required="required" id="nianxian" disabled="true"/></td>
</tr>
<tr><td align="center">项目原负责人</td><td> <s:textfield name="jiezhuan.leadername" size="20" maxlength="20" required="required" id="leadername" disabled="true"/></td>
<td align="center">项目新负责人</td><td> 
<s:textfield name="jiezhuan.leadername1" size="20" maxlength="20" required="required" id="leadername1" disabled="true"/></td>
</tr>
<tr><td align="center"  colspan="2">项目结转的主客观原因</td><td  colspan="2"> <s:textarea name="jiezhuan.yuanyin" disabled="true" cols="40" rows="4" size="200" maxlength="200" required="required" id="yuanyin"/></td></tr>
<tr><td align="center"  colspan="2">项目成员变动情况</td><td  colspan="2"> <s:textarea name="jiezhuan.biandong"  disabled="true" cols="40" rows="4" size="200" maxlength="200" required="required" id="biandong"/></td></tr>
<tr><td align="center"  colspan="2">课题进展情况</td><td  colspan="2"> <s:textarea name="jiezhuan.jinzhan" disabled="true" cols="40" rows="4" size="200" maxlength="200" required="required" id="jinzhan"/></td></tr>

<tr><td align="center"  colspan="2">改进意见（包括何时能够结题）</td><td  colspan="2"> <s:textarea name="jiezhuan.yijian" disabled="true"  cols="40" rows="4" size="200" maxlength="200" required="required" id="yijian" /></td></tr>
<tr><td align="center"  colspan="2">指导教师意见</td><td  colspan="2"> <s:textarea name="jiezhuan.yijian1" size="200" disabled="true" cols="40" rows="4" maxlength="200" required="required" id="yijian1"/></td></tr>
<tr><td align="center"  colspan="2">所在学院意见</td><td  colspan="2"> <s:textarea name="jiezhuan.yijian2" size="200" disabled="true" cols="40" rows="4" maxlength="200" required="required" id="yijian2"/></td></tr>
 <tr><td colspan="5" width="100%">审核意见<br>
<s:radio list="{'校级评委审核通过','校级评委审核不通过'}" name="jiezhuan.jindu" required="required" label="审核意见" size="20" maxlength="20" id="jindu" />
 </td>
</tr>
 <%
    java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat(  
     "yyyy-MM-dd HH:mm:ss");  
   java.util.Date currentTime = new java.util.Date();  
   String ztime1 = simpleDateFormat.format(currentTime).toString();  
     %>
  	<input name="jiezhuan.ztime1" id="ztime1" type="hidden" value="<%=ztime1 %>"/>
  	<s:hidden name="jiezhuan.ztime"></s:hidden>
  	
  <s:hidden name="jiezhuan.pname"></s:hidden>
  	<s:hidden name="jiezhuan.source"></s:hidden>
  	<s:hidden name="jiezhuan.nianxian"></s:hidden>
 <s:hidden name="jiezhuan.leadername"></s:hidden>
 <s:hidden name="jiezhuan.biandong"></s:hidden>
  	<s:hidden name="jiezhuan.leadername1"></s:hidden>
 <s:hidden name="jiezhuan.jinzhan"></s:hidden>
  	<s:hidden name="jiezhuan.yijian"></s:hidden>
  	<s:hidden name="jiezhuan.yijian1"></s:hidden>
  	<s:hidden name="jiezhuan.yijian2"></s:hidden>
  	<s:hidden name="jiezhuan.yuanyin"></s:hidden>
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