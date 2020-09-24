<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:forEach items="${movieList}" var="movie">
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