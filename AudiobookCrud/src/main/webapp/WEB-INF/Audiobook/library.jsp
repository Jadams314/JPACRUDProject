<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Library</title>
</head>
<body>
<h1>Welcome to the Library</h1>

	<ol>	
		<c:forEach var="list" items="${bookList}">
		
		<li> <a href="getBook.do?fid=${list.id}">${list.title}</a><Li>
		
		</c:forEach>
	</ol>

</body>
</html>