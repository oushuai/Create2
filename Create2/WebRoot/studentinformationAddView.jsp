<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="/struts-dojo-tags" prefix="sx"%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>评委</title>
    <link rel="stylesheet" href="./stylesheet.css" type="text/css"></link>
		<script type="text/javascript" src="<%=request.getContextPath()%>/dwr/engine.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/dwr/util.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/dwr/interface/AjaxStudentinformationService.js"></script>
		<script type="text/javascript">
	      function check1() {
	        var num=document.all.num.value;
	        if (num=="") {
	          window.alert("学号不能为空！");
	          return false;	      
	        }
	        AjaxStudentinformationService.exist(num,show1);
	         var phone=document.all.phone.value;
	        if (phone=="") {
	          window.alert("电话不能为空！");
	          return false;	      
	        }
	        var reg =/^(13[0-9]{9}|15[012356789][0-9]{8}|18[02356789][0-9]{8}|147[0-9]{8}$)/;
if(!reg.test(phone)){
alert("该电话号码不合法！");
    return  false;} 
	        AjaxPingweiinformationService.exist(phone,show);
	      }
	      function show(data) {
	        if (data) {
	          window.alert("该电话已被使用！");
	          return false;
	        }
	        return;
	      }
	      
	      function show1(data) {
	        if (data) {
	          window.alert("该学号已被使用！");
	          return false;
	        }
	      }
		</script>
		<script type="text/javascript">
	      function check() {
	        var name=document.all.name.value;
	        if (name=="") {
	          window.alert("姓名不能为空！");
	          return false;	      
	        }
	        AjaxStudentinformationService.exist(name,show);
	      }
	      function show(data) {
	        if (data) {
	          window.alert("该姓名已被使用！");
	          return false;
	        }
	      }
		</script>
 </head>
  <body>
  <div align="center">
  <b>项目负责人增加</b>
  <br />
  <br />
  <s:form action="studentinformationAdd.action" method="post" theme="simple" onsubmit="return check1();">
  <table style="border: thin dashed #008080;" width="500" align="center">
  <tr>
  <td style="width: 45%">&nbsp;</td>
  <td style="width: 55%">&nbsp;</td>
  </tr>
  <tr>
  <td align="right">
  	学号:
  </td>
  <td>
  	<s:textfield name="studentinformation.num" label="学号" required="required" size="10" maxlength="10" onkeyup="this.value=this.value.replace(/\D/g,'')" onblur="check1()" id="num"/>
  </td>
  </tr>
  <tr>
   <td align="right">
  	姓名:
  </td>
  <td>
  	<s:textfield name="studentinformation.name" label="姓名" required="required" size="10" maxlength="10" onblur="check()" id="name"/>
  </td>
  </tr>
  <tr>
  <td align="right">
  	电话:
  </td>
  <td>
  	<s:textfield name="studentinformation.phone" label="电话" required="required" size="11" onkeyup="this.value=this.value.replace(/\D/g,'')" maxlength="11" id="phone"/>
  </td>
  </tr>
   <tr>
  <td align="right">
  	院系:
  </td>
  <td>
  	<s:textfield name="studentinformation.yuanxi" label="专业" size="20" maxlength="20" id="yiuanxi"/>
  </td>
  </tr>
  <tr>
  <td align="right">
  	专业:
  </td>
  <td>
  	<s:textfield name="studentinformation.zhuanye" label="专业" required="required" size="20" maxlength="20" id="zhuanye"/>
  </td>
  </tr>
   <tr>
  <td align="right">
  	性别:
  </td>
  <td>
  	<s:radio list="{'男','女'}" value="''" required="required" name="studentinformation.sex" label="性别"></s:radio>
  </td>
  </tr>
   <tr>
  <td align="right">
  	入学年份:
  </td>
  <td>
  	<s:textfield id="nianfen" name="studentinformation.nianfen" required="required" size="4" maxlength="4" />
  </td>
  </tr>
   <tr>
  <td align="right">
  	指导老师:
  </td>
  <td>
  	<s:textfield name="studentinformation.leadteacher" label="指导老师" required="required" size="10" maxlength="10" id="leadteacher"/>
  </td>
  </tr>
   <tr>
  <td align="right">
  	项目名称:
  </td>
  <td>
  	<s:textfield name="studentinformation.pname" label="项目名称" required="required" size="20" maxlength="20" id="pname"/>
  </td>
  </tr>
   <tr>
  <td align="right">
  	学校名称:
  </td>
  <td>
  	<s:textfield name="studentinformation.sname" label="学校名称" required="required" size="10" maxlength="10" id="sname"/>
  </td>
  </tr>
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
