<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<jsp:useBean id="goods" class="com.xlf.school.bean.Goods" scope="request">

</jsp:useBean>

<jsp:setProperty name="goods" property="gid" param="gid"/>
<jsp:getProperty name="goods" property="gid"/>

<jsp:getProperty name="goods" property="gname"/>
</body>
</html>
