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
    <title>Book Club</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/CSS/book.css">
</head>
<body class="bg-light">
    <div class="container py-5">
        <div class="row justify-content-center">
            <div class="col-md-8 col-lg-6">
                <div class="card shadow">
                    <div class="card-header bg-primary text-white">
                        <h1 class="card-title mb-0"><c:out value="${book.title}"/></h1>
                    </div>
                    <c:choose>
            <c:when test="${book.user.id == user.id}">
                <h4 class="card-subtitle mb-3 text-muted">
                    You read <span class="fw-bold">${book.title}</span> by ${book.author}
                </h4>
            </c:when>
            <c:otherwise>
                <h4 class="card-subtitle mb-3 text-muted">
                    <span class="fw-bold">${book.user.userName}</span> read ${book.title} by ${book.author}
                </h4>
            </c:otherwise>
        </c:choose>
        
                    <div class="card-body">
                        <div class="mb-4">
                            <h3 class="text-muted">Books from everyone's shelves:</h3>
                            <a href="/home" class="btn btn-outline-secondary">
                                <i class="bi bi-arrow-left"></i> Back to shelves
                            </a>
                        </div>
                        
                        <div class="card mb-4">
                            <div class="card-body">
                                <h4 class="card-subtitle mb-3 text-muted">
                                    <span class="fw-bold"><c:out value="${book.user.userName}"/></span>'s thoughts:
                                </h4>
                                <hr class="my-3">
                                <p class="card-text lead"><c:out value="${book.thoughts}"/></p>
                                <hr class="my-3">
                                
                                <div class="d-flex justify-content-end">
                                    <c:if test="${book.user.id == user.id}">
                                        <a href="/books/edit/${book.id}" class="btn btn-warning me-2">
                                            <i class="bi bi-pencil"></i> Edit
                                        </a>
                                        <form action="/books/delete/${book.id}" method="post" class="d-inline">
                                            <input type="hidden" name="_method" value="delete">
                                            <button type="submit" class="btn btn-danger">
                                                <i class="bi bi-trash"></i> Delete
                                            </button>
                                        </form>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="card-footer text-muted">
                        <small>
                            Posted on <fmt:formatDate value="${book.createdAt}" pattern="MMM dd, yyyy"/>
                        </small>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>