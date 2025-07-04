<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ page isErrorPage="true" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> <%@ taglib prefix="form"
uri="http://www.springframework.org/tags/form"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Book Club</title>

    <!-- Bootstrap CSS -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <!-- Animate.css -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
    />
    <style>
      body {
        background: linear-gradient(to right, #f8fbff, #e0f2ff);
        min-height: 100vh;
      }
      .table-hover tbody tr:hover {
        background-color: #f1f9ff;
      }
    </style>
  </head>
  <body>
    <div class="container py-5">
      <!-- Header -->
      <div
        class="d-flex justify-content-between align-items-center mb-4 animate__animated animate__fadeInDown"
      >
        <h1 class="fw-bold text-primary">
          Welcome, <c:out value="${user.userName}" />
        </h1>
        <div>
          <a href="/logout" class="btn btn-outline-secondary me-2">Logout</a>
          <a href="/addPage" class="btn btn-primary">+ Add to My Shelf</a>
        </div>
      </div>

      <!-- Subtitle -->
      <h3 class="mb-4 text-secondary animate__animated animate__fadeInLeft">
        Books from everyone's shelves:
      </h3>

      <!-- Book Table -->
      <div class="table-responsive animate__animated animate__fadeInUp">
        <table class="table table-striped table-hover align-middle">
          <thead class="table-light">
            <tr>
              <th scope="col">ID</th>
              <th scope="col">Title</th>
              <th scope="col">Author Name</th>
              <th scope="col">Posted By</th>
            </tr>
          </thead>
          <tbody>
            <c:forEach var="book" items="${books}">
              <tr>
                <td><c:out value="${book.id}" /></td>
                <td>
                  <a
                    href="books/${book.id}"
                    class="text-decoration-none text-primary"
                  >
                    <c:out value="${book.title}" />
                  </a>
                </td>
                <td><c:out value="${book.author}" /></td>
                <td><c:out value="${book.user.userName}" /></td>
              </tr>
            </c:forEach>
          </tbody>
        </table>
      </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
