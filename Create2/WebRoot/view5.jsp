<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>系统用户</title> 
    <link rel="stylesheet" href="./stylesheet.css" type="text/css"></link>
 
</head>
<body>
<h1 align="center">湖南省大学生研究性学习和创新性实验计划</h1>
<h1 align="center">项目结题报告</h1>

  <s:form action="view55.action" method="post" theme="simple">
<table align="center" width="580" border="1">
<tr>
<td align="center">项目名称：</td><td> <s:textfield name="jieti.pname" disabled="true" size="78" maxlength="78" required="required" /></td></tr>
<tr><td align="center">学生姓名：</td><td> <s:textfield name="jieti.xingming" disabled="true" size="50" maxlength="50" required="required" /></td></tr>
<tr><td align="center">所在院系：</td><td> <s:textfield name="jieti.yuanhexi" disabled="true" size="50" maxlength="50" required="required" /></td></tr>
<tr><td align="center">项目实施时间：</td><td> <s:textfield name="jieti.shishi" disabled="true" size="50" maxlength="50" required="required" /></td></tr>
<tr><td align="center">指导教师：</td><td> <s:textfield name="jieti.leaderteacher" disabled="true" size="50" maxlength="50" required="required" /></td></tr>
<tr><td align="center">联系电话：</td><td> <s:textfield name="jieti.phone" size="50" disabled="true" maxlength="50" required="required" /></td></tr>
<tr><td align="center">填表日期：</td><td> <s:textfield name="jieti.tianbiao" size="50" disabled="true" maxlength="50" required="required" id="tianbiao"/></td></tr>
</table>
<h3 align="center">一、基本情况</h3>
<table align="center" width="580" border="1">
<tr>
<td colspan="7" width="100%"> &nbsp;&nbsp;&nbsp;&nbsp;项目名称：
<s:textfield name="jieti.pname" style="width:460;" disabled="true" required="required" label="项目名称" size="30" maxlength="30" width="480" id="pname"/></td>
</tr>
<tr>
<td align="center" colspan="2">立项时间</td>
<td colspan="2"><s:textfield name="jieti.lixiang" disabled="true" required="required" label="学校名称" size="30" maxlength="30" onkeyup="this.value=this.value.replace(/^ +| +$/g,'')" id="lixiang"/></td>
<td align="center">完成时间</td>
<td colspan="2"><s:textfield name="jieti.finish" disabled="true" required="required" label="学校名称" size="30" maxlength="30" onkeyup="this.value=this.value.replace(/^ +| +$/g,'')" id="finish"/></td>
</tr>
<tr>
<td rowspan="6" width="3%">项目主要研究人员</td>
<td align="center">序号</td><td align="center">姓名</td><td align="center">学号</td><td align="center">专业班级</td><td align="center">所在系</td><td align="center">项目中的分工</td>
</tr>
<tr>
<td align="center">1</td>
<td align="center"><s:textfield name="jieti.leadername" disabled="true" required="required" label="姓名" size="10" maxlength="10" id="leadername"/></td>
<td><s:textfield name="jieti.leadernum" required="required" disabled="true" label="学号" size="10" maxlength="10" id="leadernum"/></td>
<td><s:textfield name="jieti.banji" style="width:100;" disabled="true" required="required" size="10" maxlength="10" id="banji"/></td>
<td><s:textfield name="jieti.yuanxi" style="width:100;" disabled="true" required="required"  size="10" maxlength="10" id="yuanxi"/></td>
<td align="center">项目负责人</td>
</tr>
<tr>
<td align="center">2</td>
<td align="center"><s:textfield name="jieti.student1" disabled="true" required="required" label="姓名" size="10" maxlength="10" id="student1"/></td>
<td><s:textfield name="jieti.num1" required="required" disabled="true" label="学号" size="10" maxlength="10" id="num1"/></td>
<td><s:textfield name="jieti.banji1" style="width:100;" disabled="true" required="required" label="专业" size="10" maxlength="10" id="banji1"/></td>
<td><s:textfield name="jieti.yuanxi1" style="width:100;" disabled="true" required="required" label="专业" size="10" maxlength="10" id="yuanxi1"/></td>
<td align="center">研究人员</td>
</tr>
<tr>
<td align="center">3</td>
<td align="center"><s:textfield name="jieti.student2" disabled="true" required="required" label="姓名" size="10" maxlength="10" id="student2"/></td>
<td><s:textfield name="jieti.num2" required="required" disabled="true" label="学号" size="10" maxlength="10" id="num2"/></td>
<td><s:textfield name="jieti.banji2" style="width:100;" disabled="true" required="required" label="专业" size="10" maxlength="10" id="banji2"/></td>
<td><s:textfield name="jieti.yuanxi2" style="width:100;" disabled="true" required="required" label="专业" size="10" maxlength="10" id="yuanxi2"/></td>
<td align="center">研究人员</td>
</tr>
<tr>
<td align="center">4</td>
<td align="center"><s:textfield name="jieti.student3" disabled="true" required="required" label="姓名" size="10" maxlength="10" id="student3"/></td>
<td><s:textfield name="jieti.num3" required="required" disabled="true" label="学号" size="10" maxlength="10" id="num3"/></td>
<td><s:textfield name="jieti.banji3" style="width:100;" disabled="true" required="required" label="专业" size="10" maxlength="10" id="banji3"/></td>
<td><s:textfield name="jieti.yuanxi3" style="width:100;" disabled="true" required="required" label="专业" size="10" maxlength="10" id="yuanxi3"/></td>
<td align="center">研究人员</td>
</tr>
<tr>
<td align="center">5</td>
<td align="center"><s:textfield name="jieti.student4" disabled="true" required="required" label="姓名" size="10" maxlength="10" id="student4"/></td>
<td><s:textfield name="jieti.num4" required="required" disabled="true" label="学号" size="10" maxlength="10" id="num4"/></td>
<td><s:textfield name="jieti.banji4" style="width:100;" disabled="true" required="required" label="专业" size="10" maxlength="10" id="banji4"/></td>
<td><s:textfield name="jieti.yuanxi4" style="width:100;" disabled="true" required="required" label="专业" size="10" maxlength="10" id="yuanxi4"/></td>
<td align="center">研究人员</td>
</tr>
</table>
<h3 align="center">二、研究成果简介</h3>
<table align="center" width="580" border="1">
<tr><td colspan="7" width="100%">
一、项目研究的目的、意义<br>
 <s:textarea name="jieti.yiyi" cols="68" rows="10" disabled="true" required="required" size="800" maxlength="800" id="yiyi"/></td>
