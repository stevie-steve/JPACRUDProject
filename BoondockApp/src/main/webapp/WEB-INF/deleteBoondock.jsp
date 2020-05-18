<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete</title>
</head>
<body>

	<form action="deleteFilm.do" method="POST">
		<strong><em>${film.title}</em></strong> <input type="hidden" name="id"
			value="${film.id}" /> <input type="submit" button type="button"
			value="Delete" class="btn btn-outline-primary" />
	</form>

</body>
</html>