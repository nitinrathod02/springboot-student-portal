# 🎓 Spring Boot Student Portal (Admin & Student CRUD System)

A **Student Portal Web Application** built using **Spring Boot, Spring MVC, Spring Data JPA, and MySQL**.
The system provides **Admin and Student login functionality** where students can register and view their dashboard, while the admin can manage student records including **viewing, deleting, and pagination of students**.

---

# 🚀 Features

### 👨‍💼 Admin Features

* Admin Login Authentication
* View All Students
* Delete Student Records
* Pagination for Student List
* Manage Student Data

### 👨‍🎓 Student Features

* Student Registration
* Student Login
* Student Dashboard
* View Personal Details

### ⚙️ System Features

* MVC Architecture
* Spring Data JPA Integration
* Database Persistence
* Clean Layered Architecture

---

# 🛠️ Tech Stack

| Technology       | Purpose                    |
| ---------------- | -------------------------- |
| Java             | Programming Language       |
| Spring Boot      | Backend Framework          |
| Spring MVC       | Web Layer                  |
| Spring Data JPA  | Database ORM               |
| Hibernate        | Persistence Framework      |
| MySQL            | Database                   |
| Maven            | Build Tool                 |
| JSP / HTML / CSS | Frontend View              |
| Lombok           | Boilerplate Code Reduction |

---

# 📂 Project Structure

```text
src/main/java/com/cjc/springcrudapp/app
│
├── controller
│   ├── AdminController
│   ├── AuthController
│   └── StudentController
│
├── model
│   ├── Admin
│   ├── Student
│   └── BatchShiftRequest
│
├── repository
│   ├── AdminRepository
│   ├── StudentRepository
│   └── BatchShiftRepository
│
├── service
│   ├── AdminServiceI
│   ├── StudentServiceI
│   ├── BatchShiftI
│   ├── AdminServiceImpl
│   ├── StudentServiceImpl
│   └── BatchShiftImpl
```

---

# 🔐 Authentication Flow

### Admin Login

Default Admin Credentials:

```
Username : admin
Password : admin123
```

Admin will be redirected to **Admin Dashboard**.

---

### Student Login

Students log in using credentials stored in the database.

Repository method used:

```java
public Student findByUsernameAndPassword(String username,String password);
```

If authentication is successful, the student is redirected to the **Student Dashboard**.

---

# 🧾 Student Registration

Students can register using the **registration form**.

Student fields include:

| Field    | Type   |
| -------- | ------ |
| id       | Long   |
| name     | String |
| username | String |
| password | String |
| course   | String |
| batchNo  | String |
| mode     | String |

---

# 🗄️ Entities

### Student Entity

Stores all student-related data including login credentials and course information.

---

### Admin Entity

Stores admin authentication details.

---

### BatchShiftRequest Entity

Used for handling **batch change requests**.

Fields:

| Field    | Description                   |
| -------- | ----------------------------- |
| id       | Request ID                    |
| oldBatch | Previous batch                |
| newBatch | Requested batch               |
| status   | PENDING / APPROVED / REJECTED |
| student  | Student reference             |

---

# 📑 Pagination

Pagination implemented using **Spring Data JPA PageRequest**.

Example:

```java
ssi.paging(pagenumber,2);
```

This loads **2 students per page**.

---

# ▶️ How to Run the Project

### 1️⃣ Clone the Repository

```bash
git clone https://github.com/yourusername/springboot-student-portal.git
```

---

### 2️⃣ Open in IDE

Recommended IDE:

* IntelliJ IDEA
* Eclipse
* Spring Tool Suite

---

### 3️⃣ Configure Database

Update **application.properties**

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/studentdb
spring.datasource.username=root
spring.datasource.password=root

spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
```

---

### 4️⃣ Run the Application

Run the **Spring Boot main class**.

Open browser:

```
http://localhost:8080
```

---

# 📸 Screenshots

You can add screenshots of:

* Login Page
* Student Registration
* Admin Dashboard
* Student List
* Student Dashboard

---

# 📈 Future Improvements

* Spring Security Authentication
* Password Encryption
* Batch Shift Approval System
* REST API Version
* React / Angular Frontend
* Role-Based Access Control

---



