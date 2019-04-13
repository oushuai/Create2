<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<% //request.setCharacterEncoding("UTF-8");%>
<html>
  <head>
    <title>系统用户</title>
    <link rel="stylesheet" href="./stylesheet.css" type="text/css"></link>
  </head>
  <script type="text/javascript">
	      function check() {
	        var username=document.all.username.value;
	        var username1=document.getElementById("username").value;
	        var password = document.getElementById("password").value;
	        if (username1=="") {
	          window.alert("用户名不能为空！");
	          return false;	      
	        }
	        if(password == ''){
      alert('密码不能为空');
      return false;
   }
    if(password.length<6){
alert("密码至少大于等于6位");
return  false;
    }
var reg = /((?=.*[a-z])(?=.*\d)|(?=[a-z])(?=.*[#@!~%^&*])|(?=.*\d)(?=.*[#@!~%^&*]))[a-z\d#@!~%^&*]{6,15}/i;
if(!reg.test(password)){
alert("密码只能由数字和字母组成");
return  false; 
    }    
	        AjaxUserService.exist(username,show);
	      }
	      function show(data) {
	        if (data) {
	          window.alert("该用户名已被使用！");
	          return;
	        }
	      }
		</script>
  <body>
  <div align="center">
  <b>忘记密码修改</b>
  <br />
  <br />
  <s:form action="userForget.action" method="post" theme="simple" onsubmit="return check();">
  <table style="border: thin dashed #008080;" width="500" align="center">
  <tr>
  <td style="width: 45%">&nbsp;</td>
  <td style="width: 55%">&nbsp;</td>
  </tr>
  <tr>
  <td align="right">
  	用户名:
  </td>
  <td>
  	<s:textfield name="user.username" label="用户名" size="10" maxlength="10" onblur="check()" disabled="true" id="username"/>
  </td>
  </tr>
   <tr> 
  <td align="right"> 
  	密码: 
  </td> 
  <td> 
  	<s:textfield name="user.password" required="required" label="密码" size="15" id="password" onkeyup="this.value=this.value.replace(/(^\s+)|(\s+$)/g,'')" placeholder="密码不区分大小写" maxlength="20" /> 
  </td> 
  </tr> 
  <tr>
  <td>&nbsp;</td>
  <td>
  <s:hidden name="user.id"></s:hidden>
  <s:hidden name="user.stuid"></s:hidden>
	<s:hidden name="user.username"></s:hidden>
	<s:hidden name="user.yuanxi"></s:hidden>
	<s:hidden name="user.rtime"></s:hidden>
	<s:hidden name="user.type"></s:hidden>
	<s:hidden name="user.quanxian"></s:hidden>
  	<s:hidden name="user.quanxian1"></s:hidden>
  	<s:hidden name="user.quanxian2"></s:hidden>
  	<s:hidden name="user.quanxian3"></s:hidden>
  	<s:hidden name="user.quanxian4"></s:hidden>
  </td>
  </tr>
  <tr>
  <td align="center" colspan="2">
  <s:submit value="确定"/>
  </td>
  </tr>
  </table>
  </s:form>
  </div>
  </body>
</html>