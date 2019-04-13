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
  <s:form action="jiezhuanUpdate.action" method="post" theme="simple">
<table align="center" width="580" border="1">
<tr>

<td align="center" colspan="2">项目名称</td><td colspan="2"> <s:textarea name="jiezhuan.pname" cols="40" rows="2" size="60" maxlength="60" required="required" id="pname"/></td></tr>
<tr><td align="center">项目来源</td><td> <s:textfield name="jiezhuan.source" size="20" maxlength="40" required="required" id="source"/></td>
<td align="center">研究年限</td><td> <s:textfield name="jiezhuan.nianxian" size="20" maxlength="40" required="required" id="nianxian"/></td>
</tr>
<tr><td align="center">项目原负责人</td><td> <s:textfield name="jiezhuan.leadername" size="20" maxlength="20" required="required" id="leadername"/></td>
<td align="center">项目新负责人</td><td> 
<s:textfield name="jiezhuan.leadername1" size="20" maxlength="20" required="required" id="leadername1"/></td>
</tr>
<tr><td align="center"  colspan="2">项目结转的主客观原因</td><td  colspan="2"> <s:textarea name="jiezhuan.yuanyin"  cols="40" rows="4" size="200" maxlength="200" required="required" id="yuanyin"/></td></tr>
<tr><td align="center"  colspan="2">项目成员变动情况</td><td  colspan="2"> <s:textarea name="jiezhuan.biandong"  cols="40" rows="4" size="200" maxlength="200" required="required" id="biandong"/></td></tr>
<tr><td align="center"  colspan="2">课题进展情况</td><td  colspan="2"> <s:textarea name="jiezhuan.jinzhan"  cols="40" rows="4" size="200" maxlength="200" required="required" id="jinzhan"/></td></tr>

<tr><td align="center"  colspan="2">改进意见（包括何时能够结题）</td><td  colspan="2"> <s:textarea name="jiezhuan.yijian"  cols="40" rows="4" size="200" maxlength="200" required="required" id="yijian" /></td></tr>
<tr><td align="center"  colspan="2">指导教师意见</td><td  colspan="2"> <s:textarea name="jiezhuan.yijian1" size="200" cols="40" rows="4" maxlength="200" required="required" id="yijian1"/></td></tr>
<tr><td align="center"  colspan="2">所在学院意见</td><td  colspan="2"> <s:textarea name="jiezhuan.yijian2" size="200" cols="40" rows="4" maxlength="200" required="required" id="yijian2"/></td></tr>

  	<s:hidden name="jiezhuan.ztime"></s:hidden>
  	<s:hidden name="jiezhuan.jindu"></s:hidden>
  
  	<s:hidden name="jiezhuan.ztime1"></s:hidden>
 
 
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