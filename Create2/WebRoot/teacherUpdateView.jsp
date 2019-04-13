<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<% //request.setCharacterEncoding("UTF-8");%>
<html>
  <head>
    <title>指导老师</title>
    <link rel="stylesheet" href="./stylesheet.css" type="text/css"></link>
    <script type="text/javascript" src="<%=request.getContextPath()%>/dwr/interface/AjaxTeacherService.js"></script>
		<script type="text/javascript">
	      function check() {
	        var name=document.all.name.value;
	        if (name=="") {
	          window.alert("姓名不能为空！");
	          return;	      
	        }
	        AjaxTeacherService.exist(name,show);
	      }
	      function show(data) {
	        if (data) {
	          window.alert("该姓名已被使用！");
	          return;
	        }
	      }
		</script>
		<script type="text/javascript">
	      function check() {
	        var phone=document.all.phone.value;
	        if (phone=="") {
	          window.alert("电话不能为空！");
	          return false;	      
	        }
	         var reg =/^(13[0-9]{9}|15[012356789][0-9]{8}|18[02356789][0-9]{8}|147[0-9]{8}$)/;
if(!reg.test(phone)){
alert("该电话号码不合法！");
    return  false;} 
	        AjaxTeacherService.exist(phone,show);
	      }
	      function show(data) {
	        if (data) {
	          window.alert("该电话已被使用！");
	          return;
	        }
	      }
		</script>
  </head>
  <body>
  <div align="center">
  <b>指导老师修改</b>
  <br />
  <br />
  <s:form action="teacherUpdate.action" method="post" theme="simple" onsubmit="return check();">
  <table style="border: thin dashed #008080;" width="500" align="center">
  <tr>
  <td style="width: 45%">&nbsp;</td>
  <td style="width: 55%">&nbsp;</td>
  </tr>
  <tr>
  <td align="right">
  	姓名:
  </td>
  <td>
  	<s:textfield name="teacher.name" label="姓名" size="10" maxlength="10" disabled="true" id="name"/>
  </td>
  </tr>
   <tr>
  <td align="right">
  	性别:
  </td>
  <td>
  	<s:textfield name="teacher.sex" label="性别" size="10" maxlength="10" onblur="check()" id="sex"/>
  </td>
  </tr>
  <tr>
  <td align="right">
  	院系:
  </td>
  <td>
  	<s:textfield name="teacher.yuanxi" label="院系" size="10" maxlength="10" id="yuanxi"/>
  </td>
  </tr>
  <tr>
  <td align="right">
  	电话:
  </td>
  <td>
  	<s:textfield name="teacher.phone" label="电话" size="11" maxlength="11" disabled="false" id="phone"/>
  </td>
  </tr>
  <tr>
   <td align="right">
  	职称:
  </td>
  <td>
  	<s:select list="{'助教','讲师','副教授','教授'}" name="teacher.rank" label="职称"></s:select>
  </td>
  </tr>
  <tr>
  <td align="right">
  	情况:
  </td>
  <td>
  	<s:textarea name="teacher.siuation" cols="60" rows="6" label="情况" size="200" maxlength="200" id="siuation"/> 
  </td>
  </tr>
  <tr>
  <td>&nbsp;</td>
  <td>
	<s:hidden name="teacher.name"></s:hidden></td>
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
