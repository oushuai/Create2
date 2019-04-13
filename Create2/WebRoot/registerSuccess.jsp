<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <title>注册成功</title>
    <link rel="stylesheet" href="./stylesheet.css" type="text/css"></link>
      	<script>

var time=5;
var timer=setInterval('tiaozhuan()',1000);

function tiaozhuan(){
var t= document.getElementById("id8");
if(time>0){
t.innerHTML=time;
time--;
}else {
clearInterval(timer);
location.href="http://localhost:8080/Create2/login.jsp";
}
}
</script>
  </head>
  <body>
  	<s:property value="user.username" />,您好！您已注册成功。
  	<font id="id8" size="7">5</font>秒钟跳转<a href="http://localhost:8080/Create2/login.jsp" >或点击我直接跳转</a>
  </body>
</html>

