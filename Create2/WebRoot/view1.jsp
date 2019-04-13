<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <title>系统用户</title> 
    <link rel="stylesheet" href="./stylesheet.css" type="text/css"></link>
   
</head>
<body>
<h1 align="center">湖南省大学生研究性学习和创新性实验计划</h1>
<h1 align="center">项目申报表</h1>

  <s:form action="view11.action" method="post" theme="simple">
<table align="center" width="580" border="1">
<tr>
<td colspan="5"> &nbsp;&nbsp;&nbsp;项目名称:
<s:textfield name="projectinformation1.pname" style="width:460;" required="required" disabled="true" label="项目名称" size="30" maxlength="30" width="480" id="pname"/></td>
</tr>
<tr>
<td align="center">学校名称</td>
<td colspan="5"><s:textfield name="projectinformation1.sname" disabled="true" required="required" label="学校名称" size="30" maxlength="30" onkeyup="this.value=this.value.replace(/^ +| +$/g,'')" id="sname"/></td>
</tr>
<tr>
<td align="center">学生姓名</td><td align="center">学号</td><td align="center">专业</td><td align="center">性别</td><td align="center">入学年份</td>
</tr>
<tr>
<td align="center"><s:textfield name="projectinformation1.leadername" disabled="true" required="required" label="姓名" size="10" maxlength="10" id="leadername"/></td>
<td><s:textfield name="projectinformation1.leadernum" required="required" disabled="true" label="学号" size="10" maxlength="10" id="leadernum"/></td>
<td><s:textfield name="projectinformation1.zhuanye" style="width:140;" disabled="true" required="required" label="专业" size="10" maxlength="10" id="zhuanye"/></td>
<td><s:radio list="{'男','女'}"  required="required" name="projectinformation1.sex" disabled="true" label="性别"></s:radio></td>
<td align="center"><s:textfield name="projectinformation1.year" required="required" disabled="true" label="入学年份" size="10" maxlength="10" id="year"/></td>
</tr>
<tr>
<td align="center"><s:textfield name="projectinformation1.student1" disabled="true" required="required" label="姓名" size="10" maxlength="10" id="student1"/></td>
<td><s:textfield name="projectinformation1.num1" required="required" disabled="true" label="学号" size="10" maxlength="10" id="num1"/></td>
<td><s:textfield name="projectinformation1.zhuanye1" style="width:140;" disabled="true" required="required" label="专业" size="10" maxlength="10" id="zhuanye1"/></td>
<td><s:radio list="{'男','女'}" required="required" disabled="true" name="projectinformation1.sex1" label="性别"></s:radio></td>
<td align="center"><s:textfield name="projectinformation1.year1" disabled="true" required="required" label="入学年份" size="10" maxlength="10" id="year1"/></td>
</tr>
<tr>
<td align="center"><s:textfield name="projectinformation1.student2" disabled="true" required="required" label="姓名" size="10" maxlength="10" id="student2"/></td>
<td><s:textfield name="projectinformation1.num2" required="required" disabled="true" label="学号" size="10" maxlength="10" id="num2"/></td>
<td><s:textfield name="projectinformation1.zhuanye2" style="width:140;" disabled="true" required="required" label="专业" size="10" maxlength="10" id="zhuanye2"/></td>
<td><s:radio list="{'男','女'}" required="required" name="projectinformation1.sex2" disabled="true" label="性别"></s:radio></td>
<td align="center"><s:textfield name="projectinformation1.year2" required="required" disabled="true" label="入学年份" size="10" maxlength="10" id="year2"/></td>
</tr>
<tr>
<td align="center"><s:textfield name="projectinformation1.student3" disabled="true" required="required" label="姓名" size="10" maxlength="10" id="student3"/></td>
<td><s:textfield name="projectinformation1.num3" required="required" disabled="true" label="学号" size="10" maxlength="10" id="num3"/></td>
<td><s:textfield name="projectinformation1.zhuanye3" style="width:140;" disabled="true" required="required" label="专业" size="10" maxlength="10" id="zhuanye3"/></td>
<td><s:radio list="{'男','女'}" required="required" name="projectinformation1.sex3" disabled="true" label="性别"></s:radio></td>
<td align="center"><s:textfield name="projectinformation1.year3" required="required" disabled="true" label="入学年份" size="10" maxlength="10" id="year3"/></td>
</tr>
<tr>
<td align="center"><s:textfield name="projectinformation1.student4" disabled="true" required="required" label="姓名" size="10" maxlength="10" id="student4"/></td>
<td><s:textfield name="projectinformation1.num4" required="required" disabled="true" label="学号" size="10" maxlength="10" id="num4"/></td>
<td><s:textfield name="projectinformation1.zhuanye4" style="width:140;" disabled="true" required="required" label="专业" size="10" maxlength="10" id="zhuanye4"/></td>
<td><s:radio list="{'男','女'}" required="required" disabled="true" name="projectinformation1.sex4" label="性别"></s:radio></td>
<td align="center"><s:textfield name="projectinformation1.year4" disabled="true" required="required" label="入学年份" size="10" maxlength="10" id="year4"/></td>
</tr>
<tr><td align="center">指导教师</td>
<td><s:textfield name="projectinformation1.leadteacher" required="required" disabled="true" label="指导老师" size="10" maxlength="10" id="leadteacher"/></td>
<td align="center">职称</td>
<td colspan="2" align="center"><s:textfield name="projectinformation1.rank" disabled="true" required="required" label="职称" id="rank" /></td>
</tr>
<tr><td align="center">项目所属<br>一级学科</td>
<td align="center"><s:textfield name="projectinformation1.yijixueke" required="required" disabled="true" label="一级学科" onkeyup="this.value=this.value.replace(/\D/g,'')" size="3" maxlength="3" id="yijixueke"/></td>
<td align="center" colspan="2">项目科类(理科/文科)</td>
<td align="center"><s:radio list="{'文科','理科'}" required="required" disabled="true" name="projectinformation1.kemu" label="项目科类"></s:radio></td>
</tr>
<tr><td colspan="5" width="100%">学生参与科研的情况<br>
 <s:textarea name="projectinformation1.siuation"  cols="68" rows="10" disabled="true" required="required" label="科研情况" size="500" maxlength="500" id="siuation"/></td>
