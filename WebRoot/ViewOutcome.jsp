<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.zt.test.Sample" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  </head>
  <%
  		Sample sample=new Sample();
  		String userName=new String(request.getParameter("userName").getBytes("ISO-8859-1"),"utf-8") ;
  		String pwd=request.getParameter("pwd");
  		sample.set(userName, pwd);
  		String[] plateform=request.getParameterValues("shoppingPlatform");
  		sample.set(plateform);
  		
   %>
  
  <body>
   <%
   request.setCharacterEncoding("utf-8");
   out.print("<table width=\"100%\" border=\"1\" align=\"center\">"+
   "<tr bgcolor=\"red\"><td>参数</td><td>参数值</td></tr>");
out.println("your name is <tr><td>"+sample.userName+"</td>"+"your password is<td> "+sample.pwd+"</td></tr>");
String[] platform=sample.value;
	for(int t=0;t<platform.length;t++){
	String platformValue=new String(plateform[t].getBytes("ISO-8859-1"),"utf-8");
		out.print("<tr><td>"+":您选取的购物平台是 :</td>"+"<td>"+platformValue+"</td></tr>");
	}
    %>
   
   
  </body>
</html>
