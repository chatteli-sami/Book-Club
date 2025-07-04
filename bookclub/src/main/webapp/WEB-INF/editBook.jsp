<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %> <%@ taglib prefix="form"
uri="http://www.springframework.org/tags/form" %> <%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="ISO-8859-1" />
    <title>Edit Book</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- Bootstrap CSS & Icons -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css"
    />
    <link rel="stylesheet" type="text/css" href="/CSS/addPage.css" />
    <style>
      body {
        background: linear-gradient(to right, #f8fbff, #e0f2ff);
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
  <body class="bg-light">
    <div class="container py-5">
      <div class="row justify-content-center">
        <div class="col-md-8 col-lg-6">
          <div class="card">
            <div class="card-header bg-primary text-white">
              <h3 class="mb-0">
                <i class="bi bi-pencil-square me-2"></i>Edit Book
              </h3>
            </div>

            <div class="card-body">
              <form:form
                action="/books/update/${book.id}"
                method="post"
                modelAttribute="book"
              >
                <div class="mb-3">
                  <form:label path="title" class="form-label">Title</form:label>
                  <form:input path="title" class="form-control" />
                  <form:errors path="title" class="text-danger small" />
                </div>

                <div class="mb-3">
                  <form:label path="author" class="form-label"
                    >Author</form:label
                  >
                  <form:input path="author" class="form-control" />
                  <form:errors path="author" class="text-danger small" />
                </div>

                <div class="mb-4">
                  <form:label path="thoughts" class="form-label"
                    >Thoughts</form:label
                  >
                  <form:textarea
                    path="thoughts"
                    class="form-control"
                    rows="4"
                  />
                  <form:errors path="thoughts" class="text-danger small" />
                </div>

                <form:input type="hidden" path="user" value="${user.id}" />

                <div class="d-flex justify-content-between">
                  <a href="/home" class="btn btn-outline-secondary">
                    <i class="bi bi-x-circle me-1"></i>Cancel
                  </a>
                  <button type="submit" class="btn btn-primary">
                    <i class="bi bi-save me-1"></i>Update Book
                  </button>
                </div>
              </form:form>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
