<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>个人中心</title>
    <link rel="stylesheet" href="css/mb-common.css">
    <link rel="stylesheet" href="css/mbUser.css">
    <link rel="stylesheet" href="iconfont/font_1746803_6ag03603o6c/iconfont.css">
    <script src="js/jquery-3.4.1.js"></script>
    <script src="js/mbUser.js"></script>
</head>

<body>
    <div class="header">
        <a href="mbLogout" class="logout">登出</a>
        <div class="title">歪比巴卜</div>
        <div class="portrait">
            <img src="images/user/${user.id}.jpg" alt="">
        </div>
    </div>
    <div class="post">
        <img src="images/user_bg.png" alt="">
    </div>
    <div class="main">
        <div class="portrait">
            <img src="images/user/${user.id}.jpg" alt="">
        </div>
        <div class="edit">
            编辑
        </div>
        <div class="name">${user.name}</div>
        <div class="intro">还差一句话简介，有趣的灵魂就会被发现呦！</div>
        <div class="bottom">
            <div class="item active">我的影评</div>
            <div class="item">我的收藏</div>
        </div>
    </div>
    <div class="content">
        暂时还没有写过影评哦~
        <br>
        快去留下第一条影评吧~
    </div>
</body>

</html>