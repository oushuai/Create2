<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>系统用户</title> 
    <link rel="stylesheet" href="./stylesheet.css" type="text/css"></link>
</head>
<body>
<h1 align="center">大学生研究性学习和创新性实验计划实施情况及成果统计表</h1>
  <s:form action="view99.action" method="post" theme="simple">
<table align="center" width="580" border="1">
<tr>
<td align="center" colspan="2">项目名称</td><td> <s:textarea name="tongji.pname" cols="40" rows="2" size="100" maxlength="100" required="required" disabled="true" id="pname"/></td></tr>
<tr>
<td align="center" colspan="2">立项时间</td><td> <s:textfield name="tongji.lixiang" size="60" maxlength="60" required="required" disabled="true" id="lixiang"/></td></tr>
<tr><td align="center" colspan="2">项目级别</td><td> <s:textfield name="tongji.jibie" size="20" maxlength="40" required="required" disabled="true" id="jibie"/></td>
</tr>
<tr><td align="center" rowspan="4">项目学生<br />获得研究成果</td></tr>
<tr><td align="center">发表论文</td><td> <s:textarea name="tongji.lunwen"  cols="40" rows="4" size="200" maxlength="200" required="required" disabled="true" id="lunwen"/></td></tr>
<tr><td align="center">授权专利</td><td> <s:textarea name="tongji.zhuanli"  cols="40" rows="4" size="200" maxlength="200" required="required" disabled="true" id="zhuanli"/></td></tr>
<tr><td align="center">制作科技作品</td><td> <s:textarea name="tongji.zuopin"  cols="40" rows="4" size="200" maxlength="200" required="required" disabled="true" id="zuopin" /></td></tr>
<tr><td align="center" rowspan="3">项目学生<br />学科竞赛获奖</td></tr>
<tr><td align="center">省级竞赛</td><td> <s:textarea name="tongji.jingsai" size="200" cols="40" rows="4" maxlength="200" required="required" disabled="true" id="jingsai"/></td></tr>
<tr><td align="center">全国竞赛</td><td> <s:textarea name="tongji.jingsai1" size="200" cols="40" rows="4" maxlength="200" required="required" disabled="true" id="jingsai1"/></td></tr>
 <tr><td colspan="5" width="100%">审核意见<br>
<s:radio list="{'校级评委审核通过','校级评委审核不通过'}" name="tongji.jindu" required="required" label="审核意见" size="20" maxlength="20" id="jindu" />
 </td>
</tr>
 <%
    java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat(  
     "yyyy-MM-dd HH:mm:ss");  
   java.util.Date currentTime = new java.util.Date();  
   String gtime1 = simpleDateFormat.format(currentTime).toString();  
     %>
  	<input name="tongji.gtime1" id="gtime1" type="hidden" value="<%=gtime1 %>"/>
  	<s:hidden name="tongji.gtime"></s:hidden>
  	<s:hidden name="tongji.leaderteacher"></s:hidden>
  <s:hidden name="tongji.pname"></s:hidden>
  	<s:hidden name="tongji.lixiang"></s:hidden>
  	<s:hidden name="tongji.jibie"></s:hidden>
 <s:hidden name="tongji.lunwen"></s:hidden>
  	<s:hidden name="tongji.zhuanli"></s:hidden>
 <s:hidden name="tongji.zuopin"></s:hidden>
  	<s:hidden name="tongji.jingsai"></s:hidden>
  	<s:hidden name="tongji.jingsai1"></s:hidden>
  	
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