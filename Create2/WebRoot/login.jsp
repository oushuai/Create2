<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<% request.setCharacterEncoding("utf-8"); %>
<html>
  <head>
    <title>申报管理-系统登录/注册</title>
 	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="申报管理">
	<link rel="stylesheet" href="./stylesheet.css" type="text/css"></link>
		<script type="text/javascript" src="<%=request.getContextPath()%>/dwr/engine.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/dwr/util.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/dwr/interface/AjaxUserService.js"></script>


	 <script src="script/jquery.min.js"></script>  
	<script src="script/jquery.cookie.js"></script>  
	<script src="script/jquery.base64.js"></script>  
   

	<script src="script/login.js">

</script>
 </head>
  <body onload="getCookie();" style="overflow-y:hidden;background-color: rgb(102, 204, 255);">   
    <div align="center">
   <table style="width:100%;padding-left:15px;padding-top:13px;">
            <tr>
                <td style="width:80%;">
              
                            	<img alt="" src="./images/图片1.png" width="50px" height="50px">
                <span style="color:white;font-size:20px;vertical-align:top;line-height:50px;">邵阳学院</span>
                </td>
                <td style="width:80%;">
                            	
                </td>
                
	              </tr>
	              <tr><td style="font-size:40px;color:white;font-weight:bold;">大学生创新性项目申报系统</td></tr>
	           </table>
        	<table>
        <tr>
            <td></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td align="center">
				<s:form action="login.action" method="post" theme="simple" id="loginForm">
				<table style="background-color:white;" width="480px" >
				
				<tr>
				<td align="center" colspan="2" style="line-height:40px;">
				<b style="font-size:20px;color:rgb(102, 204, 255);">系统登录</b>
				</td>
				</tr>
				<tr>
				<td align="right" style="padding-top:15px;">
					<img src="./images/user.png" alt="" width="34px" height="34px">
				</td>
				<td>
					
			<s:textfield name="user.username" style="width:80%;height:40px;" id="username" required="required" label="用户名" onblur="check()" onkeyup="this.value=this.value.replace(/^ +| +$/g,'')" size="15"/>
				</td>
				</tr>
				<tr>
				<td align="right" style="padding-top:15px;">
					<img src="./images/login.png"  alt="">
				</td>
				<td>
			
					<s:password name="user.password" style="width:80%;height:40px;" id="password" required="required" placeholder="密码不区分大小写" label="密码" size="15"/>
				 <a href="" onclick="addParam()" id="a1">忘记密码？</a> </td>
				
				</tr>
				<tr>    
            <td align="right">  
         
            <input type="checkbox" id="checkbox" checked="checked"/>        
            </td>
            <td style="color: rgb(102, 204, 255)">  记住密码 </td> 
        </tr> 
				<tr>
				<td align="center" colspan="2" style="padding-bottom:10px;">
				<s:submit value="登录" onclick="login();" id="login" onmouseover="this.style.backgroundColor='rgb(12, 254, 255)';" 
onmouseout="this.style.backgroundColor=' rgb(102, 204, 255)';"/>
				<a id="register" href="register.jsp" style="margin-left:30px;color:white;padding:2px 5px;text-decoration:none;">注册</a>
				</td>
				</table>
				</s:form>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td></td>
        </tr>
        <tr>
            <td style="color:white;text-align:center">
          <span> Copyright &copy; Shaoyang University</span> <br />
            All Rights Reserved.
			<span>	版权所有 &copy;邵阳学院java项目小组</span><br />
				<span>工作室：邵阳学院信息工程系系办5706</span><br />
				
            </td>
        </tr>
    </table>
    </div>
  </body>
</html>