<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${user.name}-个人页面</title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/user.css">
    <link rel="stylesheet" href="iconfont/font_1746803_6ag03603o6c/iconfont.css">
    <script src="js/jquery-3.4.1.js"></script>
    <script src="js/user.js"></script>
    <script src="js/search.js"></script>
</head>

<body>
    <div class="header">
        <div class="w">
            <div class="logo fl">
                <a href="<%=request.getContextPath() %>/home">歪比巴卜</a>
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
            <div class="top">
                <div class="portrait">
                    <img src="images/user/${user.id}.jpg" alt="">
                </div>
                <div class="name">
                    ${user.name}
                </div>
                <div class="time">
                    2020-6-9 加入 歪比巴卜
                </div>
            </div>
            <div class="list">
                <ul>
                    <li class="active"><a href="javascript:;">个人资料</a></li>
                    <li><a href="user-comments">我的影评</a></li>
                    <li><a href="javascript:;">我的收藏</a></li>
                    <li><a href="javascript:;">历史播放</a></li>
                    <li><a href="javascript:;">消息</a></li>
                </ul>
            </div>
        </div>
        <div class="right fl">
            <div class="title">
                个人资料
            </div>
            <div class="info-warp">
                <div class="info">
                    <div class="info-title">头像</div>
                    <div class="info-text">
                        <div class="portrait"><img src="images/user/${user.id}.jpg" alt=""></div>
                    </div>
                    <div class="info-edit">
                        <a href="javascript:;">修改头像</a>
                    </div>
                </div>
                <div class="info">
                    <div class="info-title">昵称</div>
                    <div class="info-text">
                        <span>${user.name}</span>
                    </div>
                    <div class="info-edit">
                        <a href="javascript:;" onclick="edit(this)">修改昵称</a>
                    </div>
                </div>
                <div class="info">
                    <div class="info-title">绑定邮箱</div>
                    <div class="info-text">
                        <span style="color: rgba(255, 255, 255, .6);">${user.email}</span>
                    </div>
                </div>
                <div class=" info">
                    <div class="info-title">个人简介</div>
                    <div class="info-text">
                        还差一句话简介，有趣的灵魂就会被发现呦！
                    </div>
                    <div class="info-edit">
                        <a href="javascript:;" onclick="edit(this)">设置</a>
                    </div>
                </div>
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