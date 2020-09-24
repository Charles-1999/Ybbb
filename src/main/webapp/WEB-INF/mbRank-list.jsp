<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:forEach items="${movieList}" var="movie">
    <div class="movie">
        <div class="movie-left">
            <a href="mbDetail?id=${movie.id}" class="post">
                <img src="images/movie/${movie.id}.jpg" alt="">
            </a>
        </div>
        <div class="movie-right">
            <div class="name">
                ${movie.name}
            </div>
            <div class="info">
                ${movie.type}（${movie.region}）
            </div>
            <div class="intro">
                ${movie.intro}
            </div>
            <div class="score">
                ${movie.score}
            </div>
        </div>
    </div>
</c:forEach>