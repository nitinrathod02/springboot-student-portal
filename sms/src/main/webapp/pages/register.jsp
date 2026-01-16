<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Registration</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/all.min.css">

<style>
    body {
        /* Soft, professional gradient */
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        min-height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
        padding: 40px 20px;
        font-family: 'Segoe UI', sans-serif;
    }
    .register-card {
        border: none;
        border-radius: 20px;
        box-shadow: 0 15px 35px rgba(0,0,0,0.2);
        background: #ffffff;
        overflow: hidden;
        max-width: 600px;
        width: 100%;
    }
    .card-header {
        background: #ffffff;
        color: #4e54c8;
        text-align: center;
        padding: 30px 20px 10px 20px;
        border: none;
    }
    .form-label {
        color: #495057;
        font-size: 0.9rem;
        margin-bottom: 0.4rem;
    }
    .input-group-text {
        background-color: #f8f9fa;
        color: #667eea;
        border-right: none;
    }
    .form-control, .form-select {
        border-left: none;
        padding: 10px;
    }
    .form-control:focus, .form-select:focus {
        box-shadow: none;
        border-color: #dee2e6;
    }
    /* Custom Styling for Radio Buttons */
    .course-selection {
        background: #f8f9fa;
        padding: 15px;
        border-radius: 10px;
        border: 1px solid #e9ecef;
    }
    .btn-register {
        background: linear-gradient(to right, #667eea, #764ba2);
        border: none;
        padding: 12px;
        font-weight: 600;
        transition: transform 0.2s;
    }
    .btn-register:hover {
        transform: scale(1.02);
        opacity: 0.9;
    }
</style>
</head>
<body>

<div class="register-card">
    <div class="card-header">
        <div class="icon-box mb-2">
            <i class="fas fa-user-graduate fa-3x" style="color: #667eea;"></i>
        </div>
        <h3 class="fw-bold">Student Registration</h3>
        <p class="text-muted">Enter credentials to enroll a new student</p>
    </div>
    
    <div class="card-body p-4 pt-2">
        <form action="save">
            
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label class="form-label fw-bold">Username</label>
                    <div class="input-group">
                        <span class="input-group-text"><i class="fas fa-at"></i></span>
                        <input type="text" name="username" class="form-control" placeholder="Create username" required>
                    </div>
                </div>

                <div class="col-md-6 mb-3">
                    <label class="form-label fw-bold">Full Name</label>
                    <div class="input-group">
                        <span class="input-group-text"><i class="fas fa-user"></i></span>
                        <input type="text" name="name" class="form-control" placeholder="John Doe" required>
                    </div>
                </div>
            </div>

            <div class="mb-3">
                <label class="form-label fw-bold">Password</label>
                <div class="input-group">
                    <span class="input-group-text"><i class="fas fa-lock"></i></span>
                    <input type="password" name="password" class="form-control" placeholder="••••••••" required>
                </div>
            </div>

            <div class="mb-3">
                <label class="form-label fw-bold">Assign Course</label>
                <div class="course-selection d-flex justify-content-around">
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="Course" id="java" value="Java" checked>
                        <label class="form-check-label" for="java">Java</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="Course" id="python" value="Python">
                        <label class="form-check-label" for="python">Python</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="Course" id="testing" value="Testing">
                        <label class="form-check-label" for="testing">Testing</label>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6 mb-3">
                    <label class="form-label fw-bold">Batch Number</label>
                    <div class="input-group">
                        <span class="input-group-text"><i class="fas fa-layer-group"></i></span>
                        <select class="form-select" name="batchNo" required>
                            <option value="" disabled selected>Select Batch</option>
                            <option value="FDJ-197">FDJ-197</option>
                            <option value="REG-197">REG-197</option>
                            <option value="FDJ-161">FDJ-161</option>
                            <option value="REG-162">REG-162</option>
                        </select>
                    </div>
                </div>

                <div class="col-md-6 mb-4">
                    <label class="form-label fw-bold">Learning Mode</label>
                    <div class="input-group">
                        <span class="input-group-text"><i class="fas fa-laptop-house"></i></span>
                        <select name="mode" class="form-select" required>
                            <option value="" selected disabled>Select Mode</option>
                            <option value="Online">Online</option>
                            <option value="Offline">Offline</option>
                        </select>
                    </div>
                </div>
            </div>

            <div class="d-grid gap-2">
                <button type="submit" class="btn btn-primary btn-register text-white">
                    <i class="fas fa-check-circle me-2"></i> COMPLETE REGISTRATION
                </button>
                <a href="admindashboard" class="btn btn-link text-decoration-none text-muted">
                    <i class="fas fa-arrow-left me-1"></i> Back to Dashboard
                </a>
            </div>
        </form>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>