<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>登录 / 注册</title>
    <link rel="stylesheet" href="css/mb-common.css">
    <link rel="stylesheet" href="css/mbLogin.css">
    <link rel="stylesheet" href="iconfont/font_1746803_6ag03603o6c/iconfont.css">
    <script src="js/jquery-3.4.1.js"></script>
    <script src="js/mbLogin.js"></script>
</head>

<body>
    <div class="header">
        <div class="title">账号登录</div>
    </div>
    <div class="main">
        <form action="mbLoginOK" name="login">
            <input type="text" name="email" placeholder="邮箱账号">
            <input type="password" name="pwd" placeholder="登陆密码">
            <button type="button" class="submit" onclick="document.login.submit();">登 录</button>
            <p>或</p>
            <button class="white">手机快捷登陆</button>
            <div class="text">点击登录或完成账号注册表示您已阅读并同意歪比巴卜
                <br>
                <span>《用户协议》</span>和<span>《隐私政策》</span>
            </div>
        </form>
    </div>
</body>

</html>