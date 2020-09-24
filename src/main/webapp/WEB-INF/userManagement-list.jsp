<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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