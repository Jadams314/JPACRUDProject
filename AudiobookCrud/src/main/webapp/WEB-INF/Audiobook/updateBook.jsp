<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Audio Book</title>
</head>
<body>

<h3>Make Changes</h3>

<form action="bookUpdated.do" method="POST">
      <input type="hidden" name="id" value="${audiobook.id }">
      <label for="title">Title:</label>
      <input type="text" name="title" value="${audiobook.title }">
      <br>
      <label for="description">Description:</label>
      <input type="text" name="description" value="${audiobook.description }">
      <br>
      <label for="author">Author:</label>
      <input type="text" name="author" value="${audiobook.author }">
      <br>
      <label for="narrator">Narrator:</label>
      <input type="text" name="narrator" value="${audiobook.narrator }">
      <br>
      <label for="releaseDate">Rental Rate:</label>
      <input type="text" name="releaseDate" value="${audiobook.releaseDate }">
      <br>
      <label for="length">Length in Minutes:</label>
      <input type="text" name="length" value="${audiobook.length }">
      <br>
      <input type="submit" value="Update audiobook">
    </form>

</body>
</html>