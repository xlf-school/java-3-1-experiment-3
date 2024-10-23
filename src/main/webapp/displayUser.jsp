<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.xlf.school.bean.User" %>
<html>
<head>
  <title>Display User</title>
</head>
<body>
<%
  User user = (User) application.getAttribute("user");

  if (user != null) {
%>
<h2>User Information from Application Scope:</h2>
<p>UserID: <%= user.getUserid() %></p>
<p>Username: <%= user.getUsername() %></p>
<p>Gender: <%= user.getGender() %></p>
<p>Age: <%= user.getAge() %></p>
<p>Member: <%= user.getMember() ? "是" : "否" %></p>
<%
} else {
%>
<p>No user found in application scope.</p>
<%
  }
%>
</body>
</html>
