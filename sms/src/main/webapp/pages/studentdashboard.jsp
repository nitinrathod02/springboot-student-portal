<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Portal | Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/all.min.css">
    
    <style>
        :root {
            --sidebar-bg: #3f51b5;
            --sidebar-hover: #303f9f;
        }
        body {
            background-color: #f4f7f6;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .wrapper {
            display: flex;
            width: 100%;
            align-items: stretch;
        }
        /* Sidebar Styling */
        #sidebar {
            min-width: 260px;
            max-width: 260px;
            background: var(--sidebar-bg);
            color: #fff;
            transition: all 0.3s;
            min-height: 100vh;
        }
        #sidebar .sidebar-header {
            padding: 25px;
            background: rgba(0,0,0,0.1);
            text-align: center;
        }
        #sidebar ul li a {
            padding: 15px 25px;
            display: block;
            color: rgba(255,255,255,0.8);
            text-decoration: none;
            transition: 0.2s;
            border-left: 4px solid transparent;
        }
        #sidebar ul li a:hover {
            background: var(--sidebar-hover);
            color: #fff;
            border-left: 4px solid #ff4081;
        }
        /* Content Area */
        #content {
            width: 100%;
            padding: 25px;
        }
        .student-card {
            border: none;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.05);
            transition: transform 0.2s;
        }
        .student-card:hover { transform: translateY(-3px); }
        
        .note-item {
            border-left: 5px solid #3f51b5;
            background: white;
            padding: 15px;
            margin-bottom: 10px;
            border-radius: 5px;
        }
    </style>
</head>
<body>

    <div class="wrapper">
        <nav id="sidebar">
            <div class="sidebar-header">
                <i class="fas fa-user-circle fa-4x mb-2"></i>
                <h5>Student Portal</h5>
                <small class="badge bg-light text-dark">${username}</small>
            </div>
            <ul class="list-unstyled">
                <li><a href="#"><i class="fas fa-th-large me-2"></i> Dashboard</a></li>
                <li><a href="editProfile"><i class="fas fa-user-edit me-2"></i> Edit My Profile</a></li>
                <li><a href="viewNotes"><i class="fas fa-book-open me-2"></i> Lecture Notes</a></li>
                <li><a href="myAttendance"><i class="fas fa-calendar-alt me-2"></i> Attendance</a></li>
                <li><a href="myFees"><i class="fas fa-wallet me-2"></i> Fee Status</a></li>
                <li class="mt-5"><a href="logout" class="text-warning"><i class="fas fa-sign-out-alt me-2"></i> Logout</a></li>
            </ul>
        </nav>



        <div id="content">
            <div class="container-fluid">
                <div class="d-flex justify-content-between align-items-center mb-4">
                
                    <h2 class="fw-bold">Welcome Back, ${data.name}!</h2>
                    
                    <span class="text-muted"><i class="far fa-clock me-1"></i> Session: 2026-27</span>
                </div>



                <div class="row mb-4">
                    <div class="col-md-4">
                        <div class="card student-card p-3 mb-3 bg-white">
                            <div class="d-flex align-items-center">
                                <div class="bg-primary text-white p-3 rounded-circle me-3">
                                    <i class="fas fa-graduation-cap fa-lg"></i>
                                </div>
                                <div>
                                    <h6 class="text-muted mb-0">Current Course</h6>
                                    <h5 class="fw-bold mb-0">${data.course}</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card student-card p-3 mb-3 bg-white">
                            <div class="d-flex align-items-center">
                                <div class="bg-success text-white p-3 rounded-circle me-3">
                                    <i class="fas fa-percentage fa-lg"></i>
                                </div>
                                <div>
                                    <h6 class="text-muted mb-0">BatchNo</h6>
                                    <h5 class="fw-bold mb-0">${data.batchNo}</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card student-card p-3 mb-3 bg-white">
                            <div class="d-flex align-items-center">
                                <div class="bg-info text-white p-3 rounded-circle me-3">
                                    <i class="fas fa-tasks fa-lg"></i>
                                </div>
                                <div>
                                    <h6 class="text-muted mb-0">Mode</h6>
                                    <h5 class="fw-bold mb-0">${data.mode}</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-8">
                        <div class="card border-0 shadow-sm p-4">
                            <h5 class="fw-bold mb-4 text-primary">Recent Lecture Notes</h5>
                            
                            <div class="note-item shadow-sm d-flex justify-content-between align-items-center">
                                <div>
                                    <h6 class="mb-1 fw-bold">Spring Boot Core Concepts</h6>
                                    <small class="text-muted">Uploaded by: Prof. Sharma | Jan 15, 2026</small>
                                </div>
                                <button class="btn btn-outline-primary btn-sm"><i class="fas fa-download"></i></button>
                            </div>

                            <div class="note-item shadow-sm d-flex justify-content-between align-items-center">
                                <div>
                                    <h6 class="mb-1 fw-bold">Advanced Hibernate Mapping</h6>
                                    <small class="text-muted">Uploaded by: Prof. Sharma | Jan 12, 2026</small>
                                </div>
                                <button class="btn btn-outline-primary btn-sm"><i class="fas fa-download"></i></button>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="card bg-dark text-white p-4 h-100">
                            <h5>Quick Links</h5>
                            <hr>
                            <p><i class="fas fa-envelope me-2"></i> Contact Faculty</p>
                            <p><i class="fas fa-file-pdf me-2"></i> Exam Schedule</p>
                            <p><i class="fas fa-link me-2"></i> Join Live Class</p>
                            <div class="mt-auto">
                                <div class="alert alert-warning py-2 small">
                                    <strong>Notice:</strong> Fees due by 20th Jan.
                                </div>
                            </div>
                        </div>
                    </div>
                </div> </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>