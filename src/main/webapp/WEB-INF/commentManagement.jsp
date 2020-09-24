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
    <link rel="stylesheet" href="css/commentManagement.css">
    <link rel="stylesheet" href="iconfont/font_1746803_6ag03603o6c/iconfont.css">
    <script src="js/jquery-3.4.1.js"></script>
    <script src="js/commentManagement.js"></script>
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
                    <li><a href="movieManagement">影片管理</a></li>
                    <li><a href="userManagement">用户管理</a></li>
                    <li class="active"><a href="commentManagement">评论管理</a></li>
                    <li><a href="javascript:;">消息</a></li>
                </ul>
            </div>
        </div>
        <div class="right fl">
            <div class="top">
                <div class="title">
                    评论管理
                </div>
                <div class="searchBar">
                    <input type="text" placeholder="搜索">
                    <div class="btn_search">搜索</div>
                </div>
            </div>
            <div class="commentList">
                <c:forEach items="${commentList}" var="comment">
                    <div class="comment">
                        <div class="comment-left">
                            <div class="row clearfix">
                                <div class="row-left"><span>用户ID：</span>${comment.userId}</div>
                                <div class="row-right"><span>昵称：</span>${comment.uName}</div>
                            </div>
                            <div class="row clearfix">
                                <div class="row-left"><span>电影ID：</span>${comment.movieId}</div>
                                <div class="row-right"><span>名称：</span>${comment.movieName}
                                </div>
                            </div>
                            <div class="row clearfix">
                                <div class="row-left"><span>评论ID：</span>${comment.id}</div>
                                <div class="row-right"><span>内容：</span>${comment.content}
                                </div>
                            </div>
                            <div class="row clearfix">
                                <div class="row-left"><span>评分：</span>${comment.stars}</div>
                                <div class="row-right"><span>时间：</span>${comment.time}
                                </div>
                            </div>
                        </div>
                        <div class="comment-right">
                            <a class="comment-del" href="javascript:;">删除</a>
                            <div class="del-alert">
                                <div class="alert-text">确定要删除评论吗？</div>
                                <div class="alert-btn">
                                    <a href="commentDel?id=${comment.id}" class="comfirm">确认</a>
                                    <a href="JavaScript:;" class="cel">取消</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
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