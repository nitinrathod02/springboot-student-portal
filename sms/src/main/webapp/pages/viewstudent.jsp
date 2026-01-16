<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Student Management System</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        body { background-color: #f8f9fa; }
        .table-container {
            background: white;
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            margin-top: 2rem;
        }
        .btn-action { margin-right: 5px; }
    </style>
</head>
<body>

<nav class="navbar navbar-dark bg-primary mb-4">
    <div class="container">
        <a class="navbar-brand" href="#"><i class="fas fa-users-cog"></i> Student Dashboard</a>
    </div>
</nav>

<div class="container">
    <div class="table-container">
        <div class="d-flex justify-content-between align-items-center mb-4">
            <h2 class="text-secondary">Registered Students</h2>
            <button class="btn btn-success"><i class="fas fa-plus"></i> Add New Student</button>
        </div>

        <div class="table-responsive">
            <table class="table table-hover align-middle">
                <thead class="table-dark">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Username</th>
                        <th>Password</th>
                        <th>Course</th>
                        <th>Batch No</th>
                        <th class="text-center">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${data}" var="s">
                        <tr>
                            <td><strong>${s.id}</strong></td>
                            <td>${s.name}</td>
                            <td><span class="badge bg-info text-dark">${s.username}</span></td>
                            <td><code>******</code></td> <td>${s.course}</td>
                            <td><span class="badge bg-secondary">${s.batchNo}</span></td>
                            <td class="text-center">
                                <a href="edit?id=${s.id}" class="btn btn-sm btn-outline-primary btn-action">
                                    <i class="fas fa-edit"></i> Edit
                                </a>
                                <a href="delete?id=${s.id}" class="btn btn-sm btn-outline-danger" 
                                   onclick="return confirm('Are you sure you want to delete this record?')">
                                    <i class="fas fa-trash"></i> Delete
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                    <c:if test="${empty data}">
                        <tr>
                            <td colspan="7" class="text-center text-muted">No records found in the database.</td>
                        </tr>
                    </c:if>
                </tbody>
            </table>
        </div>
    </div>
</div>
 <!-- Pagination -->
        <div class="mt-4 d-flex justify-content-center">
            <ul class="pagination pagination-lg">
                <li class="page-item active"><a class="page-link" href="paging?pagenumber=0">1</a></li>
                <li class="page-item"><a class="page-link" href="paging?pagenumber=1">2</a></li>
                <li class="page-item"><a class="page-link" href="paging?pagenumber=2">3</a></li>
            </ul>
        </div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>