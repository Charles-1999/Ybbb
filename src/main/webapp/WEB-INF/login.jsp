<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>登录 / 注册</title>
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="iconfont/font_1746803_6ag03603o6c/iconfont.css">
    <script src="js/jquery-3.4.1.js"></script>
    <script src="js/login.js"></script>
</head>

<body>
    <div class="dowebok">
        <div class="form sign-in">
            <form name="login" action="./loginOK" method="POST">
                <h2>欢迎回来</h2>
                <label>
                    <span>邮箱</span>
                    <input type="email" name="email" />
                </label>
                <label>
                    <span>密码</span>
                    <input type="password" name="pwd" />
                </label>
                <p class="forgot-pass"><a href="javascript:">忘记密码？</a></p>
                <button type="button" class="submit" onclick="document.login.submit();">登 录</button>
                <button type="button" class="fb-btn">使用 <span>微信</span> 帐号登录</button>
            </form>
        </div>
        <div class="sub-cont">
            <div class="img">
                <div class="img__text m--up">
                    <h2>还未注册？</h2>
                    <p>立即注册，发现大量机会！</p>
                </div>
                <div class="img__text m--in">
                    <h2>已有帐号？</h2>
                    <p>有帐号就登录吧，好久不见了！</p>
                </div>
                <div class="img__btn">
                    <span class="m--up">注 册</span>
                    <span class="m--in">登 录</span>
                </div>
            </div>
            <div class="form sign-up">
                <form name="register" action="./registerOK" method="POSt">
                    <h2>立即注册</h2>
                    <label>
                        <span>用户名</span>
                        <input type="text" name="uname" />
                    </label>
                    <label>
                        <span>邮箱</span>
                        <input type="email" name="email" />
                    </label>
                    <label>
                        <span>密码</span>
                        <input type="password" name="pwd" />
                    </label>
                    <button type="button" class="submit" onclick="document.register.submit()">注 册</button>
                    <button type="button" class="fb-btn">使用 <span>微信</span> 帐号注册</button>
                </form>
            </div>
        </div>
    </div>


</body>

</html>