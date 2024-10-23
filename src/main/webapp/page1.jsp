<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
<jsp:useBean id="goods" class="com.xlf.school.bean.Goods" scope="page">

</jsp:useBean>

<jsp:setProperty property="gname" name="goods" value="小米 10"/>
<jsp:getProperty name="goods" property="gname"/>
</body>
</html>
