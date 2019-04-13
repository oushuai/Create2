<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <title>系统用户－密码设置</title>
    
    <script type="text/javascript" src="<%=request.getContextPath()%>/dwr/engine.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/dwr/util.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/dwr/interface/AjaxUserService.js"></script>
 <style>
 .submit{
	color:white;
	background-color: rgb(102, 204, 255);
	border:0;
}
 </style>
  </head>
  <script type="text/javascript">
   function check4(){
   var username=document.all.username.value;
      AjaxUserService.exist(username,show);
      }
      function show(data) {
	        if (!data) {
	          window.alert("该用户不存在！请重新确定您的用户名！");
	        return false;
	        }
	         window.alert("请重新设置密码！");
	      }
</script> 
  <body>
  <div align="center">
   <h1 style="padding-top:20px;color:rgb(102, 204, 255);">密码设置</h1>
  <hr />
  <s:form action="userSetPwd.action" method="post" theme="simple" onsubmit="return check();"> 
  <table align="center" width="300" height="200px" border="border:1 solid rgb(0, 128, 128);margin-top:100px;"> 
  
  <tr> 
  <td align="center"> 
  	用户名: 
  </td> 
  <td>
  	<s:textfield name="user.username" required="required" disabled="true" label="用户名" size="10" maxlength="10" onkeyup="value=value.replace(/\s/g,'')" onblur="check4()" id="username"></s:textfield> 
  </td> 
  </tr> 
  <tr> 
  <td align="center"> 
  	密码: 
  </td> 
  <td> 
  	<s:password name="user.password" required="required" label="密码" size="15" id="password" onkeyup="this.value=this.value.replace(/(^\s+)|(\s+$)/g,'')" placeholder="密码不区分大小写" maxlength="20"></s:password> 
  </td> 
  </tr> 
  <tr>
				<td align="right">
					确认密码：
				</td>
				<td>
					<s:password id="repsword" required="required" label="确认密码"/></td></tr>
					<div id=check_tip></div>
					  <script type="text/javascript">
    function check(){
   var password = document.getElementById("password").value;
   var repsword = document.getElementById("repsword").value;
   if(password === ''){
      alert('密码不能为空');
      return false;
   }
   if(password != repsword) {
      alert("两次密码不同，请重新输入");
      return false;
   }
    if(password.length<6){
alert("密码至少大于等于6位");
return  false;
    }
var reg =/((?=.*[a-z])(?=.*\d)|(?=[a-z])(?=.*[#@!~%^&*])|(?=.*\d)(?=.*[#@!~%^&*]))[a-z\d#@!~%^&*]{6,15}/i;
if(!reg.test(password)){
alert("密码只能由数字和字母组成");
    return  false;
    } 
  }  </script> 
  
  <s:hidden name="user.username"></s:hidden>
	<s:hidden name="user.type"></s:hidden>
	<s:hidden name="user.stuid"></s:hidden>
	<s:hidden name="user.rtime"></s:hidden>
	<s:hidden name="user.quanxian"></s:hidden>
  	<s:hidden name="user.quanxian1"></s:hidden>
  	<s:hidden name="user.quanxian2"></s:hidden>
  	<s:hidden name="user.quanxian3"></s:hidden>
  	<s:hidden name="user.quanxian4"></s:hidden>
<s:hidden name="user.yuanxi"></s:hidden>
<s:hidden name="user.id"></s:hidden>
 
  <tr> 
  <td align="center" colspan="2"> 
  <s:submit class="submit" value="确定" style="margin-right:100px;" onmouseover="this.style.backgroundColor='rgb(12, 254, 255)';" 
onmouseout="this.style.backgroundColor=' rgb(102, 204, 255)';"></s:submit> 
  <s:reset class="submit" value="重置" onmouseover="this.style.backgroundColor='rgb(12, 254, 255)';" 
onmouseout="this.style.backgroundColor=' rgb(102, 204, 255)';"></s:reset> 
  </td> 
  </tr> 
  </table> 
  </s:form> 
  </div>
  </body>
</html>
