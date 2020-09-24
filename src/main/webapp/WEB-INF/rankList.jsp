<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:forEach var="movie" items="${movieList}" varStatus="i">
    <div class="movie">
        <a class="img" href="<%=request.getContextPath() %>/details?id=${movie.id}">
            <img src="images/movie/${movie.id}.jpg" title="${movie.name}">
        </a>
        <div class="info">
            <a class="title" href="<%=request.getContextPath() %>/details?id=${movie.id}">${movie.name}</a>
            <div class="details">
                ${movie.time} ( ${movie.region} ) ${movie.type}
            </div>
            <div class="intro">${movie.intro}</div>
            <div class="score"><span>${movie.score}</span>分</div>
        </div>
    </div>
</c:forEach>