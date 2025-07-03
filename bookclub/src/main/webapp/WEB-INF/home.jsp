<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ page isErrorPage="true" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> <%@ taglib prefix="form"
uri="http://www.springframework.org/tags/form"%> <%@ taglib prefix = "c" uri =
"http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" type="text/css" href="CSS/home.css" />
    <title>Book Club</title>
  </head>
  <body>
    <div class="container">
      <h1>Welcome, <c:out value="${user.userName}" /></h1>

      <h3>Books from everyone shelves:</h3>
      <a href="/logout">logout</a>
      <a href="/addPage">+ Add to my shelf</a>

      <table class="table">
        <tr>
          <th>ID</th>
          <th>Title</th>
          <th>Author Name</th>
          <th>Posted By</th>
        </tr>
        <c:forEach var="book" items="${books}">
          <tr>
            <td><c:out value="${book.id}" /></td>
            <td>
              <a href="books/${book.id}"><c:out value="${book.title}" /></a>
            </td>
            <td><c:out value="${book.author}" /></td>
            <td><c:out value="${book.user.userName}" /></td>
          </tr>
        </c:forEach>
      </table>
    </div>
  </body>
</html>