</tr>
<tr><td colspan="5" width="100%">指导教师承担科研课题情况<br>
 <s:textarea name="projectinformation1.siuation1"  cols="68" rows="10" disabled="true" required="required" label="科研情况1" size="1000" maxlength="1000" id="siuation1"/></td>
</tr>
<tr><td colspan="5" width="100%">项目研究和实验的目的、内容和要解决的主要问题<br>
 <s:textarea name="projectinformation1.problem"  cols="68" rows="15" disabled="true" required="required" label="主要问题" size="1500" maxlength="1500" id="problem"/></td>
</tr>
<tr><td colspan="5" width="100%">国内外研究现状和发展动态<br>
 <s:textarea name="projectinformation1.active"  cols="68" rows="25" disabled="true" required="required" label="动态" size="1500" maxlength="1500" id="active"/></td>
</tr>
<tr><td colspan="5" width="100%">本项目学生有关的研究积累和已取得的成绩<br>
 <s:textarea name="projectinformation1.chengji"  cols="68" rows="15" disabled="true" required="required" label="成绩" size="1500" maxlength="1500" id="chengji"/></td>
<tr><td colspan="5" width="100%">项目的创新点和特色<br>
 <s:textarea name="projectinformation1.tese"  cols="68" rows="25" disabled="true" required="required" label="特色" size="1500" maxlength="1500" id="tese"/></td>
</tr>
<tr><td colspan="5" width="100%">项目的技术路线及预期成果<br>
 <s:textarea name="projectinformation1.chengguo"  cols="68" rows="25" disabled="true" required="required" label="成果" size="1500" maxlength="1500" id="chengguo"/></td>
</tr>
<tr><td colspan="5" width="100%">年度目标和工作内容（分年度写）<br>
 <s:textarea name="projectinformation1.goal"  cols="68" rows="7" disabled="true" required="required" label="目标" size="1500" maxlength="1500" id="goal"/></td>
</tr>
<tr><td colspan="5" width="100%">指导教师意见<br>
 <s:textarea name="projectinformation1.advice"  cols="68" rows="7" disabled="true" required="required" label="建议" size="1500" maxlength="1500" id="advice"/>
 
 <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 签字：              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    日期：</td>
</tr>
<tr><td colspan="5" width="100%">审核意见<br>

 <s:radio list="{'请重新修改申报表','二级学院审核通过，等待校级评委审核','二级学院审核未通过'}" name="projectinformation1.jindu" required="required" label="审核意见" size="20" maxlength="20" id="jindu" />
 </td>
