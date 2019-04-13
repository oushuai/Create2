<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>系统用户</title> 
    <link rel="stylesheet" href="./stylesheet.css" type="text/css"></link>
  <%
    java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat(  
     "yyyy-MM-dd HH:mm:ss");  
   java.util.Date currentTime = new java.util.Date();  
   String gtime = simpleDateFormat.format(currentTime).toString();  
     %>
</head>
<body>
<h1 align="center">大学生研究性学习和创新性实验计划实施情况及成果统计表</h1>
  <s:form action="tongjiAdd.action" method="post" theme="simple">
<table align="center" width="580" border="1">
<tr>
<input name="tongji.leaderteacher" id="leaderteacher" type="hidden" value="<s:property value="#session.user1.username" />"/>
<td align="center" colspan="2">项目名称</td><td> <s:textarea name="tongji.pname" cols="40" rows="2" size="100" maxlength="100" required="required" id="pname"/></td></tr>
<tr>
<td align="center" colspan="2">立项时间</td><td> <s:textfield name="tongji.lixiang" size="60" maxlength="60" required="required" id="lixiang"/></td></tr>
<tr><td align="center" colspan="2">项目级别</td><td> <s:textfield name="tongji.jibie" size="20" maxlength="40" required="required" id="jibie"/></td>
</tr>
<tr><td align="center" rowspan="4">项目学生<br />获得研究成果</td></tr>
<tr><td align="center">发表论文</td><td> <s:textarea name="tongji.lunwen"  cols="40" rows="4" size="200" maxlength="200" required="required" id="lunwen"/></td></tr>
<tr><td align="center">授权专利</td><td> <s:textarea name="tongji.zhuanli"  cols="40" rows="4" size="200" maxlength="200" required="required" id="zhuanli"/></td></tr>
<tr><td align="center">制作科技作品</td><td> <s:textarea name="tongji.zuopin"  cols="40" rows="4" size="200" maxlength="200" required="required" id="zuopin" /></td></tr>
<tr><td align="center" rowspan="3">项目学生<br />学科竞赛获奖</td></tr>
<tr><td align="center">省级竞赛</td><td> <s:textarea name="tongji.jingsai" size="200" cols="40" rows="4" maxlength="200" required="required" id="jingsai"/></td></tr>
<tr><td align="center">全国竞赛</td><td> <s:textarea name="tongji.jingsai1" size="200" cols="40" rows="4" maxlength="200" required="required" id="jingsai1"/></td></tr>

  	<input name="tongji.gtime" id="gtime" type="hidden" value="<%=gtime %>"/>
  	<s:hidden name="tongji.jindu"></s:hidden>

  	<s:hidden name="tongji.gtime1"></s:hidden>

 
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