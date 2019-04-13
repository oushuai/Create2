<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<% //request.setCharacterEncoding("UTF-8");%>
<html>
  <head>
    <title>系统用户</title>
    <link rel="stylesheet" href="./stylesheet.css" type="text/css"></link>
  </head>
  <script type="text/javascript">
	      function check() {
	        var stuid = document.getElementById("stuid").value;
	         var type = document.getElementById("type").value;
	          var yuanxi = document.getElementById("yuanxi").value;
	           var username = document.getElementById("username").value;
	           var username1 = document.getElementById("username1").value;
	            var stuid1 = document.getElementById("stuid1").value;
	         var type1 = document.getElementById("type1").value;
	          var yuanxi1 = document.getElementById("yuanxi1").value;
   if(type!=type1){
   alert("用户类型错误！");
      return false;
   }
   if(type=='二级学院评委'){
   if(username1 == "") {
      alert("用户名不能为空！");
      return false;
   }
   if(username != username1) {
      alert("用户名错误！");
      return false;
   }
    if(yuanxi1 === ''){
      alert('院系不能为空');
      return false;
   }     
     if(yuanxi != yuanxi1) {
      alert("院系错误！");
      return false;
   }
  }
    if(type=='指导老师'){
     if(yuanxi1 === ''){
      alert('院系不能为空');
      return false;
   } 
     if(yuanxi != yuanxi1) {
      alert("院系错误！");
      return false;
   }
 }
   if(type=='学生'){
   if(username1 == "") {
      alert("用户名不能为空！");
      return false;
   }
   if(username != username1) {
      alert("用户名错误！");
      return false;
   }
  if(yuanxi1 === ''){
      alert('院系不能为空');
      return false;
   }  
   if(yuanxi != yuanxi1) {
      alert("院系错误！");
      return false;
   } 
    if(stuid1 === ''){
      alert('学号不能为空');
      return false;
   }
    if(stuid != stuid1) {
      alert("学号错误！");
      return false;
   } 
 }
}
		</script>
  <script>
       function disinput(obj){
        if(obj.value=='学生'){           
       document.getElementById("yuanxi1").style.display="block";
       document.getElementById("stuid1").style.display="block";
       document.getElementById("xuehao").style.display="block";
        document.getElementById("department").style.display="block";      
             }      
        if(obj.value=='指导老师'){      
       document.getElementById("yuanxi1").style.display="block";
       document.getElementById("stuid1").style.display="none";
       document.getElementById("xuehao").style.display="none";
        document.getElementById("department").style.display="block"; 
                   }
      else if(obj.value=='二级学院评委'){
      document.getElementById("xuehao").style.display="none"; 
       document.getElementById("yuanxi").style.display="block";
       document.getElementById("department").style.display="block"; 
       document.getElementById("yuanxi1").style.display="block";
       document.getElementById("stuid1").style.display="none";
                   }   
     if(obj.value=='校级评委'){
      document.getElementById("yuanxi1").style.display="none";
       document.getElementById("stuid1").style.display="none";
       document.getElementById("xuehao").style.display="none";
        document.getElementById("department").style.display="none";
                   }
                   if(obj.value=='专家评委'){ 
       document.getElementById("yuanxi1").style.display="none";
       document.getElementById("stuid1").style.display="none";
       document.getElementById("xuehao").style.display="none";
        document.getElementById("department").style.display="none";
       }
 }
    </script>
  <body>
  <div align="center">
  <b>用户忘记密码验证</b>
  <br />
  <br />
  <s:form action="userForgetValidate.action" method="post" theme="simple" onsubmit="return check();">
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
  	<s:textfield name="user.username" type="hidden" label="用户名" size="20" maxlength="20" onblur="check()" disabled="true" id="username"/>
  <s:textfield id="username1" size="20" color="#330033" maxlength="20" />
  </td>
  </tr> 
  <tr>
  <td align="right">
  	用户类型:
  </td>
  <td>
  <s:textfield name="user.type" type="hidden" label="用户类型" size="20" maxlength="20" disabled="true" id="type"/>
  <s:select list="{'','学生','二级学院评委','校级评委','专家评委','指导老师'}" name="type1" required="required" onChange="disinput(this)" label="用户类型" id="type1"></s:select>
  </td>
  </tr>
   <tr>
				<td align="right">
					<s:textfield id="department" style="border:none;color:blue;background-color:transparent" size="3" color="#330033" maxlength="3" value="院系:" disabled="true" />
				</td>
				<td>
					<s:textfield name="user.yuanxi" label="院系" type="hidden" disabled="true" size="20" maxlength="20" id="yuanxi"/>
<s:select list="{'','测试系','经济与管理学院','政法学院','体育学院','文学院','外国语学院','音乐舞蹈学院','艺术设计学院','理学院','食品与化学工程院','城乡建设学院','机械与能源工程学院','电气工程学院','信息工程学院','国际学院','马克思主义学院','会计学院','临床二院','理学院','药学院','医学检验学院','护理学院','医学公共课部','医学院','创新创业学院'}" required="required" name="yuanxi1" label="院系" id="yuanxi1"></s:select>
				</td>
				</tr>
  <tr>
				<td align="right">
					<s:textfield id="xuehao" style="border:none;color:blue;background-color:transparent" size="3" color="#330033" maxlength="3" value="学号:" disabled="true"/>
				</td>
				<td>
					<s:textfield name="user.stuid" onkeyup="this.value=this.value.replace(/\D/g,'')" label="学号" size="20" maxlength="20" id="stuid" type="hidden" disabled="true"/>
					<s:textfield name="stuid1" onkeyup="this.value=this.value.replace(/\D/g,'')" label="学号" size="20" maxlength="20" id="stuid1"/>
				</td>
				</tr>
			
  <tr>
  <td>&nbsp;</td>
  <td>
  <s:hidden name="user.id"></s:hidden>
	<s:hidden name="user.username"></s:hidden>
	<s:hidden name="user.rtime"></s:hidden>
	<s:hidden name="user.quanxian"></s:hidden>
  	<s:hidden name="user.quanxian1"></s:hidden>
  	<s:hidden name="user.quanxian2"></s:hidden>
  	<s:hidden name="user.quanxian3"></s:hidden>
  	<s:hidden name="user.quanxian4"></s:hidden>
  	<s:hidden name="user.password"></s:hidden>
  	<s:hidden name="user.type"></s:hidden>
  	<s:hidden name="user.yuanxi"></s:hidden>
  	<s:hidden name="user.stuid"></s:hidden>
  </td>
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
