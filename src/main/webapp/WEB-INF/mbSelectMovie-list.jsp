<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:forEach items="${movieList}" var="movie">
    <div class="movie">
        <a href="mhDetail?id=" class="post">
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