</tr>
 <tr> 
  <td>
   <%
    java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat(  
     "yyyy-MM-dd HH:mm:ss");  
   java.util.Date currentTime = new java.util.Date();  
   String stime1 = simpleDateFormat.format(currentTime).toString();  
     %>
  	<input name="projectinformation1.stime1" id="stime1" type="hidden" value="<%=stime1 %>"/>
  	<s:hidden name="projectinformation1.pname" id="pname"></s:hidden>
  	<s:hidden name="projectinformation1.sname" id="sname"></s:hidden>
  	<s:hidden name="projectinformation1.leadername" id="leadername"></s:hidden>
  	<s:hidden name="projectinformation1.leadernum" id="leadernum"></s:hidden>
  	<s:hidden name="projectinformation1.zhuanye" id="zhuanye"></s:hidden>
  	<s:hidden name="projectinformation1.sex" id="sex"></s:hidden>
  	<s:hidden name="projectinformation1.year" id="year"></s:hidden>
  	<s:hidden name="projectinformation1.student1" id="student1"></s:hidden>
  	<s:hidden name="projectinformation1.num1" id="num1"></s:hidden>
  	<s:hidden name="projectinformation1.zhuanye1" id="zhuanye1"></s:hidden>
  	<s:hidden name="projectinformation1.sex1" id="sex1"></s:hidden>
  	<s:hidden name="projectinformation1.year1" id="year1"></s:hidden>
  	<s:hidden name="projectinformation1.student2" id="student2"></s:hidden>
  	<s:hidden name="projectinformation1.num2" id="num2"></s:hidden>
  	<s:hidden name="projectinformation1.zhuanye2" id="zhuanye2"></s:hidden>
  	<s:hidden name="projectinformation1.sex2" id="sex2"></s:hidden>
  	<s:hidden name="projectinformation1.year2" id="year2"></s:hidden>
  	<s:hidden name="projectinformation1.student3" id="student3"></s:hidden>
  	<s:hidden name="projectinformation1.num3" id="num3"></s:hidden>
  	<s:hidden name="projectinformation1.zhuanye3" id="zhuanye3"></s:hidden>
  	<s:hidden name="projectinformation1.sex3" id="sex3"></s:hidden>
  	<s:hidden name="projectinformation1.year3" id="year3"></s:hidden>
  	<s:hidden name="projectinformation1.student4" id="student4"></s:hidden>
  	<s:hidden name="projectinformation1.num4" id="num4"></s:hidden>
  	<s:hidden name="projectinformation1.zhuanye4" id="zhuanye4"></s:hidden>
  	<s:hidden name="projectinformation1.sex4" id="sex4"></s:hidden>
  	<s:hidden name="projectinformation1.year4" id="year4"></s:hidden>
  	<s:hidden name="projectinformation1.leadteacher" id="leadteacher"></s:hidden>
  	<s:hidden name="projectinformation1.rank" id="rank"></s:hidden>
  	<s:hidden name="projectinformation1.yijixueke" id="yijixueke"></s:hidden>
  	<s:hidden name="projectinformation1.kemu" id="kemu"></s:hidden>
  	<s:hidden name="projectinformation1.siuation" id="siuation"></s:hidden>
  	<s:hidden name="projectinformation1.siuation1" id="siuation1"></s:hidden>
  	<s:hidden name="projectinformation1.problem" id="problem"></s:hidden>
  	<s:hidden name="projectinformation1.active" id="active"></s:hidden>
  	<s:hidden name="projectinformation1.chengji" id="chengji"></s:hidden>
  	<s:hidden name="projectinformation1.tese" id="tese"></s:hidden>
  	<s:hidden name="projectinformation1.chengguo" id="chengguo"></s:hidden>
  	<s:hidden name="projectinformation1.goal" id="goal"></s:hidden>
  	<s:hidden name="projectinformation1.advice" id="advice"></s:hidden>
  	<s:hidden name="projectinformation1.ptime1" id="ptime1"></s:hidden>
  	<s:hidden name="projectinformation1.yuanxi" id="yuanxi"></s:hidden>
  	<s:hidden name="projectinformation1.stime2" id="stime2"></s:hidden>
  	<s:hidden name="projectinformation1.jindu1" id="jindu1"></s:hidden>
  	<s:hidden name="projectinformation1.stime3" id="stime3"></s:hidden>
  	<s:hidden name="projectinformation1.jindu2" id="jindu2"></s:hidden>
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