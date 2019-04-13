/**
 * 
 */
function setCookie(){ //设置cookie  
		 
         var loginCode = $("#username").val(); //获取用户名信息    
         var pwd = $("#password").val(); //获取登陆密码信息    
         var checked = $("[name='checkbox']:checked");//获取“是否记住密码”复选框  
         console.log(checked)
         if(checked){ //判断是否选中了“记住密码”复选框    
            $.cookie("username",loginCode);//调用jquery.cookie.js中的方法设置cookie中的用户名    
            $.cookie("pwd",$.base64.encode(pwd));//调用jquery.cookie.js中的方法设置cookie中的登陆密码，并使用base64（jquery.base64.js）进行加密    
         }else{     
            $.cookie("pwd", null);     
         }      
    }  
    function getCookie(){ //获取cookie  
    	
         var loginCode = $.cookie("username"); //获取cookie中的用户名    
         var pwd =  $.cookie("pwd"); //获取cookie中的登陆密码    
         if(pwd){//密码存在的话把“记住用户名和密码”复选框勾选住    
            $("[name='checkbox']").attr("checked","true");    
         }    
         if(loginCode){//用户名存在的话把用户名填充到用户名文本框    
            $("#username").val(loginCode);    
         }    
         if(pwd){//密码存在的话把密码填充到密码文本框    
            $("#password").val($.base64.decode(pwd));   
         }    
    }     
function login(){     
	
    var userName = document.getElementById('username');       
    if(userName == ''){    
          
        return;    
    }    
    var userPass = document.getElementById('password');    
    if(userPass.value == ''){    
        alert("请输入密码。");    
        return;    
    }    
	
    //判断是否选中复选框，如果选中，添加cookie  
    if($("[name='checkbox']").attr("checked","true")){    
        //添加cookie    
       
        setCookie();    
           
         
    }else{    
           

    }    
}    
function addParam()
{
  var objA=document.getElementById("a1");
   var userName = document.getElementById('username');
  objA.href="userForgetValidateView.action?user.username="+document.getElementById("username").value;
   if(userName == ''){    
         alert("用户名不能为空！");
        return false;    
    }  
    else{
    return true;
    }
}