</tr>
<tr><td colspan="7" width="100%">二、研究成果的主要内容、重要观点或对策建议<br>
 <s:textarea name="jieti.jianyi"  cols="68" rows="10" disabled="true" required="required" size="1000" maxlength="1000" id="jianyi"/></td>
</tr>
<tr><td colspan="7" width="100%">三、成果的创新特色、实践意义和社会影响<br>
 <s:textarea name="jieti.yingxiang"  cols="68" rows="12" disabled="true" required="required" size="1500" maxlength="1500" id="yingxiang"/></td>
</tr>
<tr><td colspan="7" width="100%">四、研究成果和研究方法的特色<br>
 <s:textarea name="jieti.tese"  cols="68" rows="12" disabled="true" required="required" size="1500" maxlength="1500" id="tese"/></td>
</tr>
</table>
<h3 align="center">三、项目研究总结报告</h3>
<table align="center" width="580" border="1">
<tr><td colspan="7" width="100%">一、计划执行情况<br>
 <s:textarea name="jieti.siuation"  cols="68" rows="10" disabled="true" required="required" size="800" maxlength="800" id="siuation"/></td>
</tr>
<tr><td colspan="7" width="100%">二、项目研究和实践情况<br>
 <s:textarea name="jieti.siuation1"  cols="68" rows="10" disabled="true" required="required" size="800" maxlength="800" id="siuation1"/></td>
</tr>
<tr><td colspan="7" width="100%">三、项目工作中的主要成就和收获<br>
 <s:textarea name="jieti.shouhuo"  cols="68" rows="12" disabled="true" required="required" size="3000" maxlength="3000" id="shouhuo"/></td>
</tr>
<tr><td colspan="7" width="100%">四、研究工作有哪些不足<br>
 <s:textarea name="jieti.buzu"  cols="68" rows="12" disabled="true" required="required" size="800" maxlength="800" id="buzu"/></td>
</tr>
<tr><td colspan="7" width="100%">五、有哪些问题尚需深入研究<br>
 <s:textarea name="jieti.yanjiu"  cols="68" rows="12" disabled="true" required="required" size="800" maxlength="800" id="yanjiu"/></td>
</tr>
<tr><td colspan="7" width="100%">六、研究工作中的困难、问题和建议<br>
 <s:textarea name="jieti.wenti"  cols="68" rows="12" disabled="true" required="required" size="800" maxlength="800" id="wenti"/></td>
</tr>
</table>
<h3 align="center">四、经费使用情况</h3>
<table align="center" width="580" border="1">
<tr><td colspan="7" width="100%">经费支出情况：<br>
 <s:textarea name="jieti.jingfei"  cols="68" rows="10" disabled="true" required="required" size="1000" maxlength="1000" id="jingfei"/></td>
</tr>
</table>
<h3 align="center">五、指导教师及所在系（院）审核意见</h3>
<table align="center" width="580" border="1">
<tr><td colspan="7" width="100%">项目指导教师对结题的意见，包括对项目研究工作和研究成果的评价等。<br>
 <s:textarea name="jieti.yijian"  cols="68" rows="10" disabled="true" required="required" size="1000" maxlength="1000" id="yijian"/></td>
 </tr>
 <tr><td colspan="5" width="100%">审核意见<br>

 <s:radio list="{'二级学院审核通过，等待校级评委审核','二级学院审核不通过'}" name="jieti.jindu" required="required" label="审核意见" size="20" maxlength="20" id="jindu" />
 </td>
