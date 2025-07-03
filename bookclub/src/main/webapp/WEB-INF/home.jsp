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
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css"
    />
    <title>Book Club</title>
  </head>
  <body class="has-background-light">
    <section class="section">
      <div class="container">
        <div class="level">
          <div class="level-left">
            <h1 class="title is-1">
              Welcome, <c:out value="${user.userName}" />
            </h1>
          </div>
          <div class="level-right">
            <div class="buttons">
              <a href="/logout" class="button is-light">Logout</a>
              <a href="/addPage" class="button is-primary">+ Add to my shelf</a>
            </div>
          </div>
        </div>

        <h3 class="subtitle is-3 mb-4">Books from everyone's shelves:</h3>

        <div class="table-container">
          <table class="table is-fullwidth is-striped is-hoverable">
            <thead>
              <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Author Name</th>
                <th>Posted By</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach var="book" items="${books}">
                <tr>
                  <td><c:out value="${book.id}" /></td>
                  <td>
                    <a href="books/${book.id}"
                      ><c:out value="${book.title}"
                    /></a>
                  </td>
                  <td><c:out value="${book.author}" /></td>
                  <td><c:out value="${book.user.userName}" /></td>
                </tr>
              </c:forEach>
            </tbody>
          </table>
        </div>
      </div>
    </section>
  </body>
</html>
