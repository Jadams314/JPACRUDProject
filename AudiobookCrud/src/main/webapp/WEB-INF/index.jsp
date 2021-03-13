<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC Video Store</title>
</head>
<body>
<h3>Find Film by Id</h3>
<form action="getFilm.do" method="GET">
  Film ID: <input type="text" name="fid" />
  <input type="submit" value="Show Film" />
</form>


<!-- Make the list of films  -->
<table>

<thead>
</thead>
<tbody>
		<c:forEach var="film" items="${filmList}">
		<tr>
		<td><a href="getFilm.do?fid=${film.id}">${film.title}</a></td>
		</tr>
		</c:forEach>

</tbody>

</table>




</body>
</html>