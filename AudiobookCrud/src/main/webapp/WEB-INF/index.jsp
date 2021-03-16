<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Audiobooks</title>
</head>
<body>

<div>
	<h3>Find book by Id</h3>
	<form action="getBook.do" method="GET">
	  Audiobook ID: <input type="text" name="fid" />
	  <input type="submit" value="Show Audiobook" />
	</form>
</div>

<div>
	<h3>View books in the Library</h3>
	<a href ="list.do">View Library</a>
</div>

<div>
	<a href ="creation.do">Add an Audiobook</a>
</div>


</body>
</html>