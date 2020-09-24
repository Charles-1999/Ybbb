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
    <link rel="stylesheet" href="css/userManagement.css">
    <link rel="stylesheet" href="iconfont/font_1746803_6ag03603o6c/iconfont.css">
    <script src="js/jquery-3.4.1.js"></script>
    <script src="js/userManagement.js"></script>
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
                    <li class="active"><a href="userManagement">用户管理</a></li>
                    <li><a href="commentManagement">评论管理</a></li>
                    <li><a href="javascript:;">消息</a></li>
                </ul>
            </div>
        </div>
        <div class="right fl">
            <div class="top">
                <div class="title">
                    用户管理
                </div>
                <div class="searchBar">
                    <input type="text" placeholder="搜索">
                    <div class="btn_search">搜索</div>
                </div>
            </div>
            <div class="userListHd">
                <div class="head">头像</div>
                <div class="id">ID</div>
                <div class="name">昵称</div>
                <div class="email">邮箱</div>
                <div class="operation">操作</div>
            </div>
            <div class="userList">
                <c:forEach items="${userList}" var="user">
                    <div class="user">
                        <div class="portrait">
                            <img src="images/user/${user.id}.jpg" alt="">
                        </div>
                        <div class="id editable">${user.id}</div>
                        <div class="name editable">${user.name}</div>
                        <div class="email editable">${user.email}</div>
                        <div class="operation">
                            <a class="edit" href="javascript:;" onclick="edit(this)">编辑</a>
                            <a href="javascript:;" class="editpwd">修改密码</a>
                            <a href="javascript:;">禁用</a>
                            <div class="pwd-alert">
                                <div class="alert-text">修改密码</div>
                                <div class="pwd">
                                    <input value='${user.pwd}'>
                                </div>
                                <div class="alert-btn">
                                    <a href="JavaScript:;" class="comfirm" onclick="editpwd(this,'${user.id}')">确认</a>
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