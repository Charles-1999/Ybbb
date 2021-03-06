<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>歪比巴卜后台管理系统</title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/ht-common.css">
    <link rel="stylesheet" href="css/editMovie.css">
    <link rel="stylesheet" href="iconfont/font_1746803_6ag03603o6c/iconfont.css">
    <script src="js/jquery-3.4.1.js"></script>
    <script src="js/editMovie.js"></script>
</head>

<body>
    <div class="header">
        <div class="w">
            <div class="logo fl">
                <a href="<%=request.getContextPath() %>/ht">歪比巴卜-后台管理系统</a>
            </div>
        </div>
    </div>
    <div class="main w clearfix">
        <div class="left fl">
            <div class="top">
                <div class="portrait">
                    <img src="images/user/${user.id}.jpg" alt="">
                </div>
                <div class="name">
                    ${user.name}
                </div>
                <div class="logout">
                    <a href="logout">退出登录</a>
                </div>
            </div>
            <div class="list">
                <ul>
                    <li><a href="ht">个人资料</a></li>
                    <li class="active"><a href="movieManagement">影片管理</a></li>
                    <li><a href="userManagement">用户管理</a></li>
                    <li><a href="commentManagement">评论管理</a></li>
                    <li><a href="javascript:;">消息</a></li>
                </ul>
            </div>
        </div>
        <div class="right fl">
            <div class="title">
                编辑影片信息
            </div>
            <div class="editArea clearfix">
                <form action="./editMovieOK" method="POST">
                    <div class="edit-left fl">
                        <div class="option">
                            <span>影片ID：</span>
                            <input type="text" name="idshow" value="${movie.id}" disabled>
                            <input type="text" name="id" value="${movie.id}" style="display: none;">
                        </div>
                        <div class="option">
                            <span>名称：</span>
                            <input type="text" name="name" value="${movie.name}">
                        </div>
                        <div class="option">
                            <span>导演：</span>
                            <input type="text" name="director" value="${movie.director}">
                        </div>
                        <div class="option">
                            <span>编剧：</span>
                            <input type="text" name="writer" value="${movie.writer}">
                        </div>
                        <div class="option">
                            <span>主演：</span>
                            <input type="text" name="actor" value="${movie.actor}">
                        </div>
                        <div class="option">
                            <span>形式：</span>
                            <input type="text" name="form" value="${movie.form}">
                        </div>
                        <div class="option">
                            <span>类型：</span>
                            <input type="text" name="type" value="${movie.type}">
                        </div>
                        <div class="option">
                            <span>标签：</span>
                            <input type="text" name="tag" value="${movie.tag}">
                        </div>
                        <div class="option">
                            <span>制片国家：</span>
                            <input type="text" name="region" value="${movie.region}">
                        </div>
                        <div class="option">
                            <span>语言：</span>
                            <input type="text" name="language" value="${movie.language}">
                        </div>
                        <div class="option">
                            <span>上映日期：</span>
                            <input type="text" name="stime" value="${movie.stime}">
                        </div>
                        <div class="option">
                            <span>片长：</span>
                            <input type="text" name="duration" value="${movie.duration}">
                        </div>
                        <div class="option">
                            <span>评分：</span>
                            <input type="text" name="score" value="${movie.score}">
                        </div>
                        <div class="option">
                            <span>简介：</span>
                            <textarea name="intro">${movie.intro}</textarea>
                        </div>
                    </div>
                    <div class="edit-right fl">
                        <div class="post">
                            <img src="images/movie/1.jpg" alt="">
                        </div>
                        <div class="post-btn">
                            上传封面
                        </div>
                        <div class="submit-btn">
                            <input type="submit" value="保存">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class=" footer w">
        <div class="links">
            <a href="javascript:;">关于我们</a>
            <span>|</span>
            <a href="javascript:;">联系我们</a>
            <span>|</span>
            <a href="javascript:;">联系客服</a>
            <span>|</span>
            <a href="javascript:;">在线反馈</a>
            <span>|</span>
            <a href="javascript:;">侵权投诉</a>
            <span>|</span>
            <a href="javascript:;">广告服务</a>
            <span>|</span>
            <a href="javascript:;">用户协议</a>
            <span>|</span>
            <a href="javascript:;">隐私政策</a>
            <span>|</span>
            <a href="javascript:;">English Site</a>
        </div>
        <div class="copyright">
            <p>
                Copyright© 北京师范大学珠海分校 版权所有
                <span>|</span>
                地址：广东省珠海市香洲区唐家湾金凤路18号
                <span>|</span>
                电话: 0086-756-3683393
            </p>
            <p>
                粤公网安备 44049102496147号
                <span>|</span>
                粤ICP备05026012号
            </p>
        </div>
    </div>
</body>

</html>