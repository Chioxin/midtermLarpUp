<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<jsp:include page="/WEB-INF/components/bootstrapHead.jsp"></jsp:include>
<head>
<meta charset="UTF-8">
<title>Display Story</title>
</head>
<body>
  <p>Story Title: ${story.name }<br>
    Story Description: ${story.description }<br>
    Story Genre: ${(story.genre).name }<br> 
    Story Location: ${(story.address).city}, ${(story.address).state}<br> 
  </p>
  
  <p>
    Characters in the Story:<br>
  </p>
  <ul>
    <c:forEach var="role" items="${story.eventRoles }">
      <li>${role.name }</li>
      <ul>
        <li>${role.description }</li>
      </ul>
    </c:forEach>    
  </ul>
  
  <p>
    Events in Story:
  </p>
  
  <ol>
    <c:forEach var="event" items="${story.events }">
      <li>
        <a href="" >${event.name }</a>
          <ul>
            <li>${event.date }</li>
            <li>${event.description }</li>
          </ul>
      </li>
    </c:forEach>
  </ol>

  <p>Story Owner: ${(story.user).firstName } ${(story.user).lastName}<br>
     Story Created On: ${story.createDate }<br>
  </p>
  <br>
  <a href="/home/home.do?storyId=1">BACK TO HOME</a>
</body>
<jsp:include page="/WEB-INF/components/bootstrapFoot.jsp"></jsp:include>
</html>