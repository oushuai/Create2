<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>系统用户</title> 
    <link rel="stylesheet" href="./stylesheet.css" type="text/css"></link>
    <% 
    Calendar calendar=Calendar.getInstance(); 
    int year=calendar.get(Calendar.YEAR); 
    int month=calendar.get(Calendar.MONTH)+1; 
    int day=calendar.get(Calendar.DATE);    
    String date=year+"年"+month+"月"+day+"日";
 %> 
  <%
    java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat(  
     "yyyy-MM-dd HH:mm:ss");  
   java.util.Date currentTime = new java.util.Date();  
   String mtime = simpleDateFormat.format(currentTime).toString();  
     %>
</head>
<body>
<h1 align="center">湖南省大学生研究性学习</h1>
<h1 align="center">和创新性实验计划项目中期检查报告书</h1>

  <s:form action="mediumAdd.action" method="post" theme="simple">
<table align="center" width="580" border="1">
<tr>
<td align="center">项目名称：</td><td> <s:textfield name="medium.pname" size="78" maxlength="78" required="required" /></td></tr>
<tr><td align="center">项目负责人：</td><td> <s:textfield name="medium.leadername" size="50" maxlength="50" required="required" /></td></tr>
<tr><td align="center">指导教师姓名：</td><td> <s:textfield name="medium.leaderteacher" size="50" maxlength="50" required="required" /></td></tr>
<tr><td align="center">所在单位：</td><td> <s:textfield name="medium.danwei" size="50" maxlength="50" required="required" /></td></tr>
<tr><td align="center">资助金额：</td><td> <s:textfield name="medium.zizhu" size="50" maxlength="50" required="required" /></td></tr>
<tr><td align="center">拨款金额：</td><td> <s:textfield name="medium.bokuan" size="50" maxlength="50" required="required" /></td></tr>
<tr><td align="center">起止年月：</td><td> <s:textfield name="medium.qizhi" size="50" maxlength="50" required="required" /></td></tr>
<tr><td align="center">填报日期：</td><td> <input name="medium.tianbao" size="50" maxlength="50" value="<%=date %>"/></td></tr>
<tr><td colspan="2" width="100%">请按照下列提纲填报（可根据需要另加页）：<br>
一、研究工作主要进展和结果。<br>
 <s:textarea name="medium.result" cols="68" rows="10" required="required" size="500" maxlength="500" id="result"/></td>
</tr>
<tr><td colspan="2" width="100%">二、根据国内外新发展对哪些研究内容作了必要调整和变动<br>
 <s:textarea name="medium.biandong"  cols="68" rows="10" required="required" size="1000" maxlength="1000" id="biandong"/></td>
</tr>
<tr><td colspan="2" width="100%">三、哪些研究内容未按计划完成，原因何在？<br>
 <s:textarea name="medium.yuanyin"  cols="68" rows="12" required="required" size="1500" maxlength="1500" id="yuanyin"/></td>
</tr>
<tr><td colspan="2" width="100%">四、经费使用情况和下阶段经费安排计划。<br>
 <s:textarea name="medium.jingfei"  cols="68" rows="12" required="required" size="1500" maxlength="1500" id="jingfei"/></td>
</tr>
<tr><td colspan="2" width="100%">五、存在问题、建议及需要说明的情况。<br>
 <s:textarea name="medium.siuation"  cols="68" rows="10" required="required"  size="1500" maxlength="1500" id="siuation"/>
 <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 项目负责人：              &nbsp;
    （签名）
    <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;月&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;日
    </td>
</tr>
 <tr> 
  <td>
  	<input name="medium.mtime" id="mtime" type="hidden" value="<%=mtime %>"/>
  	<input name="medium.jindu" id="jindu" type="hidden" value="未审核"/>
  	<s:hidden name="medium.mtime1"></s:hidden>
  
  </td>
  </tr>
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