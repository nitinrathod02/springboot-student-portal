<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard | Student Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/all.min.css">
    
    <style>
        body {
            background: url('https://images.unsplash.com/photo-1497366216548-37526070297c?auto=format&fit=crop&q=80&w=2070') no-repeat center center fixed;
            background-size: cover;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        /* Sidebar Styling */
        #sidebar {
            min-width: 250px;
            max-width: 250px;
            min-height: 100vh;
            background: rgba(33, 37, 41, 0.95);
            backdrop-filter: blur(10px);
            transition: all 0.3s;
        }

        #sidebar .sidebar-header {
            padding: 20px;
            background: #0d6efd;
            color: #fff;
        }

        #sidebar ul li a {
            padding: 15px 20px;
            display: block;
            color: #adb5bd;
            text-decoration: none;
            border-bottom: 1px solid rgba(255,255,255,0.1);
        }

        #sidebar ul li a:hover {
            color: #fff;
            background: rgba(13, 110, 253, 0.5);
        }

        /* Content Area */
        .main-content {
            width: 100%;
            background: rgba(255, 255, 255, 0.85);
            padding: 20px;
            min-height: 100vh;
        }

        .stat-card {
            border: none;
            border-radius: 15px;
            transition: transform 0.3s;
        }

        .stat-card:hover {
            transform: translateY(-5px);
        }
    </style>
</head>
<body>

    <div class="d-flex">
        <nav id="sidebar">
            <div class="sidebar-header">
                <h3>Admin Portal</h3>
            </div>
            <ul class="list-unstyled">
                <li><a href="#"><i class="fas fa-home me-2"></i> Dashboard</a></li>
                <li><a href="addStudent"><i class="fas fa-user-plus me-2"></i> Add Student</a></li>
                <li><a href="viewStudents"><i class="fas fa-users me-2"></i> View Students</a></li>
                <li><a href="manageFees"><i class="fas fa-file-invoice-dollar me-2"></i> Manage Fees</a></li>
                <li><a href="manageLeave"><i class="fas fa-calendar-check me-2"></i> Manage Leave</a></li>
                <li><a href="batchshift"><i class="fas fa-cog me-2"></i> Batch Shift</a></li>
                <li><a href="logout" class="text-danger"><i class="fas fa-sign-out-alt me-2"></i> Logout</a></li>
            </ul>
        </nav>

        <div class="main-content">
            <nav class="navbar navbar-expand-lg navbar-light bg-light rounded shadow-sm mb-4">
                <div class="container-fluid">
                    <span class="navbar-brand">Welcome, <strong>Admin</strong></span>
                </div>
            </nav>

            <div class="container-fluid">
                <div class="row mb-4">
                    <div class="col-md-4">
                        <div class="card stat-card bg-primary text-white shadow">
                            <div class="card-body">
                                <h5>Total Students</h5>
                                <h2>150</h2>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card stat-card bg-success text-white shadow">
                            <div class="card-body">
                                <h5>Fees Collected</h5>
                                <h2>$45,000</h2>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card stat-card bg-warning text-dark shadow">
                            <div class="card-body">
                                <h5>Pending Leaves</h5>
                                <h2>12</h2>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card shadow">
                    <div class="card-header bg-white">
                        <h5 class="mb-0">Recent Registrations</h5>
                    </div>
                    <div class="card-body">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Course</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>#101</td>
                                    <td>aniket Donge</td>
                                    <td>Computer Science</td>
                                    <td>
                                        <button class="btn btn-sm btn-info text-white"><i class="fas fa-edit"></i></button>
                                        <button class="btn btn-sm btn-danger"><i class="fas fa-trash"></i></button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>#102</td>
                                    <td>Vishal Pimpare</td>
                                    <td>Bachler Of Computer Science</td>
                                    <td>
                                        <button class="btn btn-sm btn-info text-white"><i class="fas fa-edit"></i></button>
                                        <button class="btn btn-sm btn-danger"><i class="fas fa-trash"></i></button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>