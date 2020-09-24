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
    <link rel="stylesheet" href="css/movieManagement.css">
    <link rel="stylesheet" href="iconfont/font_1746803_6ag03603o6c/iconfont.css">
    <script src="js/jquery-3.4.1.js"></script>
    <script src="js/movieManagement.js"></script>
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
                影片管理
            </div>
            <div class="select-warp">
                <div class="selector">
                    <form action="./movieListAll" id="form-movie">
                        <label for="from">
                            形式：
                            <select name="form" id="select-form">
                                <option value="%25%25">全部</option>
                                <option value="%25电影%25">电影</option>
                                <option value="%25电视剧%25">电视剧</option>
                                <option value="%25综艺%25">综艺</option>
                                <option value="%25动漫%25">动漫</option>
                                <option value="%25纪录片%25">纪录片</option>
                                <option value="%25短片%25">短片</option>
                            </select>
                        </label>
                        <label for="type">
                            类型：
                            <select name="type" id="select-type">
                                <option value="%25%25">全部</option>
                                <option value="%25剧情%25">剧情</option>
                                <option value="%25喜剧%25">喜剧</option>
                                <option value="%25动作%25">动作</option>
                                <option value="%25爱情%25">爱情</option>
                                <option value="%25情色%25">情色</option>
                                <option value="%25惊悚%25">惊悚</option>
                                <option value="%25悬疑%25">悬疑</option>
                                <option value="%25冒险%25">冒险</option>
                                <option value="%25犯罪%25">犯罪</option>
                                <option value="%25奇幻%25">奇幻</option>
                                <option value="%25科幻%25">科幻</option>
                                <option value="%25武侠%25">武侠</option>
                                <option value="%25古装%25">古装</option>
                                <option value="%25运动%25">运动</option>
                                <option value="%25儿童%25">儿童</option>
                                <option value="%25战争%25">战争</option>
                                <option value="%25歌舞%25">歌舞</option>
                                <option value="%25历史%25">历史</option>
                            </select>
                        </label>
                        <label for="region">
                            地区：
                            <select name="region" id="select-region">
                                <option value="%25%25">全部</option>
                                <option value="%25中国大陆%25">中国大陆</option>
                                <option value="%25中国香港%25">中国香港</option>
                                <option value="%25中国台湾%25">中国台湾</option>
                                <option value="%25美国%25">美国</option>
                                <option value="%25日本%25">日本</option>
                                <option value="%25韩国%25">韩国</option>
                                <option value="%25英国%25">英国</option>
                                <option value="%25法国%25">法国</option>
                                <option value="%25德国%25">德国</option>
                                <option value="%25意大利%25">意大利</option>
                                <option value="%25西班牙%25">西班牙</option>
                                <option value="%25印度%25">印度</option>
                                <option value="%25泰国%25">泰国</option>
                                <option value="%25俄罗斯%25">俄罗斯</option>
                                <option value="%25伊朗%25">伊朗</option>
                                <option value="%25加拿大%25">加拿大</option>
                                <option value="%25澳大利亚%25">澳大利亚</option>
                                <option value="%25爱尔兰%25">爱尔兰</option>
                                <option value="%25瑞典%25">瑞典</option>
                                <option value="%25巴西%25">巴西</option>
                                <option value="%25丹麦%25">丹麦</option>
                            </select>
                        </label>
                    </form>
                </div>
                <div class="searchBar">
                    <input type="text" placeholder="搜索">
                    <div class="btn_search">搜索</div>
                </div>
                <div class="upload-btn">
                    上传影片
                </div>
            </div>
            <div class="movieList">
                <c:forEach items="${allList}" var="movie">
                    <div class="movie">
                        <a href="details?id=${movie.id}" class="post">
                            <img src="images/movie/${movie.id}.jpg" alt="">
                        </a>
                        <div class="info">
                            <div class="movieName"><span>${movie.id}</span> ${movie.name}</div>
                            <div class="director">导演：${movie.director}</div>
                            <div class="actor">主演：${movie.actor}</div>
                            <div class="form">形式：${movie.form}</div>
                            <div class="time">上映日期：${movie.stime}</div>
                            <div class="duration">片长：${movie.duration}分钟</div>
                            <div class="score">评分：<span>${movie.score}</spa>分</div>
                        </div>
                        <div class="btn">
                            <div class="edit" onclick="edit('${movie.id}')">编辑</div>
                            <div class="del" onclick="showAlert(this)">删除</div>
                            <div class="del-alert">
                                <div class="alert-text">确定要删除影片吗？</div>
                                <div class="alert-btn">
                                    <a href="delMovie?id=${movie.id}" class="comfirm">确认</a>
                                    <a href="JavaScript:;" class="cel" onclick="celAlert(this)">取消</a>
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