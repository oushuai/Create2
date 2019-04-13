<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <title>系统用户</title>
    <link rel="stylesheet" href="./stylesheet.css" type="text/css"></link>
		<script type="text/javascript" src="<%=request.getContextPath()%>/dwr/engine.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/dwr/util.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/dwr/interface/AjaxUserService.js"></script>
		<script type="text/javascript">
	      function check() {
	        var username=document.all.username.value;
	        var password = document.getElementById("password").value;
	        var stuid = document.getElementById("stuid").value;
	         var type = document.getElementById("type").value;
	          var yuanxi = document.getElementById("yuanxi").value;
	         
	        if (username=="") {
	          window.alert("用户名不能为空！");
	          return false;	      
	        }
	        if(password === ''){
      alert('密码不能为空');
      return false;
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
		<script>
       function disinput(obj){
        if(obj.value=='学生'){
            document.getElementById("stuid").style.display="block";
            document.getElementById("xuehao").style.display="block";
            document.getElementById("department").style.display="block";
            document.getElementById("yuanxi").style.display="block";
                           }
         if(obj.value=='指导老师'){
       document.getElementById("stuid").style.display="none";
       document.getElementById("xuehao").style.display="none"; 
       document.getElementById("yuanxi").style.display="block";
       document.getElementById("department").style.display="block";           
                   }
      else if(obj.value=='二级学院评委'){
      document.getElementById("xuehao").style.display="none"; 
       document.getElementById("yuanxi").style.display="block";
       document.getElementById("stuid").style.display="none";
       document.getElementById("department").style.display="block"; 
                  }
    
     if(obj.value=='校级评委'){
      document.getElementById("xuehao").style.display="none"; 
       document.getElementById("yuanxi").style.display="none";
       document.getElementById("stuid").style.display="none";
       document.getElementById("department").style.display="none"; 
                }
                   if(obj.value=='专家评委'){
      document.getElementById("xuehao").style.display="none"; 
       document.getElementById("yuanxi").style.display="none";
       document.getElementById("stuid").style.display="none";
       document.getElementById("department").style.display="none"; 
               }
            if(obj.value=='管理员'){
      document.getElementById("xuehao").style.display="none"; 
       document.getElementById("yuanxi").style.display="none";
       document.getElementById("stuid").style.display="none";
       document.getElementById("department").style.display="none"; 
            }
}
    </script>
 </head>
  <body>
  <div align="center">
  <b>用户增加</b>
  <br />
  <br />
  <s:form action="userAdd.action" method="post" theme="simple" onsubmit="return check();">
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
  	<s:textfield name="user.username" required="required" label="用户名" size="10" maxlength="10" onblur="check()" id="username"/>
  </td>
  </tr>
   <tr> 
  <td align="right"> 
  	密码: 
  </td> 
  <td> 
  	<s:textfield name="user.password" required="required" label="密码" size="15" id="password" onkeyup="this.value=this.value.replace(/[^\w_]/g,'');" placeholder="密码不区分大小写" maxlength="20" /> 
  </td> 
  </tr> 
  <tr>
  <td align="right">
  	用户类型:
  </td>
  <td>
  	<s:select list="{'','学生','二级学院评委','校级评委','专家评委','指导老师','管理员'}" name="user.type" onChange="disinput(this)" label="用户类型" id="type"></s:select>
  </td>
  </tr>
  <tr>
				<td align="right">
					<s:textfield id="department" style="border:none;color:blue;background-color:transparent" size="3" color="#330033" maxlength="3" value="院系:" disabled="true" />
				</td>
				<td>
<s:select list="{'','测试系','经济与管理学院','政法学院','体育学院','文学院','外国语学院','音乐舞蹈学院','艺术设计学院','理学院','食品与化学工程院','城乡建设学院','机械与能源工程学院','电气工程学院','信息工程学院','国际学院','马克思主义学院','会计学院','临床二院','理学院','药学院','医学检验学院','护理学院','医学公共课部','医学院','创新创业学院'}" name="user.yuanxi" label="院系" id="yuanxi"></s:select>
				</td>
				</tr>
  <tr>
				<td align="right">
					<s:textfield id="xuehao" style="border:none;color:blue;background-color:transparent" size="3" color="#330033" maxlength="3" value="学号:" disabled="true"/>
				</td>
				<td>
					<s:textfield name="user.stuid" onkeyup="this.value=this.value.replace(/\D/g,'')" label="学号" size="10" maxlength="10" id="stuid"/>
				</td>
				</tr>
				<tr>
  <td align="right">
  	二级学院和学生申报权限:
  </td>
  <td>
<s:radio list="{'有','无','关闭通道'}" name="user.quanxian" label="权限" id="quanxian"></s:radio>
  </td>
  </tr>
  <tr>
  <td align="right">
  	校级评委和学生中期报告权限:
  </td>
  <td>
<s:radio list="{'有','无','关闭通道'}" name="user.quanxian1" label="权限" id="quanxian1"></s:radio>
  </td>
  </tr>
  <tr>
  <td align="right">
  	专家评委和学生结题权限:
  </td>
  <td>
<s:radio list="{'有','无','关闭通道'}" name="user.quanxian2" label="权限" id="quanxian2"></s:radio>
  </td>
  </tr>
  <tr>
  <td align="right">
  	指导老师和学生延期权限:
  </td>
  <td>
<s:radio list="{'有','无','关闭通道'}" name="user.quanxian3" label="权限" id="quanxian3"></s:radio>
  </td>
  </tr>
  <tr>
  <td align="right">
  		学生结转权限：
  </td>
  <td>
<s:radio list="{'有','无','关闭通道'}" name="user.quanxian4" label="权限" id="quanxian4"></s:radio>
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
     <s:hidden name="user.id"></s:hidden>	
  	<input name="user.rtime" id="rtime" type="hidden" value="<%=rtime %>"/>
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
