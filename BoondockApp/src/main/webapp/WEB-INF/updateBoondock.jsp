<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<c:choose>
		<c:when test="${updatedFilm != null}">
			<div class="alert alert-success" role="alert">Film updated</div>
			${updatedFilm}
		</c:when>
		<c:when test="${updatedFilm == null}">
			<div class="alert alert-danger" role="alert">Film could not be updated</div>
		</c:when>
		<c:otherwise>

		</c:otherwise>
	</c:choose>





</body>
</html>