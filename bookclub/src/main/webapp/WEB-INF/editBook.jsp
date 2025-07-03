<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Book</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css">
    <link rel="stylesheet" type="text/css" href="/CSS/addPage.css">
</head>
<body class="bg-light">
    <div class="container py-5">
        <div class="row justify-content-center">
            <div class="col-md-8 col-lg-6">
                <div class="card shadow">
                    <div class="card-header bg-primary text-white">
                        <h1 class="h3 mb-0"><i class="bi bi-pencil-square"></i> Edit Book</h1>
                    </div>
                    
                    <div class="card-body">
                        <form:form action="/books/update/${book.id}" method="post" modelAttribute="book">
                            <div class="mb-3">
                                <form:label path="title" class="form-label">Title</form:label>
                                <form:input path="title" class="form-control" />
                                <form:errors path="title" class="text-danger small" />
                            </div>
                            
                            <div class="mb-3">
                                <form:label path="author" class="form-label">Author</form:label>
                                <form:input path="author" class="form-control" />
                                <form:errors path="author" class="text-danger small" />
                            </div>
                            
                            <div class="mb-4">
                                <form:label path="thoughts" class="form-label">Thoughts</form:label>
                                <form:textarea path="thoughts" class="form-control" rows="4" />
                                <form:errors path="thoughts" class="text-danger small" />
                            </div>
                            
                            <form:errors path="user" class="text-danger" />
                            <form:input type="hidden" path="user" value="${user.id}" />
                            
                            <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                                <a href="/home" class="btn btn-secondary me-md-2">
                                    <i class="bi bi-x-circle"></i> Cancel
                                </a>
                                <button type="submit" class="btn btn-primary">
                                    <i class="bi bi-save"></i> Update Book
                                </button>
                            </div>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>