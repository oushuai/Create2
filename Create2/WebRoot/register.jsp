<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>申报管理-用户注册</title>
    <link rel="stylesheet" href="stylesheet.css" type="text/css"></link>
		<script type="text/javascript" src="<%=request.getContextPath()%>/dwr/engine.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/dwr/util.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/dwr/interface/AjaxUserService.js"></script>
		<script type="text/javascript">
	      function check2() {
	        var username=document.all.username.value;
	        if (username=="") {
	          window.alert("用户名不能为空！");
	          return false;	      
	        }
	        AjaxUserService.exist(username,show);
	      }
	      function show1(data) {
	        if (data) {
	          window.alert("该用户名已被注册！");
	          return false;
	        }
	         
	      }
	 function check3() {
	        var stuid=document.all.stuid.value;
	        if (stuid=="") {
	          window.alert("学号不能为空！");
	          return false;	      
	        }
	        AjaxUserService.exist1(stuid,show);
	      }
	      function show(data) {
	        if (data) {
	          window.alert("该用户名已被注册！");
	          return false;
	        }
	         
	      }  
	      
	        
	      
		</script>	
		<script type="text/javascript">
    function check(){
   var password = document.getElementById("password").value;
   var repsword = document.getElementById("repsword").value;
   var stuid = document.getElementById("stuid").value;
     var type = document.getElementById("type").value;
     var yuanxi = document.getElementById("yuanxi").value;
     if(type=='学生'){
   if(stuid === ''){
      alert('学号不能为空');
      return false;
   }   
   if(yuanxi === ''){
      alert('院系不能为空');
      return false;
   }   
   }
    if(type=='二级学院评委'){
    if(yuanxi === ''){
      alert('院系不能为空');
      return false;
   }   }
   if(type=='指导老师'){
    if(yuanxi === ''){
      alert('院系不能为空');
      return false;
   }   }
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
var reg = /((?=.*[a-z])(?=.*\d)|(?=[a-z])(?=.*[#@!~%^&*])|(?=.*\d)(?=.*[#@!~%^&*]))[a-z\d#@!~%^&*]{6,15}/i;
if(!reg.test(password)){
alert("密码只能由数字和字母组成");
return  false; 
    }    
}
</script>
 <script>
       function disinput(obj){
        if(obj.value=='学生'){
            document.getElementById("stuid").style.display="block";
            document.getElementById("xuehao").style.display="block";
            document.getElementById("department").style.display="block";
            document.getElementById("yuanxi").style.display="block";
                   document.getElementById("username").value='';
                   document.getElementById("password").value='';
                   document.getElementById("repsword").value='';
                   
        }if(obj.value=='指导老师'){document.getElementById("stuid").style.display="none";
       document.getElementById("xuehao").style.display="none"; 
       document.getElementById("yuanxi").style.display="block";
       document.getElementById("department").style.display="block";
       document.getElementById("username").value='';
                   document.getElementById("password").value='';
                   document.getElementById("repsword").value='';}
      else if(obj.value=='二级学院评委'){
      document.getElementById("xuehao").style.display="none"; 
       document.getElementById("yuanxi").style.display="block";document.getElementById("stuid").style.display="none";
       document.getElementById("department").style.display="block"; 
       document.getElementById("username").value='';
                   document.getElementById("password").value='';
                   document.getElementById("repsword").value='';}
    
     if(obj.value=='校级评委'){
      document.getElementById("xuehao").style.display="none"; 
       document.getElementById("yuanxi").style.display="none";document.getElementById("stuid").style.display="none";
       document.getElementById("department").style.display="none"; 
       document.getElementById("username").value='';
                   document.getElementById("password").value='';
                   document.getElementById("repsword").value='';}
                   if(obj.value=='专家评委'){
      document.getElementById("xuehao").style.display="none"; 
       document.getElementById("yuanxi").style.display="none";document.getElementById("stuid").style.display="none";
       document.getElementById("department").style.display="none"; 
       document.getElementById("username").value='';
                   document.getElementById("password").value='';
                   document.getElementById("repsword").value='';}
 }   
    </script>	
  </head>
  <body>
    <div align="center">
				<s:form action="register.action" method="post" name="fm2" theme="simple" onsubmit="return check();">
				<table style="border: thin dashed #008080;" width="350" align="center">
				<tr>
				<td style="width: 30%">&nbsp;</td>
				<td style="width: 70%">&nbsp;</td>
				</tr>
				<tr>
				<td align="center" colspan="2">
				<b>系统注册</b>
				</td>
				</tr>
				<tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				</tr>
				<tr>
				<td align="right">	
				登录身份：		
				</td>
				<td>
			
<s:select list="{'','学生','指导老师','二级学院评委','校级评委','专家评委'}" required="required" name="user.type" label="类型" onChange="disinput(this)" id="type"></s:select>
       
				</td>
				</tr>
				
				<tr>
				<td align="right">
					用户名：
				</td>
				<td>
					<s:textfield name="user.username" required="required" label="用户名" size="10" maxlength="10" onblur="check2()" id="username"/>
				</td>
				</tr>
				
		<tr>
				<td align="right">
					<s:textfield id="department" style="border:none;color:blue;background-color:transparent" size="3" color="#330033" maxlength="3" value="院系:" disabled="true" />
				</td>
				<td>
<s:select list="{'','测试系','经济与管理学院','政法学院','体育学院','文学院','外国语学院','音乐舞蹈学院','艺术设计学院','理学院','食品与化学工程院','城乡建设学院','机械与能源工程学院','电气工程学院','信息工程学院','国际学院','马克思主义学院','会计学院','临床二院','理学院','药学院','医学检验学院','护理学院','医学公共课部','医学院','创新创业学院'}" required="required" name="user.yuanxi" label="院系" id="yuanxi"></s:select>
				</td>
				</tr>
				<tr>
				<td align="right">
					<s:textfield id="xuehao" style="border:none;color:blue;background-color:transparent" size="3" color="#330033" maxlength="3" value="学号:" disabled="true"/>
				</td>
				<td>
					<s:textfield name="user.stuid" onkeyup="this.value=this.value.replace(/\D/g,'')" label="学号" size="10" onblur="check3()" maxlength="10" id="stuid"/>
				</td>
				</tr>				
				
				
				<tr>
				<td align="right">
					密码：
				</td>
				<td>
					<s:password name="user.password" required="required" style="ime-mode:disabled" onkeyup="this.value=this.value.replace(/[^\w_]/g,'');" data-errormessage="密码长度最少6位,拼音+数字" minlength="6" maxlength="15" placeholder="密码长度最少6位,字母+数字" id="password" />
				</td>
				</tr>
				<tr>
				<td align="right">
					确认密码：
				</td>
				<td>
					<s:password id="repsword" required="required" label="确认密码" />
					<div id=check_tip></div>
				</td>
				</tr>	
				 <tr> 
  <td>
    <%
    java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat(  
     "yyyy-MM-dd HH:mm:ss");  
   java.util.Date currentTime = new java.util.Date();  
   String rtime = simpleDateFormat.format(currentTime).toString();  
     %>
  	<input name="user.rtime" id="rtime" type="hidden" value="<%=rtime %>"/>
  </td>
  </tr>	
  <s:hidden name="user.id"></s:hidden>		
  <s:hidden name="user.quanxian"></s:hidden>
  	<s:hidden name="user.quanxian1"></s:hidden>
  	<s:hidden name="user.quanxian2"></s:hidden>
  	<s:hidden name="user.quanxian3"></s:hidden>
  	<s:hidden name="user.quanxian4"></s:hidden>
				<tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				</tr>
				<tr>
				<td align="center" colspan="2">
				<s:submit value="注册"/>
			   <input type="button" value="返回" onclick="javascript:history.go(-1);"></td>
				</tr>
				 </table>
				
				</s:form>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td><hr /></td>
        </tr>
        <tr>
            <td style="text-align: center">
            <font color="#330033">Copyright &copy; Shaoyang University <br />
            All Rights Reserved.</font>
				<font color="#330033">版权所有 &copy;邵阳学院java项目小组</font><br />
				<font color="#330033">工作室：邵阳学院信息工程系系办5706</font><br />
            </td>
        </tr>  
        </div>
  </body>
</html>