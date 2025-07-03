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
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Book Club</title>
  </head>
  <body class="bg-gray-100">
    <div class="max-w-4xl mx-auto py-12 px-4 sm:px-6 lg:px-8">
      <h1 class="text-3xl font-bold text-center mb-8 text-blue-600">
        Welcome to the Book Club!
      </h1>

      <div class="grid md:grid-cols-2 gap-8">
        <!-- Register Form -->
        <div class="bg-white p-6 rounded-lg shadow-md">
          <h2 class="text-2xl font-semibold mb-4">Register</h2>
          <form:form
            action="/register"
            modelAttribute="newUser"
            class="space-y-4"
          >
            <div>
              <form:errors path="userName" class="text-sm text-red-600" />
              <form:label
                path="userName"
                class="block text-sm font-medium text-gray-700"
                >User Name:</form:label
              >
              <form:input
                type="text"
                path="userName"
                class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500 sm:text-sm p-2 border"
              />
            </div>

            <div>
              <form:errors path="email" class="text-sm text-red-600" />
              <form:label
                path="email"
                class="block text-sm font-medium text-gray-700"
                >Email:</form:label
              >
              <form:input
                type="text"
                path="email"
                class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500 sm:text-sm p-2 border"
              />
            </div>

            <div>
              <form:errors path="password" class="text-sm text-red-600" />
              <form:label
                path="password"
                class="block text-sm font-medium text-gray-700"
                >Password:</form:label
              >
              <form:input
                type="password"
                path="password"
                class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500 sm:text-sm p-2 border"
              />
            </div>

            <div>
              <form:errors path="confirm" class="text-sm text-red-600" />
              <form:label
                path="confirm"
                class="block text-sm font-medium text-gray-700"
                >Confirm Password:</form:label
              >
              <form:input
                type="password"
                path="confirm"
                class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500 sm:text-sm p-2 border"
              />
            </div>

            <div>
              <input
                type="submit"
                value="Register"
                class="w-full flex justify-center py-2 px-4 border border-transparent rounded-md shadow-sm text-sm font-medium text-white bg-blue-600 hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500"
              />
            </div>
          </form:form>
        </div>

        <!-- Login Form -->
        <div class="bg-white p-6 rounded-lg shadow-md">
          <h2 class="text-2xl font-semibold mb-4">Log In</h2>
          <form:form
            action="/login"
            modelAttribute="newLogin"
            class="space-y-4"
          >
            <div>
              <form:errors path="email" class="text-sm text-red-600" />
              <form:label
                path="email"
                class="block text-sm font-medium text-gray-700"
                >Email:</form:label
              >
              <form:input
                type="text"
                path="email"
                class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500 sm:text-sm p-2 border"
              />
            </div>

            <div>
              <form:errors path="password" class="text-sm text-red-600" />
              <form:label
                path="password"
                class="block text-sm font-medium text-gray-700"
                >Password:</form:label
              >
              <form:input
                type="password"
                path="password"
                class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500 sm:text-sm p-2 border"
              />
            </div>

            <div>
              <input
                type="submit"
                value="Log In"
                class="w-full flex justify-center py-2 px-4 border border-transparent rounded-md shadow-sm text-sm font-medium text-white bg-blue-600 hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500"
              />
            </div>
          </form:form>
        </div>
      </div>
    </div>
  </body>
</html>
