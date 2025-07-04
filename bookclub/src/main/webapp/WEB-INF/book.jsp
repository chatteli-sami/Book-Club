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

    <!-- Bootstrap CSS & Icons -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css"
    />
    <link rel="stylesheet" type="text/css" href="/CSS/book.css" />
    <style>
      body {
        background: linear-gradient(to right, #f8fbff, #e0f2ff);
      }
      .card {
        border-radius: 1rem;
      }
      .card-subtitle {
        font-size: 1.1rem;
      }
      .lead {
        font-size: 1.1rem;
      }
    </style>
  </head>
  <body class="bg-light">
    <div class="container py-5">
      <div class="row justify-content-center">
        <div class="col-md-10 col-lg-8">
          <div class="card shadow">
            <div class="card-header bg-primary text-white">
              <h1 class="card-title mb-0"><c:out value="${book.title}" /></h1>
            </div>

            <div class="card-body">
              <c:choose>
                <c:when test="${book.user.id == user.id}">
                  <h4 class="card-subtitle mb-3 text-muted">
                    You read
                    <span class="fw-bold"><c:out value="${book.title}" /></span>
                    by <c:out value="${book.author}" />
                  </h4>
                </c:when>
                <c:otherwise>
                  <h4 class="card-subtitle mb-3 text-muted">
                    <span class="fw-bold"
                      ><c:out value="${book.user.userName}"
                    /></span>
                    read <c:out value="${book.title}" /> by
                    <c:out value="${book.author}" />
                  </h4>
                </c:otherwise>
              </c:choose>

              <div class="mb-4">
                <a href="/home" class="btn btn-outline-secondary">
                  <i class="bi bi-arrow-left"></i> Back to Shelves
                </a>
              </div>

              <div class="card mb-4">
                <div class="card-body">
                  <h5 class="card-subtitle mb-3 text-muted">
                    <span class="fw-bold"
                      ><c:out value="${book.user.userName}" /></span
                    >'s thoughts:
                  </h5>
                  <hr class="my-3" />
                  <p class="card-text lead">
                    <c:out value="${book.thoughts}" />
                  </p>
                  <hr class="my-3" />

                  <c:if test="${book.user.id == user.id}">
                    <div class="d-flex justify-content-end">
                      <a
                        href="/books/edit/${book.id}"
                        class="btn btn-warning me-2"
                      >
                        <i class="bi bi-pencil"></i> Edit
                      </a>
                      <form
                        action="/books/delete/${book.id}"
                        method="post"
                        class="d-inline"
                      >
                        <input type="hidden" name="_method" value="delete" />
                        <button type="submit" class="btn btn-danger">
                          <i class="bi bi-trash"></i> Delete
                        </button>
                      </form>
                    </div>
                  </c:if>
                </div>
              </div>
            </div>

            <div class="card-footer text-muted text-end">
              <small
                >Posted on
                <fmt:formatDate
                  value="${book.createdAt}"
                  pattern="MMM dd, yyyy"
              /></small>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
