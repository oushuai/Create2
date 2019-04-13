<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<% //request.setCharacterEncoding("UTF-8");%>
<html>
  <head>
    <title>评委</title>
    <link rel="stylesheet" href="./stylesheet.css" type="text/css"></link>
    <script type="text/javascript">
	      function check() {
	        var phone=document.all.phone.value;
	        var name=document.all.name.value;
	        if (name=="") {
	          window.alert("姓名不能为空！");
	          return false;	      
	        }
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
		</script>
  </head>
  <body>
  <div align="center">
  <b>评委修改</b>
  <br />
  <br />
  <s:form action="pingweiinformationUpdate.action" method="post" theme="simple" onsubmit="return check();">
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
  	<s:textfield name="pingweiinformation.name" label="姓名" size="10" maxlength="10" id="name"/>
  </td>
  </tr>
   <tr>
  <td align="right">
  	性别:
  </td>
  <td>
  	<s:textfield name="pingweiinformation.sex" required="required" label="性别" size="10" maxlength="10" id="sex"/>
  </td>
  </tr>
  <tr>
  <td align="right">
  	电话:
  </td>
  <td>
  	<s:textfield name="pingweiinformation.phone" label="电话" size="11" maxlength="11" id="phone"/>
  </td>
  </tr>
  <tr>
  <td align="right">
  	评委类型:
  </td>
  <td>
  	<s:select list="{'二级学院评委','校级评委','专家评委'}" value="pingweiinformation.type" name="pingweiinformation.type" disabled="true" label="评委类型"></s:select>
  </td>
  </tr>
  <tr>
  <td>&nbsp;</td>
  <td>
	<s:hidden name="pingweiinformation.name"></s:hidden></td>
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
