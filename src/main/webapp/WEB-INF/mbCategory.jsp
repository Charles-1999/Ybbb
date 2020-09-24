<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>歪比巴卜电影</title>
    <link rel="stylesheet" href="css/mb-common.css">
    <link rel="stylesheet" href="css/mbCategory.css">
    <link rel="stylesheet" href="iconfont/font_1746803_gync3r415tl/iconfont.css">
    <script src="js/jquery-3.4.1.js"></script>
    <script src="js/mbCategory.js"></script>
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
            <div class="nav-item active"><a href="mbCategory">分类</a></div>
            <div class="nav-item"><a href="mbTicket">购票</a></div>
            <div class="nav-item-c3"><a href="mbMovie">选电影</a></div>
            <div class="nav-item-c3"><a href="mbTv">电视剧</a></div>
            <div class="nav-item-c3"><a href="mbRank">排行榜</a></div>
            <div class="nav-item"><a href="mbComment">影评</a></div>
        </div>
    </div>
    <div class="section">
        <div class="title">分类浏览</div>
        <div class="category-warp">
            <div class="warp-row">
                <div class="warp-left">形式</div>
                <div class="warp-right" id="form">
                    <a class="active" href="javascript:;">全部</a>
                    <a href="javascript:;">电影</a>
                    <a href="javascript:;">电视剧</a>
                    <a href="javascript:;">综艺</a>
                    <a href="javascript:;">动漫</a>
                    <a href="javascript:;">纪录片</a>
                    <a href="javascript:;">短片</a>
                </div>
            </div>
            <div class="warp-row">
                <div class="warp-left">类别</div>
                <div class="warp-right" id="type">
                    <a class="active" href="javascript:;">全部</a>
                    <a href="javascript:;">剧情</a>
                    <a href="javascript:;">喜剧</a>
                    <a href="javascript:;">动作</a>
                    <a href="javascript:;">爱情</a>
                    <a href="javascript:;">科幻</a>
                    <a href="javascript:;">动画</a>
                    <a href="javascript:;">悬疑</a>
                    <a href="javascript:;">惊悚</a>
                    <a href="javascript:;">恐怖</a>
                    <a href="javascript:;">犯罪</a>
                    <a href="javascript:;">同行</a>
                    <a href="javascript:;">音乐</a>
                    <a href="javascript:;">歌舞</a>
                    <a href="javascript:;">传记</a>
                    <a href="javascript:;">历史</a>
                    <a href="javascript:;">战争</a>
                    <a href="javascript:;">西部</a>
                    <a href="javascript:;">奇幻</a>
                    <a href="javascript:;">冒险</a>
                    <a href="javascript:;">灾难</a>
                    <a href="javascript:;">武侠</a>
                    <a href="javascript:;">情色</a>
                </div>
            </div>
            <div class="warp-row">
                <div class="warp-left">地区</div>
                <div class="warp-right" id="region">
                    <a class="active" href="javascript:;">全部</a>
                    <a href="javascript:;">中国大陆</a>
                    <a href="javascript:;">中国香港</a>
                    <a href="javascript:;">中国台湾</a>
                    <a href="javascript:;">美国</a>
                    <a href="javascript:;">日本</a>
                    <a href="javascript:;">韩国</a>
                    <a href="javascript:;">英国</a>
                    <a href="javascript:;">法国</a>
                    <a href="javascript:;">德国</a>
                    <a href="javascript:;">意大利</a>
                    <a href="javascript:;">西班牙</a>
                    <a href="javascript:;">印度</a>
                    <a href="javascript:;">泰国</a>
                    <a href="javascript:;">俄罗斯</a>
                    <a href="javascript:;">伊朗</a>
                    <a href="javascript:;">加拿大</a>
                    <a href="javascript:;">澳大利亚</a>
                    <a href="javascript:;">爱尔兰</a>
                    <a href="javascript:;">瑞典</a>
                    <a href="javascript:;">巴西</a>
                    <a href="javascript:;">丹麦</a>
                </div>
            </div>
        </div>
    </div>
    <div class="section">
        <div class="movie-list">
            <c:forEach items="${movieList}" var="movie">
                <div class="movie">
                    <a href="mbDetail?id=${movie.id}" class="post">
                        <img src="images/movie/${movie.id}.jpg" alt="">
                    </a>
                    <div class="name">
                        ${movie.name}
                    </div>
                    <div class="score">
                        <div class="stars">
                            <img src="images/stars/star4.png" alt="">
                        </div>
                        <div class="text">
                            ${movie.score}
                        </div>
                    </div>
                </div>
            </c:forEach>
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