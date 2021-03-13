<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Audio Details</title>
</head>
<body>

<h1>Audiobook Details</h1>
<div>
  <h5>${audiobook.title} (Release Date ${audiobook.releaseDate}, Length ${audiobook.length} min)</h5>
  <p>${audiobook.description}</p>
</div>

</body>
</html>