<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <title>申报管理</title>
     <link rel="stylesheet" href="./menu.css" type="text/css"></link>
    
  </head>
<body>    
   <s:if test="#session.user1.type=='管理员'">           
            <nav>
    <ul>
        <li><img src="./images/settings4.png" /><a href="#">项目维护</a>
               <ul>
            <li><a href="projectinformationList.action" target="rightFrame">项目汇总表维护</a></li>
            <li><a href="projectinformation1List.action" target="rightFrame">项目申报表维护</a></li>
            <li><a href="mediumList.action" target="rightFrame">项目中期检查报告维护</a></li>
            <li><a href="jietiList.action" target="rightFrame">项目结题报告维护</a></li>
        <li> <a href="yanqiList.action" target="rightFrame">项目延期报告维护</a></li>
            <li><a href="jiezhuanList.action" target="rightFrame">项目结转报告维护</a></li>
            <li> <a href="tongjiList.action" target="rightFrame">项目成果表维护</a></li>
        </ul>   
            </li>
            <br>
       <li><img src="./images/settings4.png" /><a href="#">用户信息维护</a>
               <ul>
            <li> <a href="studentinformationList.action" target="rightFrame">项目负责人维护</a></li>
            <li><a href="teacherList.action" target="rightFrame">指导老师维护</a></li>
            <li> <a href="pingweiinformationList.action" target="rightFrame">评委维护</a></li>
           
        </ul>   
            </li>
            <br>
  <li><img src="./images/settings4.png"><a href="#">用户维护</a>
               <ul>
            <li> <a href="userList.action" target="rightFrame">用户维护</a></li>
            <li><a href="userSetPwdView.action" target="rightFrame">密码设置</a></li>
            <li>  <a href="logout.action" target="_top">安全退出</a></li>
           
        </ul>   
            </li>
             </ul>
             </nav>
             
            </s:if>
             <s:elseif test="#session.user1.type=='学生'">
            
         <nav>
    <ul>
        <li style="padding-top:15px;padding-bottom:15px;"><img src="./images/document.png" style="padding-right:22px;"/><a href="#">项目申报</a>
               <ul>
            <li><form action="projectinformationList1.action" method="post" target="rightFrame">
       <input type="text" style="display:none;" name="projectinformation.leadernum" id="leadernum" value="<s:property value="#session.user1.stuid" />" size="12" maxlength="12"/>    
            <input type="submit" value="项目汇总表" onmouseover="this.style.backgroundColor='rgb(12, 254, 255)';" 
onmouseout="this.style.backgroundColor=' rgb(102, 204, 255)';" class="input"/>
</form></li>

            <li>
            <form action="projectinformation1List1.action" method="post" target="rightFrame">
            <input type="text" style="display:none;" name="projectinformation1.leadernum" value="<s:property value="#session.user1.stuid" />" size="12" maxlength="12"/>
            <input type="submit" value="项目申报表" onmouseover="this.style.backgroundColor='rgb(12, 254, 255)';" 
onmouseout="this.style.backgroundColor=' rgb(102, 204, 255)';" class="input"/>
</form>
</li>         
        </ul>   
            </li>
        <li><form action="mediumList1.action" method="post" target="rightFrame">
        <img src="./images/document.png" />
                 
           <input type="text" style="display:none;" name="medium.leadername" value="<s:property value="#session.user1.username" />" size="12" maxlength="12"/>
            <input type="submit" value="项目中期检查报告" onmouseover="this.style.backgroundColor='rgb(12, 254, 255)';" 
onmouseout="this.style.backgroundColor=' rgb(102, 204, 255)';" class="title"/>
           </form> </li>      
  		<li><form action="jietiList1.action" method="post" target="rightFrame">
        <img src="./images/document.png" />
                 
           <input type="text" style="display:none;" name="jieti.leadername" value="<s:property value="#session.user1.username" />" size="12" maxlength="12"/>
            <input type="submit" value="项目结题报告" onmouseover="this.style.backgroundColor='rgb(12, 254, 255)';" 
onmouseout="this.style.backgroundColor=' rgb(102, 204, 255)';" class="title"/>
           </form> </li>   
  		<li><form action="yanqiList1.action" method="post" target="rightFrame">
        <img src="./images/document.png" />
                 
           <input type="text" style="display:none;" name="yanqi.leadername" value="<s:property value="#session.user1.username" />" size="12" maxlength="12"/>
            <input type="submit" value="项目延期报告" onmouseover="this.style.backgroundColor='rgb(12, 254, 255)';" 
onmouseout="this.style.backgroundColor=' rgb(102, 204, 255)';" class="title"/>
          </form>  </li> 
  		<li><form action="jiezhuanList1.action" method="post" target="rightFrame">
        <img src="./images/document.png" />
                 
           <input type="text" style="display:none;" name="jiezhuan.leadername" value="<s:property value="#session.user1.username" />" size="12" maxlength="12"/>
            <input type="submit" value="项目结转报告" onmouseover="this.style.backgroundColor='rgb(12, 254, 255)';" 
