<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="j" uri="/jodd" %>
<%
response.setStatus(HttpServletResponse.SC_MOVED_PERMANENTLY); 
String newLocn = "http://weibo.com"; 
response.setHeader("Location",newLocn); 
%>