<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>歪比巴卜电影</title>
    <link rel="stylesheet" href="css/mb-common.css">
    <link rel="stylesheet" href="css/mbDetail.css">
    <link rel="stylesheet" href="iconfont/font_1746803_gync3r415tl/iconfont.css">
    <script src="js/jquery-3.4.1.js"></script>
    <script src="js/mbDetail.js"></script>
</head>

<body>
    <div class="header">
        <div class="title">歪比巴卜</div>
        <div class="searchBar">
            <input type="text" placeholder="搜索电影、电视剧、综艺、影人">
        </div>
        <div class="user">
            <a href="mbUser"><i class="iconfont">&#xe653;</i></a>
        </div>
    </div>
    <div class="nav">
        <div class="nav-list">
            <div class="nav-item"><a href="mbHome">首页</a></div>
            <div class="nav-item"><a href="mbCategory">分类</a></div>
            <div class="nav-item"><a href="mbTicket">购票</a></div>
            <div class="nav-item-c3"><a href="mbMovie">选电影</a></div>
            <div class="nav-item-c3"><a href="mbTv">电视剧</a></div>
            <div class="nav-item-c3"><a href="mbRank">排行榜</a></div>
            <div class="nav-item"><a href="mbComment">影评</a></div>
        </div>
    </div>
    <div class="section">
        <div class="info-warp">
            <div class="warp-left">
                <div class="post"><img src="images/movie/${movie.id}.jpg" alt=""></div>
                <!-- <div class="btn">想看</div> -->
                <div class="btn">写影评</div>
                <!-- <div class="score"> -->
                <div class="stars"><img src="images/stars/star4.png" alt=""></div>
                <div class="text">${movie.score}</div>
                <!-- </div> -->
            </div>
            <div class="warp-right">
                <div class="movieName">${movie.name}</div>
                <div class="detail">
                    <div class="row">导演：${movie.director}</div>
                    <div class="row">编剧：${movie.writer}</div>
                    <div class="row">主演：${movie.actor}</div>
                    <div class="row">形式：${movie.form}</div>
                    <div class="row">类型：${movie.type}</div>
                    <div class="row">地区：${movie.region}</div>
                    <div class="row">语言：${movie.language}</div>
                    <div class="row">上映日期：${movie.stime}</div>
                    <div class="row">片长：${movie.duration}</div>
                </div>
            </div>
        </div>
        <div class="intro">
            <div class="title">剧情介绍</div>
            <div class="content">${movie.intro}</div>
        </div>
    </div>
    <div class="section">
        <div class="title">影评</div>
        <div class="comment-list">
            <c:forEach items="${commentList}" var="comment">
                <div class="comment">
                    <div class="details">
                        <div class="user">
                            <div class="portrait">
                                <img src="images/user/${comment.userId}.jpg" alt="">
                            </div>
                            <div class="name">
                                ${comment.uName}
                            </div>
                            <div class="stars">
                                <img src="images/stars/star4.png" alt="">
                            </div>
                            <div class="time">${comment.time}</div>
                        </div>
                        <div class="content">${comment.content}</div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
    <div class="section">
        <div class="title">写影评</div>
        <div class="comment-input">
            <form action="./mbWriteComment" method="POST">
                <input type="text" name="movieId" value="${movie.id}" style="display: none;">
                <input type="text" name="userId" value='<%=session.getAttribute("userId") %>' style="display: none;">
                <div class="input-body">
                    <div class="comment-title">
                        <input type="text" name="title" placeholder="添加标题">
                    </div>
                    <div class="comment-text">
                        <textarea name="content" id="comment" placeholder="有爱的评论，说点好听的~"></textarea>
                    </div>
                </div>
                <div class="input-footer">
                    <div class="submit-btn">
                        <input type="submit" value="发表评论">
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div class="footer">
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
            </p>
            <p>地址：广东省珠海市香洲区唐家湾金凤路18号</p>
            <p>电话: 0086-756-3683393</p>
            <p>
                粤公网安备 44049102496147号
                <span>|</span>
                粤ICP备05026012号
            </p>
        </div>
    </div>
</body>

</html>