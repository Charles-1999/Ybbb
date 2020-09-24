<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>歪比巴卜电影</title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/search.css">
    <link rel="stylesheet" href="iconfont/font_1746803_6ag03603o6c/iconfont.css">
    <script src="js/jquery-3.4.1.js"></script>
    <script src="js/search.js"></script>
</head>

<body>
    <div class="header">
        <div class="w">
            <div class="logo fl">
                <a href="<%=request.getContextPath() %>/home">歪比巴卜电影</a>
            </div>
            <div class="searchBar fl">
                <input type="text" placeholder="搜索电影、电视剧、综艺、影人">
                <div class="btn_search">搜索</div>
            </div>
            <div class="sideBar fr">
                <ul>
                    <li class="vip">
                        <a href="javascript:;">
                            <i></i>
                            <span>开通会员</span>
                        </a>
                    </li>
                    <li class="record">
                        <a href="javascript:;">
                            <i class="iconfont"></i>
                            <span>看过</span>
                        </a>
                    </li>
                    <li class="sub">
                        <a href="javascript:;">
                            <i class="iconfont"></i>
                            <span>关注</span>
                        </a>
                    </li>
                    <li class="upload">
                        <a href="javascript:;">
                            <i class="iconfont"></i>
                            <span>上传</span>
                        </a>
                    </li>
                    <li class="app">
                        <a href="javascript:;">
                            <i class="iconfont"></i>
                            <span>客户端</span>
                        </a>
                    </li>
                    <li class="login">
                        <c:if test='<%=session.getAttribute("userId")== null %>'>
                            <a href="<%=request.getContextPath() %>/login">
                                <img src='images/user/null.png' alt="">
                                <img class="tag" src="images/login_tag.png" alt="">
                            </a>
                        </c:if>
                        <c:if test='<%=session.getAttribute("userId")!= null %>'>
                            <a href="<%=request.getContextPath() %>/user">
                                <img src='images/user/<%=session.getAttribute("userId") %>.jpg' alt="">
                            </a>
                            <div class="user-panel">
                                <div class="row">
                                    <div class="portrait">
                                        <img src="images/user/${user.id}.jpg" alt="">
                                    </div>
                                    <div class="name">${user.name}</div>
                                </div>
                                <div class="logout">
                                    <a href="logout">退出登录</a>
                                </div>
                            </div>
                        </c:if>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="main w clearfix">
        <div class="left fl">
            <div class="list-warp">
                <c:forEach items="${searchList}" var="item">
                    <div class="item">
                        <div class="item-left">
                            <a class="post" href="#">
                                <img src="images/movie/${item.id}.jpg" alt="">
                            </a>
                        </div>
                        <div class="item-right">
                            <div class="movieName">
                                <a href="#">${item.name}</a>
                            </div>
                            <div class="info">
                                ${item.form}<span>·</span>${item.time}<span>·</span>${item.region}
                                <br>
                                导演：${item.director}<span></span>主演：${item.actor}
                            </div>
                            <div class="intro">
                                简介：${item.intro}
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <div class="right fl">
            <div class="title">热门搜索</div>
            <div class="hotList">
                <ol>
                    <li><a href="#">爱我就别想太多</a></li>
                    <li><a href="#">爱我就别想太多</a></li>
                    <li><a href="#">爱我就别想太多</a></li>
                    <li><a href="#">爱我就别想太多</a></li>
                    <li><a href="#">爱我就别想太多</a></li>
                </ol>
            </div>
        </div>
    </div>
    <div class="footer w">
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