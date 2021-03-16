<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Audiobook creation</title>
</head>
<body>
<h3>Add a new book</h3>
   <form action="create.do"" method="POST">
      <label for="title">Title:</label>
      <input type="text" name="title" required>
      <br>
      <label for="description">Description:</label>
      <input type="text" name="description">
      <br>
      <label for="author">Author</label>
      <input type="text" name="author">
      <br>
      <label for="narrator">Narrator</label>
      <input type="text" name="narrator">
      <br>
      <label for="releaseDate">Release Date:</label>
      <input type="date" name="releaseDate">
      <br>
      <label for="length">Length in Minutes:</label>
      <input type="text" name="length">
      <br>
      <input type="submit" value="Add Book">
</body>
</html>