<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Add to Your Book Shelf</title>

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css">
  <style>
    body {
      background: linear-gradient(to right, #f8fbff, #e0f2ff);
      min-height: 100vh;
    }
    .card {
      border-radius: 1rem;
      box-shadow: 0 8px 24px rgba(0, 0, 0, 0.1);
    }
    .form-label {
      font-weight: 500;
    }
  </style>
</head>
<body>
  <div class="container py-5">
    <div class="row justify-content-center">
      <div class="col-md-8 col-lg-6">
        <div class="card p-4">
          <h1 class="text-center text-primary mb-4">Add to Your Book Shelf</h1>

          <div class="mb-3 text-end">
            <a href="/home" class="btn btn-outline-secondary btn-sm">
              <i class="bi bi-arrow-left"></i> Back to Shelves
            </a>
          </div>

          <form:form action="/books" modelAttribute="book" method="post">
            <div class="mb-3">
              <form:label path="title" class="form-label">Title</form:label>
              <form:input path="title" type="text" class="form-control" />
              <form:errors path="title" class="text-danger small" />
            </div>

            <div class="mb-3">
              <form:label path="author" class="form-label">Author</form:label>
              <form:input path="author" type="text" class="form-control" />
              <form:errors path="author" class="text-danger small" />
            </div>

            <div class="mb-3">
              <form:label path="thoughts" class="form-label">Thoughts</form:label>
              <form:textarea path="thoughts" class="form-control" rows="4" />
              <form:errors path="thoughts" class="text-danger small" />
            </div>

            <form:input type="hidden" path="user" value="${user.id}" />

            <div class="d-grid">
              <button type="submit" class="btn btn-primary">
                <i class="bi bi-bookmark-plus"></i> Submit
              </button>
            </div>
          </form:form>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
