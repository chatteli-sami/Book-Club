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
    <link rel="stylesheet" type="text/css" href="CSS/index.css" />
    <title>Book Club</title>
  </head>
  <body>
    <div class="container">
      <h1>Welcome to the Book Club!</h1>

      <h2>Register</h2>

      <div class="container">
        <form:form action="/register" modelAttribute="newUser" class="form">
          <div class="form-row">
            <form:errors path="userName" />
            <form:label for="userName" path="userName">User Name:</form:label>
            <form:input type="text" path="userName" class="form-control" />
          </div>

          <div class="form-row">
            <form:errors path="email" />
            <form:label for="email" path="email">Email:</form:label>
            <form:input type="text" path="email" class="form-control" />
          </div>

          <div class="form-row">
            <form:errors path="password" />
            <form:label for="password" path="password">Password:</form:label>
            <form:input type="password" path="password" class="form-control" />
          </div>

          <div class="form-row">
            <form:errors path="confirm" />
            <form:label for="" path="confirm">Confirm:</form:label>
            <form:input type="password" path="confirm" class="form-control" />
          </div>

          <div class="form-row">
            <input type="submit" value="Submit" class="btn-primary" />
          </div>
        </form:form>
      </div>

      <h2>Log In</h2>

      <div class="container">
        <form:form action="/login" modelAttribute="newLogin" class="form">
          <div class="form-row">
            <form:errors path="email" />
            <form:label for="email" path="email">Email:</form:label>
            <form:input type="text" path="email" class="form-control" />
          </div>

          <div>
            <form:errors path="password" />
            <form:label for="password" path="password">Password:</form:label>
            <form:input type="password" path="password" class="form-control" />
          </div>

          <div class="form-row">
            <input type="submit" value="Submit" class="btn-primary" />
          </div>
        </form:form>
      </div>
    </div>
  </body>
</html>