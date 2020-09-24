<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>歪比巴卜电影</title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/home.css">
    <link rel="stylesheet" href="iconfont/font_1746803_6ag03603o6c/iconfont.css">
    <script src="js/jquery-3.4.1.js"></script>
    <script src="js/home.js"></script>
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
    <div class="banner">
        <div class="linear">
            <div class="w">
                <div class="nav">
                    <div class="w clearfix">
                        <div class="dropdown fl">
                            <a class="dt" href="<%=request.getContextPath() %>/category">全部电影分类</a>
                            <div class="dl">
                                <ul>
                                    <li>
                                        <a href="javascript:;">全部形式</a>
                                        <div class="children">
                                            <ul>
                                                <li><a href="javascript:;">电影</a> </li>
                                                <li><a href="javascript:;">电视剧</a> </li>
                                                <li><a href="javascript:;">综艺</a> </li>
                                                <li><a href="javascript:;">动漫</a> </li>
                                                <li><a href="javascript:;">纪录片</a> </li>
                                                <li><a href="javascript:;">短片</a> </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="javascript:;">全部类型</a>
                                        <div class="children">
                                            <ul>
                                                <li><a href="javascript:;">剧情</a> </li>
                                                <li><a href="javascript:;">喜剧</a> </li>
                                                <li><a href="javascript:;">动作</a> </li>
                                                <li><a href="javascript:;">爱情</a> </li>
                                                <li><a href="javascript:;">科幻</a> </li>
                                                <li><a href="javascript:;">动画</a> </li>
                                                <li><a href="javascript:;">悬疑</a> </li>
                                                <li><a href="javascript:;">惊悚</a> </li>
                                                <li><a href="javascript:;">恐怖</a> </li>
                                                <li><a href="javascript:;">犯罪</a> </li>
                                                <li><a href="javascript:;">同行</a> </li>
                                                <li><a href="javascript:;">音乐</a> </li>
                                                <li><a href="javascript:;">歌舞</a> </li>
                                                <li><a href="javascript:;">传记</a> </li>
                                                <li><a href="javascript:;">历史</a> </li>
                                                <li><a href="javascript:;">战争</a> </li>
                                                <li><a href="javascript:;">西部</a> </li>
                                                <li><a href="javascript:;">奇幻</a> </li>
                                                <li><a href="javascript:;">冒险</a> </li>
                                                <li><a href="javascript:;">灾难</a> </li>
                                                <li><a href="javascript:;">武侠</a> </li>
                                                <li><a href="javascript:;">情色</a> </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="javascript:;">全部地区</a>
                                        <div class="children">
                                            <ul>
                                                <li><a href="javascript:;">中国大陆</a> </li>
                                                <li><a href="javascript:;">中国香港</a> </li>
                                                <li><a href="javascript:;">中国台湾</a> </li>
                                                <li><a href="javascript:;">美国</a> </li>
                                                <li><a href="javascript:;">日本</a> </li>
                                                <li><a href="javascript:;">韩国</a> </li>
                                                <li><a href="javascript:;">英国</a> </li>
                                                <li><a href="javascript:;">法国</a> </li>
                                                <li><a href="javascript:;">德国</a> </li>
                                                <li><a href="javascript:;">意大利</a> </li>
                                                <li><a href="javascript:;">西班牙</a> </li>
                                                <li><a href="javascript:;">印度</a> </li>
                                                <li><a href="javascript:;">泰国</a> </li>
                                                <li><a href="javascript:;">俄罗斯</a> </li>
                                                <li><a href="javascript:;">伊朗</a> </li>
                                                <li><a href="javascript:;">加拿大</a> </li>
                                                <li><a href="javascript:;">澳大利亚</a> </li>
                                                <li><a href="javascript:;">爱尔兰</a> </li>
                                                <li><a href="javascript:;">瑞典</a> </li>
                                                <li><a href="javascript:;">巴西</a> </li>
                                                <li><a href="javascript:;">丹麦</a> </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="javascript:;">全部年代</a>
                                        <div class="children">
                                            <ul>
                                                <li><a href="javascript:;">2020</a> </li>
                                                <li><a href="javascript:;">2019</a> </li>
                                                <li><a href="javascript:;">2018</a> </li>
                                                <li><a href="javascript:;">2017</a> </li>
                                                <li><a href="javascript:;">2010年代</a> </li>
                                                <li><a href="javascript:;">2000年代</a> </li>
                                                <li><a href="javascript:;">90年代</a> </li>
                                                <li><a href="javascript:;">80年代</a> </li>
                                                <li><a href="javascript:;">70年代</a> </li>
                                                <li><a href="javascript:;">60年代</a> </li>
                                                <li><a href="javascript:;">更早</a> </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="javascript:;">全部特色</a>
                                        <div class="children">
                                            <ul>
                                                <li><a href="javascript:;">经典</a></li>
                                                <li><a href="javascript:;">青春</a></li>
                                                <li><a href="javascript:;">文艺</a></li>
                                                <li><a href="javascript:;">搞笑</a></li>
                                                <li><a href="javascript:;">励志</a></li>
                                                <li><a href="javascript:;">魔幻</a></li>
                                                <li><a href="javascript:;">感人</a></li>
                                                <li><a href="javascript:;">女性</a></li>
                                                <li><a href="javascript:;">黑帮</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="navitems fl">
                            <ul>
                                <li>
                                    <a href="<%=request.getContextPath() %>/ticket">影讯&购票</a>
                                </li>
                                <li>
                                    <a href="<%=request.getContextPath() %>/movie">选电影</a>
                                </li>
                                <li>
                                    <a href="<%=request.getContextPath() %>/tv">电视剧</a>
                                </li>
                                <li>
                                    <a href="<%=request.getContextPath() %>/rank">排行榜</a>
                                </li>
                                <li>
                                    <a href="<%=request.getContextPath() %>/comment">影评</a>
                                </li>
                                <li>
                                    <a href="<%=request.getContextPath() %>/year">2019年度榜单</a>
                                </li>
                                <li>
                                    <a href="<%=request.getContextPath() %>/report">2019书影音报告</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <a href="javascript:;">
            <img src="images/banner1.jpg" alt="">
        </a>
        <div class="linear" id="linear_bottom"></div>
    </div>
    <div class="section-warp w">
        <div class="title-warp">
            <h2><a href="<%=request.getContextPath() %>/movie">最近热门电影</a></h2>
            <div class="sub-title">
                <ul>
                    <li class="active"><a href="javascript:;">热门</a></li>
                    <li><a href="javascript:;">最新</a></li>
                    <li><a href="javascript:;">高分</a></li>
                    <li><a href="javascript:;">冷门佳片</a></li>
                    <li><a href="javascript:;">华语</a></li>
                    <li><a href="javascript:;">欧美</a></li>
                    <li><a href="javascript:;">韩国</a></li>
                    <li><a href="javascript:;">日本</a></li>
                </ul>
            </div>
        </div>
        <div class="item-warp">
            <c:forEach var="sk" items="${hotMovieList}" varStatus="i">
                <c:if test="${sk.tag eq '热门'}">
                    <c:if test="${i.index < 14}">
                        <div class="item">
                            <a href="<%=request.getContextPath() %>/details?id=${sk.id}">
                                <div class="img"><img src="images/movie/${sk.id}.jpg" title="${sk.name}"></div>
                                <span class="title">${sk.name}</span>
                            </a>
                        </div>
                    </c:if>
                </c:if>
            </c:forEach>
        </div>
    </div>
    <div class="section-warp w">
        <div class="title-warp">
            <h2><a href="<%=request.getContextPath() %>/tv">最近热门电视剧</a></h2>
            <div class="sub-title">
                <ul>
                    <li class="active"><a href="javascript:;">热门</a></li>
                    <li><a href="javascript:;">国产剧</a></li>
                    <li><a href="javascript:;">综艺</a></li>
                    <li><a href="javascript:;">美剧</a></li>
                    <li><a href="javascript:;">日剧</a></li>
                    <li><a href="javascript:;">韩剧</a></li>
                    <li><a href="javascript:;">日本动画</a></li>
                    <li><a href="javascript:;">纪录片</a></li>
                </ul>
            </div>
        </div>
        <div class="item-warp">
            <c:forEach var="sk" items="${hotTvList}" varStatus="i">
                <c:if test="${sk.tag eq '热门'}">
                    <c:if test="${i.index < 14}">
                        <div class="item">
                            <a href="<%=request.getContextPath() %>/details?id=${sk.id}">
                                <div class="img"><img src="images/movie/${sk.id}.jpg" title="${sk.name}"></div>
                                <span class="title">${sk.name}</span>
                            </a>
                        </div>
                    </c:if>
                </c:if>
            </c:forEach>
        </div>
    </div>
    <div class="section-warp w">
        <div class="title-warp">
            <h2><a href="<%=request.getContextPath() %>/ticket">即将上映</a></h2>
            <div class="sub-title">
                <ul>
                    <li class="active"><a href="javascript:;">即将上映</a></li>
                    <li><a href="javascript:;">全部正在热映</a></li>
                </ul>
            </div>
        </div>
        <div class="item-warp">
            <c:forEach var="sk" items="${upcomingList}" varStatus="i">
                <c:if test="${sk.tag eq '即将上映'}">
                    <c:if test="${i.index < 14}">
                        <div class="item">
                            <a href="<%=request.getContextPath() %>/details?id=${sk.id}">
                                <div class="img"><img src="images/movie/${sk.id}.jpg" title="${sk.name}"></div>
                                <span class="title">${sk.name}</span>
                            </a>
                        </div>
                    </c:if>
                </c:if>
            </c:forEach>
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