onmouseout="this.style.backgroundColor=' rgb(102, 204, 255)';" class="title"/>
           </form> </li> 
  		 <li><img src="./images/user.png" style="padding-right:22px;"><a href="#">用户维护</a>
               <ul>
            <li> <form action="studentinformationList1.action" method="post" target="rightFrame">
             <input type="text" style="display:none;" name="studentinformation.num" value="<s:property value="#session.user1.stuid" />" />
            <input type="submit" value="个人信息维护" onmouseover="this.style.backgroundColor='rgb(12, 254, 255)';" 
onmouseout="this.style.backgroundColor=' rgb(102, 204, 255)';" border="0" style="color:wheat;font-size:16px;background-color:rgb(102, 204, 255);padding-right:80px;padding-left:0;padding-bottom:0;line-height:35px;border:0;" />
            </form></li>
            <li><a href="userSetPwdView.action" target="rightFrame">密码设置</a></li>
            <li>  <a href="logout.action" target="_top">安全退出</a></li>
  		</ul>
                  
  		
         
                    
            </s:elseif>
            <s:elseif test="#session.user1.type=='二级学院评委'">
             <nav>
    <ul>
        <li style="padding-top:10px;padding-bottom:10px;"><img src="./images/document.png" style="padding-right:22px;"/><a href="#">项目审核</a>
               <ul>
            <li><form action="shenhe1.action" method="post" target="rightFrame">
       <input type="text" style="display:none;" name="projectinformation.leadernum" id="leadernum" value="<s:property value="#session.user1.stuid" />" size="12" maxlength="12"/>    
            <input type="submit" value="二级学院项目申报评审" onmouseover="this.style.backgroundColor='rgb(12, 254, 255)';" 
onmouseout="this.style.backgroundColor=' rgb(102, 204, 255)';" class="input"/>
</form></li>

            <li>
            <form action="shenhe2.action" method="post" target="rightFrame">
            <input type="text" style="display:none;" name="jieti.yuanhexi" value="<s:property value="#session.user1.yuanxi" />" size="12" maxlength="12"/>
            <input type="submit" value="二级学院项目结题评审" onmouseover="this.style.backgroundColor='rgb(12, 254, 255)';" 
onmouseout="this.style.backgroundColor=' rgb(102, 204, 255)';" class="input"/>
</form>
</li>         
        </ul>   
            </li>
            <li><img src="./images/user.png" style="padding-right:22px;"><a href="#">用户维护</a>
               <ul>
            <li> <form action="pingweiinformationList1.action" method="post" target="rightFrame">
             <input type="text" style="display:none;" name="pingweiinformation.name" value="<s:property value="#session.user1.username" />" size="12" maxlength="12"/>
            <input type="submit" value="个人信息维护" onmouseover="this.style.backgroundColor='rgb(12, 254, 255)';" 
onmouseout="this.style.backgroundColor=' rgb(102, 204, 255)';" border="0" style="color:wheat;font-size:16px;background-color:rgb(102, 204, 255);padding-right:80px;padding-left:0;padding-bottom:0;line-height:35px;border:0;" />
            </form></li>
            <li><a href="userSetPwdView.action" target="rightFrame">密码设置</a></li>
            <li>  <a href="logout.action" target="_top">安全退出</a></li>                
            </ul> 
             </s:elseif>
             
             
             <s:elseif test="#session.user1.type=='校级评委'">
              <nav>
    <ul>
             <li><form action="shenhe2.action" method="post" target="rightFrame">
        <img src="./images/document.png" style="padding-right:10px;"/>
                 
           <input type="text" style="display:none;" name="projectinformation1.jindu" value="二级学院审核通过，等待校级评委审核" size="12" maxlength="12"/>
            <input type="submit" value="校级申报评审" onmouseover="this.style.backgroundColor='rgb(12, 254, 255)';" 
onmouseout="this.style.backgroundColor=' rgb(102, 204, 255)';" class="title"/>
           </form> </li>
              <li> 
              <img src="./images/document.png" />
              <a href="shenhe4.action" target="rightFrame">项目中期检查报告审核</a></li>      
  		<li><form action="shenhe6.action" method="post" target="rightFrame">
        <img src="./images/document.png" style="padding-right:10px;"/>
                 
           <input type="text" style="display:none;" name="jieti.jindu" value="二级学院审核通过，等待校级评委审核" size="12" maxlength="12"/>
            <input type="submit" value="校级结题评审" onmouseover="this.style.backgroundColor='rgb(12, 254, 255)';" 
