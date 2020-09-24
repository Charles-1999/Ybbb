<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:forEach var="sk" items="${movieList}" varStatus="i">
    <div class="item">
        <a href="<%=request.getContextPath() %>/details?id=${sk.id}">
            <div class="img"><img src="images/movie/${sk.id}.jpg" title="${sk.name}"></div>
            <span class="title">${sk.name}</span>
        </a>
    </div>
</c:forEach>