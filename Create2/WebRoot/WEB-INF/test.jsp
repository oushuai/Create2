<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
    <html xmlns="http://www.w3.org/1999/xhtml">    
    <head>    
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />    
    <title>无标题文档</title>    
    <script src="jquery-1.8.3.min.js"></script>  
    <script src="jquery.cookie.js"></script>  
    <script src="jquery.base64.js"></script>  
       
    <script language="javascript" type="text/javascript">   
    function setCookie(){ //设置cookie    
             var loginCode = $("#login_code").val(); //获取用户名信息    
             var pwd = $("#login_password").val(); //获取登陆密码信息    
             var checked = $("[name='checkbox']:checked");//获取“是否记住密码”复选框  
      
             if(checked){ //判断是否选中了“记住密码”复选框    
                $.cookie("login_code",loginCode);//调用jquery.cookie.js中的方法设置cookie中的用户名    
                $.cookie("pwd",$.base64.encode(pwd));//调用jquery.cookie.js中的方法设置cookie中的登陆密码，并使用base64（jquery.base64.js）进行加密    
             }else{     
                $.cookie("pwd", null);     
             }      
        }     
        function getCookie(){ //获取cookie    
             var loginCode = $.cookie("login_code"); //获取cookie中的用户名    
             var pwd =  $.cookie("pwd"); //获取cookie中的登陆密码    
             if(pwd){//密码存在的话把“记住用户名和密码”复选框勾选住    
                $("[name='checkbox']").attr("checked","true");    
             }    
             if(loginCode){//用户名存在的话把用户名填充到用户名文本框    
                $("#login_code").val(loginCode);    
             }    
             if(pwd){//密码存在的话把密码填充到密码文本框    
                $("#login_password").val($.base64.decode(pwd));   
             }    
        }     
    function login(){     
        var userName = $('#login_code').value;    
        if(userName == ''){    
            alert("请输入用户名。");    
            return;    
        }    
        var userPass = $('#login_password').value;    
        if(userPass == ''){    
            alert("请输入密码。");    
            return;    
        }    
        //判断是否选中复选框，如果选中，添加cookie  
        if($("[name='checkbox']").attr("checked","true")){    
            //添加cookie    
            setCookie();    
            alert("记住密码登录。");    
            window.location = "http://www.baidu.com";    
        }else{    
            alert("不记密码登录。");    
            window.location = "http://www.baidu.com";    
        }    
    }    
    </script>    
    </head>    
    <body onload="getCookie();">    
    <center>    
        <table width="400px" height="180px" cellpadding="0" cellspacing="0" border="1" style="margin-top:100px;">    
            <tr>    
                <td align="center" colspan="2">欢迎登录</td>    
            </tr>    
            <tr>    
                <td align="right">    
                    <label>用户名：</label>    
                </td>    
                <td align="left">    
                    <input type="text" id="login_code" name="login_code" style="width:160px; margin-left:10px;" />    
                </td>    
            </tr>    
            <tr>    
                <td align="right">    
                    <label>密  码：</label>    
                </td>    
                <td align="left">    
                    <input type="password" id="login_password" name="login_password" style="width:160px; margin-left:10px;" />    
                </td>    
            </tr>    
            <tr>    
                <td align="center" colspan="2">    
                    <span style="font-size:12px; color:blue; vertical-align:middle;">是否记住密码</span>    
                    <input type="checkbox" style="vertical-align:middle;" />    
                </td>    
            </tr>    
            <tr>    
                <td align="center" colspan="2">    
                    <input type="submit" id="subLogin" name="subLogin" value="登 录" onclick="login();"/>      
                </td>    
            </tr>    
        </table>    
    </center>    
    </body>    
    </html>   