onmouseout="this.style.backgroundColor=' rgb(102, 204, 255)';" class="title"/>
           </form> </li>   
  		<li><img src="./images/document.png" />
  		<a href="shenhe7.action" target="rightFrame">项目延期报告审核</a> </li> 
  		<li>
        <img src="./images/document.png" />                
            <a href="shenhe8.action" target="rightFrame">项目结转报告审核</a> </li> 
            <li>
        <img src="./images/document.png" />                
           <a href="shenhe9.action" target="rightFrame">项目成果统计审核</a> </li>
  		 <li><img src="./images/user.png" style="padding-right:16px;"><a href="#">用户维护</a>
               <ul>
            <li> <form action="pingweiinformationList1.action" method="post" target="rightFrame">
             <input type="text" style="display:none;" name="pingweiinformation.name" value="<s:property value="#session.user1.username" />" size="12" maxlength="12"/>
            <input type="submit" value="个人信息维护" onmouseover="this.style.backgroundColor='rgb(12, 254, 255)';" 
onmouseout="this.style.backgroundColor=' rgb(102, 204, 255)';" border="0" style="color:wheat;font-size:16px;background-color:rgb(102, 204, 255);padding-right:80px;padding-left:0;padding-bottom:0;line-height:35px;border:0;" />
            </form></li>
            <li><a href="userSetPwdView.action" target="rightFrame">密码设置</a></li>
            <li>  <a href="logout.action" target="_top">安全退出</a></li>
  		</ul>
  		</li>
  		</ul>
</nav>
        </s:elseif>
             <s:elseif test="#session.user1.type=='专家评委'">
              <nav>
    <ul>
        <li style="padding-top:10px;padding-bottom:10px;"><img src="./images/document.png" style="padding-right:22px;"/><a href="#">项目审核</a>
               <ul>
            <li><form action="shenhe3.action" method="post" target="rightFrame">
       <input type="text" style="display:none;" name="projectinformation1.jindu1"  value="校级评委推荐为校级" size="12" maxlength="12"/>    
            <input type="submit" value="专家评审(校级)" onmouseover="this.style.backgroundColor='rgb(12, 254, 255)';" 
onmouseout="this.style.backgroundColor=' rgb(102, 204, 255)';" class="input"/>
</form></li>

            <li>
            <form action="shenhe3.action" method="post" target="rightFrame">
            <input type="text" style="display:none;" name="projectinformation1.jindu1" value="校级评委推荐为省级" size="12" maxlength="12"/>
            <input type="submit" value="专家评审(省级)" onmouseover="this.style.backgroundColor='rgb(12, 254, 255)';" 
onmouseout="this.style.backgroundColor=' rgb(102, 204, 255)';" class="input"/>
</form>
</li>         
        </ul>   
            </li>
              <li><img src="./images/user.png" style="padding-right:22px;"><a href="#">用户维护</a>
               <ul>
            <li> <form action="pingweiinformationList1.action" method="post" target="rightFrame">
             <input type="text" style="display:none;" name="pingweiinformation.name" value="<s:property value="#session.user1.username" />" size="12" maxlength="12"/>
            <input type="submit" value="个人信息维护" onmouseover="this.style.backgroundColor='rgb(12, 254, 255)';" 
onmouseout="this.style.backgroundColor=' rgb(102, 204, 255)';" border="0" style="color:wheat;font-size:16px;background-color:rgb(102, 204, 255);padding-right:80px;padding-left:0;padding-bottom:0;line-height:35px;border:0;" />
            </form></li>
            <li><a href="userSetPwdView.action" target="rightFrame">密码设置</a></li>
            <li>  <a href="logout.action" target="_top">安全退出</a></li>
  		</ul>
  		</li>
  		</ul>
</nav>      
           </s:elseif>
            <s:elseif test="#session.user1.type=='指导老师'">
           <nav>
    <ul>
     <li style="padding-top:10px;">
    <img src="./images/document.png" style="padding-right:22px;"/>
    <form action="tongjiList1.action" method="post" target="rightFrame">
             <input type="text" style="display:none;" name="tongji.leaderteacher" value="<s:property value="#session.user1.username" />" size="12" maxlength="12"/>
            <input type="submit" value="项目成果表" onmouseover="this.style.backgroundColor='rgb(12, 254, 255)';" 
onmouseout="this.style.backgroundColor=' rgb(102, 204, 255)';" class="title"/>
            </form></li>
                   <li><img src="./images/user.png" style="padding-right:22px;"><a href="#">用户维护</a>
               <ul>
            <li> <form action="teacherList1.action" method="post" target="rightFrame">
             <input type="text" style="display:none;" name="teacher.name" value="<s:property value="#session.user1.username" />" size="12" maxlength="12"/>
 <input type="submit" value="个人信息维护" onmouseover="this.style.backgroundColor='rgb(12, 254, 255)';" 
onmouseout="this.style.backgroundColor=' rgb(102, 204, 255)';" border="0" style="color:wheat;font-size:16px;background-color:rgb(102, 204, 255);padding-right:80px;padding-left:0;padding-bottom:0;line-height:35px;border:0;" />
            </form></li>
            <li><a href="userSetPwdView.action" target="rightFrame">密码设置</a></li>
            <li>  <a href="logout.action" target="_top">安全退出</a></li>
  		</ul>
  		</li>
  		</ul>
</nav>     
       </s:elseif>
         
</body>
</html>
