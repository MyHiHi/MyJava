<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  </head>
  
  <% 
  		/* 	${ "",""}设置 */
  		request.setAttribute("info", "submit");
  %>
  <body  style="background-color: green">
    <form method="post" action="ViewOutcome.jsp">
    <h1> 输入您的基本信息</h1>
    昵称:&nbsp;<input type="text" name="userName">
    <br />
    密码:&nbsp;<input type="password" name="pwd">
    <br />
   <h1> 输入您经常购物的平台</h1>
    <input type="checkbox" value="淘宝" name="shoppingPlatform">淘宝
    <br />
    <input type="checkbox" value="天猫" name="shoppingPlatform">天猫
    <br />
     <input type="checkbox" value="京东" name="shoppingPlatform">京东
    <br />
    
    <%-- 
    使用 ${ }方便取值 --%>
    <input type="submit" value=${info} >
    </form>
  </body>
</html>
