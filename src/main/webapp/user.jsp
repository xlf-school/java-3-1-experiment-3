<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.xlf.school.bean.User" %>
<html>
<head>
  <title>User Information</title>
</head>
<body>
<%
  User user = new User();
  user.setUserid(1);
  user.setUsername("筱锋");
  user.setGender("男");
  user.setAge(21);
  user.setMember(true);

  application.setAttribute("user", user);
%>

<h2>User Information:</h2>
<p>UserID: <%= user.getUserid() %></p>
<p>Username: <%= user.getUsername() %></p>
<p>Gender: <%= user.getGender() %></p>
<p>Age: <%= user.getAge() %></p>
<p>Member: <%= user.getMember() ? "是" : "否" %></p>
</body>
</html>
