<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<% //request.setCharacterEncoding("UTF-8");%>
<html>
  <head>
    <title>项目</title>
    <link rel="stylesheet" href="./stylesheet.css" type="text/css"></link>
  </head>
  <body>
  <div align="center">
  <b>项目汇总表修改</b>
  <br />
  <br />
  
  <s:form action="projectinformationUpdate.action" method="post" theme="simple">
  <table style="border: thin dashed #008080;" width="550" align="center">
  <tr>
  <td style="width: 45%">&nbsp;</td>
  <td style="width: 55%">&nbsp;</td>
  </tr>
  <tr>
  <td align="right">
  	学校代码:
  </td>
  <td>
  	<s:textfield name="projectinformation.scode" label="学校代码" size="5" maxlength="5" onkeyup="this.value=this.value.replace(/\D/g,'')" id="scode"/>
  </td>
  </tr>
   <tr>
  <td align="right">
  	学校名称:
  </td>
  <td>
  	<s:textfield name="projectinformation.sname" label="学校名称" size="6" maxlength="6" id="sname"/>
  </td>
  </tr>
   <tr>
  <td align="right">
  	项目编号:
  </td>
  <td>
  	<s:textfield name="projectinformation.pnum" label="项目编号" size="12" maxlength="12" onblur="check()" onkeyup="this.value=this.value.replace(/\D/g,'')" id="pnum"/>
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
  	<s:textfield name="projectinformation.leadername" label="姓名" size="10" maxlength="10" id="leadername"/>
  </td>
  </tr>
  <tr>
   <td align="right">
  	学号:
  </td>
  <td>
  	<s:textfield name="projectinformation.leadernum" label="学号" size="10" maxlength="10" onkeyup="this.value=this.value.replace(/\D/g,'')" id="leadernum"/>
  </td>
  </tr>
   <tr>
   <td align="right">
  	人数:
  </td>
  <td>
  	<s:textfield name="projectinformation.rs" label="人数" size="2" maxlength="2" id="rs"/>
  </td>
  </tr>
  <tr>
   <td align="right">
  	项目其他成员（不超过4个）:
  </td>
  <td>
  	<s:textarea name="projectinformation.others" cols="30" rows="4" required="required" label="其他成员" size="80" maxlength="80" id="others"/>
  </td>
  </tr>
   <tr>
   <td align="right">
  	指导老师:
  </td>
  <td>
  	<s:textfield name="projectinformation.leadteacher" label="指导老师" size="10" maxlength="10" id="leadteacher"/>
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
  	<s:textfield name="projectinformation.money" label="学校拨款" size="6" maxlength="6" id="money"/>
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
  	<s:select list="{'文科','理科'}"  name="projectinformation.kemu" label="项目科类"></s:select>
  </td>
  </tr>
  <tr>
  <td align="right">
  	一级学科:
  </td>
  <td>
  	<s:textfield name="projectinformation.yijixueke" label="一级学科" size="3" maxlength="3" onkeyup="this.value=this.value.replace(/\D/g,'')" id="yijixueke"/>
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
    <s:hidden name="projectinformation.ptime"></s:hidden> 
  <s:hidden name="projectinformation.jindu"></s:hidden>
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
 