<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Audio Details</title>
</head>
<body>

<a href="home.do">Go Home</a>

<div>
	<table border="1" >
		<thead>
		</thead>
		<tr>
			<td>Title</td>
			<td>Description</td>
			<td>Author</td>
			<td>Narrator</td>
			<td>Length</td>
			<td>Release Date</td>
		</tr>
		<tr>
			<td>${audiobook.title}</td>
			<td>${audiobook.description}</td>
			<td>${audiobook.author}</td>
			<td>${audiobook.narrator}</td>
			<td>${audiobook.length}</td>
			<td>${audiobook.releaseDate}</td>
		</tr>
	</table>

</div>
<div>
	<form action="destroy.do" method="POST">
      <input type="hidden" name="bookid" value="${audiobook.id}">
      <input type="submit" value="Delete Book">
    </form>
</div>
<br>
<div>
	<form action="update.do" method="GET">
      <input type="hidden" name="bookid" value="${audiobook.id}">
      <input type="submit" value="Update Book">
    </form>
</div>

</body>
</html>