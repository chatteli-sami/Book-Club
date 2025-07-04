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
        background: linear-gradient(to right, #f0f4ff, #e8f0fe);
        min-height: 100vh;
      }
      .card {
        border-radius: 1rem;
        box-shadow: 0 8px 24px rgba(0, 0, 0, 0.1);
      }
      .form-control:focus {
        box-shadow: 0 0 0 0.2rem rgba(13, 110, 253, 0.25);
      }
      .btn-primary {
        background-color: #0d6efd;
        border: none;
      }
      .btn-primary:hover {
        background-color: #0b5ed7;
      }
    </style>
  </head>
  <body>
    <div class="container py-5">
      <h1
        class="text-center text-primary fw-bold mb-5 animate__animated animate__fadeInDown"
      >
        Welcome to the Book Club!
      </h1>

      <div
        class="row g-4 justify-content-center animate__animated animate__fadeInUp"
      >
        <!-- Register Form -->
        <div class="col-md-6">
          <div class="card p-4">
            <h2 class="text-center mb-4">Register</h2>
            <form:form action="/register" modelAttribute="newUser">
              <div class="mb-3">
                <form:label path="userName" class="form-label"
                  >User Name</form:label
                >
                <form:input path="userName" type="text" class="form-control" />
                <form:errors path="userName" class="text-danger small" />
              </div>
              <div class="mb-3">
                <form:label path="email" class="form-label">Email</form:label>
                <form:input path="email" type="text" class="form-control" />
                <form:errors path="email" class="text-danger small" />
              </div>
              <div class="mb-3">
                <form:label path="password" class="form-label"
                  >Password</form:label
                >
                <form:input
                  path="password"
                  type="password"
                  class="form-control"
                />
                <form:errors path="password" class="text-danger small" />
              </div>
              <div class="mb-3">
                <form:label path="confirm" class="form-label"
                  >Confirm Password</form:label
                >
                <form:input
                  path="confirm"
                  type="password"
                  class="form-control"
                />
                <form:errors path="confirm" class="text-danger small" />
              </div>
              <div class="d-grid">
                <button type="submit" class="btn btn-primary">Register</button>
              </div>
            </form:form>
          </div>
        </div>

        <!-- Login Form -->
        <div class="col-md-6">
          <div class="card p-4">
            <h2 class="text-center mb-4">Log In</h2>
            <form:form action="/login" modelAttribute="newLogin">
              <div class="mb-3">
                <form:label path="email" class="form-label">Email</form:label>
                <form:input path="email" type="text" class="form-control" />
                <form:errors path="email" class="text-danger small" />
              </div>
              <div class="mb-3">
                <form:label path="password" class="form-label"
                  >Password</form:label
                >
                <form:input
                  path="password"
                  type="password"
                  class="form-control"
                />
                <form:errors path="password" class="text-danger small" />
              </div>
              <div class="d-grid">
                <button type="submit" class="btn btn-primary">Log In</button>
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
