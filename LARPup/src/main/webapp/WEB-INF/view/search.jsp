<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/components/bootstrapHead.jsp"></jsp:include>
<meta charset="UTF-8">
<title>Display User</title>
<link rel="stylesheet" href="/css/search.css">
</head>
<body>
<jsp:include page="/WEB-INF/components/navbar.jsp"></jsp:include>


<div class="container">
	<div class="row">
		<div class="col-1"></div>
		<div class="col box">
			<div class="row">
				<div class="form-group">
					<form action="/search/searchByString.do" method="GET">
						<label for="searchString">Search For Users</label>
						<input class="form-control" type="text" name="searchString"/>
						<button class="btn btn-sm btn-primary" name="searchFor" value="users" type="submit">Go</button>
					</form>
				</div>
			</div>
			<div class="row">
				<div class="form-group">
					<form action="/search/searchByString.do" method="GET">
						<label for="searchString">Search For Stories</label>
						<input class="form-control" type="text" name="searchString"/>
						<button class="btn btn-sm btn-primary" name="searchFor" value="stories" type="submit">Go</button>
					</form>
				</div>
			</div>
			<div class="row">
				<div class="form-group">
					<form action="/search/searchByString.do" method="GET">
						<label for="searchString">Search For Events</label>
						<input class="form-control" type="text" name="searchString"/>
						<button class="btn btn-sm btn-primary" name="searchFor" value="events" type="submit">Go</button>
					</form>
				</div>
			</div>
		</div>
		<div class="col box box-right">
			<h5>${nothingFound }</h5>
			<c:if test="${not empty resultClass }">
				<c:forEach var="result" items="${searchResult}">
						<c:choose>
							<c:when test="${resultClass == 'user'}">
								<a href="/user/displayUser.do?userId=${result.id}">${result }</a><br><br>
							</c:when>
							<c:when test="${resultClass == 'story' }">
								<a href="/story/displayStory.do?storyId=${result.id}">${result }</a><br><br>
							</c:when>
							<c:when test="${resultClass == 'event' }">
								<a href="/event/displayEvent.do?eventId=${result.id}">${result }</a><br><br>
							</c:when>
						</c:choose>
				</c:forEach>
			</c:if>	
		</div>
		<div class="col-1"></div>
	</div>




	<div class="row"></div>
</div>

<jsp:include page="/WEB-INF/components/bootstrapFoot.jsp"></jsp:include>
</body>
</html>