</tr>
 <tr><td colspan="7" width="100%">所在系（院）对结题的意见，包括对项目研究工作和研究成果的评价等。<br>
 <s:textarea name="jieti.yijian1"  cols="68" rows="10" size="1000" maxlength="1000" id="yijian1"/></td>
 </tr>
 </table>
<h3 align="center">六、学校结题审核意见</h3>
<table align="center" width="580" border="1">
<tr><td colspan="7" width="100%">学校对项目研究的任务、目标和方法和研究成果水平等进行评价，是否结题。<br>
 <s:textarea name="jieti.yijian2"  cols="68" rows="10" size="1000" disabled="true" maxlength="1000" id="yijian"/></td>
 </tr>
 <tr> 
  <td>
   <%
    java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat(  
     "yyyy-MM-dd HH:mm:ss");  
   java.util.Date currentTime = new java.util.Date();  
   String jtime1 = simpleDateFormat.format(currentTime).toString();  
     %>
  	<input name="jieti.jtime1" id="jtime1" type="hidden" value="<%=jtime1 %>"/>
  	<s:hidden name="jieti.pname" id="pname"></s:hidden>
  	<s:hidden name="jieti.xingming" id="xingming"></s:hidden>
  	<s:hidden name="jieti.yuanhexi" id="yuanhexi"></s:hidden>
  	<s:hidden name="jieti.shishi" id="shishi"></s:hidden>
  	<s:hidden name="jieti.leaderteacher" id="leaderteacher"></s:hidden>
  	<s:hidden name="jieti.phone" id="phone"></s:hidden>
  	<s:hidden name="jieti.tianbiao" id="tianbiao"></s:hidden>
  	<s:hidden name="jieti.lixiang" id="lixiang"></s:hidden>
  	<s:hidden name="jieti.finish" id="finish"></s:hidden>
  	<s:hidden name="jieti.leadername" id="leadername"></s:hidden>
  	<s:hidden name="jieti.leadernum" id="leadernum"></s:hidden>
  	<s:hidden name="jieti.banji" id="banji"></s:hidden>
  	<s:hidden name="jieti.yuanxi" id="yuanxi"></s:hidden>
  	<s:hidden name="jieti.student1" id="student1"></s:hidden>
  	<s:hidden name="jieti.num1" id="num1"></s:hidden>
  	<s:hidden name="jieti.banji1" id="banji1"></s:hidden>
  	<s:hidden name="jieti.yuanxi1" id="yuanxi1"></s:hidden>
  	<s:hidden name="jieti.student2" id="student2"></s:hidden>
  	<s:hidden name="jieti.num2" id="num2"></s:hidden>
  	<s:hidden name="jieti.banji2" id="banji2"></s:hidden>
  	<s:hidden name="jieti.yuanxi2" id="yuanxi2"></s:hidden>
  	<s:hidden name="jieti.student3" id="student3"></s:hidden>
  	<s:hidden name="jieti.num3" id="num3"></s:hidden>
  	<s:hidden name="jieti.banji3" id="banji3"></s:hidden>
  	<s:hidden name="jieti.yuanxi3" id="yuanxi3"></s:hidden>
  	<s:hidden name="jieti.student4" id="student4"></s:hidden>
  	<s:hidden name="jieti.num4" id="num4"></s:hidden>
  	<s:hidden name="jieti.banji4" id="banji4"></s:hidden>
  	<s:hidden name="jieti.yuanxi4" id="yuanxi4"></s:hidden>
  	<s:hidden name="jieti.yiyi" id="yiyi"></s:hidden>
  	<s:hidden name="jieti.jianyi" id="jianyi"></s:hidden>
  	<s:hidden name="jieti.yingxiang" id="yingxiang"></s:hidden>
  	<s:hidden name="jieti.tese" id="tese"></s:hidden>
  	<s:hidden name="jieti.siuation" id="siuation"></s:hidden>
  	<s:hidden name="jieti.siuation1" id="siuation1"></s:hidden>
  	<s:hidden name="jieti.shouhuo" id="shouhuo"></s:hidden>
  	<s:hidden name="jieti.buzu" id="buzu"></s:hidden>
  	<s:hidden name="jieti.yanjiu" id="yanjiu"></s:hidden>
  	<s:hidden name="jieti.wenti" id="wenti"></s:hidden>
  	<s:hidden name="jieti.jingfei" id="jingfei"></s:hidden>
  	<s:hidden name="jieti.yijian" id="yijian"></s:hidden> 	
  	<s:hidden name="jieti.yijian2" id="yijian2"></s:hidden>
  	<s:hidden name="jieti.jindu1"></s:hidden>
  	<s:hidden name="jieti.jtime2"></s:hidden>
    <s:hidden name="jieti.jtime"></s:hidden>
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