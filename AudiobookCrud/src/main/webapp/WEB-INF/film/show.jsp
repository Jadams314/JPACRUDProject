<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film Details</title>
</head>
<body>

<h1>Film Details</h1>
<div>
  <h5>${film.title} (Release Year ${film.releaseYear}, Length ${film.length} min)</h5>
  <p>${film.description}</p>
</div>

</body>
</html>