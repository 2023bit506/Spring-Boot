<%@ include file="header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>List Of All Employees</title>
    <!-- SweetAlert CDN -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        .table-container {
            overflow-x: auto; /* Horizontal scrollbar */
            margin: 20px auto;
            padding: 10px;
            max-width: 100%; /* Ensure responsiveness */
        }

        .table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: #343a40;
            color: white;
            border-radius: 8px;
            overflow: hidden;
        }

        .table th, .table td {
            text-align: center;
            padding: 10px;
            border: 1px solid #444;
        }

        .table th {
            background-color: #212529;
            text-transform: uppercase;
        }

        .table td a {
            text-decoration: none;
            padding: 5px 10px;
            border-radius: 5px;
            font-size: 14px;
        }

        .btn-success {
            background-color: #28a745;
            color: white;
            border: none;
            cursor: pointer;
        }

        .btn-danger {
            background-color: #dc3545;
            color: white;
            border: none;
            cursor: pointer;
        }

        .btn-success:hover {
            background-color: #218838;
        }

        .btn-danger:hover {
            background-color: #c82333;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .table th, .table td {
                font-size: 12px;
                padding: 5px;
            }

            .table td a {
                font-size: 12px;
                padding: 4px 8px;
            }
        }

        @media (max-width: 480px) {
            .table th, .table td {
                font-size: 10px;
                padding: 4px;
            }

            .table td a {
                font-size: 10px;
                padding: 3px 6px;
            }
        }
    </style>
</head>
<body>
    <div class="table-container">
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">EMPLOYEE ID</th>
                    <th scope="col">USERNAME</th>
                    <%-- Display PASSWORD column only for admin --%>
                    <% 
                    String role1 = (String) session.getAttribute("role");
                    if (role1 != null && role1.equalsIgnoreCase("admin")) { %>
                        <th scope="col">PASSWORD</th>
                        <th scope="col">STATUS</th>
                    <% } %>
                    <th scope="col">CREATED DATE</th>
                    <th scope="col">GENDER</th>
                    <th scope="col">EMAIL</th>
                    <th scope="col">PHONE</th>
                    <th scope="col">ROLE</th>
                    <%-- Display SALARY column only for admin --%>
                    <% if (role1 != null && role1.equalsIgnoreCase("admin")) { %>
                        <th scope="col">SALARY</th>
                    <% } %>
                    <th scope="col">DEPARTMENT</th>
                    <%-- Display QUESTION column only for admin --%>
                    <% if (role1 != null && role1.equalsIgnoreCase("admin")) { %>
                        <th scope="col">QUESTION</th>
                    <% } %>
                    <%-- Display ANSWER column only for admin --%>
                    <% if (role1 != null && role1.equalsIgnoreCase("admin")) { %>
                        <th scope="col">ANSWER</th>
                    <% } %>
                    <%-- Display ACTION column only for admin --%>
                    <% if (role1 != null && role1.equalsIgnoreCase("admin")) { %>
                        <th scope="col">ACTION</th>
                    <% } %>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${employees}" var="emp">
                    <tr>
                        <td><c:out value="${emp.employeeId}" /></td>
                        <td><c:out value="${emp.userName}" /></td>
                        <%-- Display PASSWORD and STATUS columns only for admin --%>
                        <% if (role1 != null && role1.equalsIgnoreCase("admin")) { %>
                            <td><c:out value="${emp.password}" /></td>
                            <td><c:out value="${emp.status}" /></td>
                        <% } %>
                        <td><c:out value="${emp.createDate}" /></td>
                        <td><c:out value="${emp.gender}" /></td>
                        <td><c:out value="${emp.email}" /></td>
                        <td><c:out value="${emp.phone}" /></td>
                        <td><c:out value="${emp.role}" /></td>
                        <%-- Display SALARY column only for admin --%>
                        <% if (role1 != null && role1.equalsIgnoreCase("admin")) { %>
                            <td><c:out value="${emp.salary}" /></td>
                        <% } %>
                        <td><c:out value="${emp.department}" /></td>
                        <%-- Display QUESTION column only for admin --%>
                        <% if (role1 != null && role1.equalsIgnoreCase("admin")) { %>
                            <td><c:out value="${emp.question}" /></td>
                        <% } %>
                        <%-- Display ANSWER column only for admin --%>
                        <% if (role1 != null && role1.equalsIgnoreCase("admin")) { %>
                            <td><c:out value="${emp.answer}" /></td>
                        <% } %>
                        <%-- Display ACTION columns only for admin --%>
                        <% if (role1 != null && role1.equalsIgnoreCase("admin")) { %>
                            <td>
                                <a href="getEmployeeById?eid=${emp.employeeId}&msg=null" class="btn btn-success">EDIT</a>
                            </td>
                            <td>
                                <a href="deleteEmployee?eid=${emp.employeeId}" onclick="return confirmDelete(event)"
                                    class="btn btn-danger">DELETE</a>
                            </td>
                        <% } %>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    
    <script>
        function confirmDelete(event) {
            event.preventDefault(); // Prevent the default link action
            Swal.fire({
                title: 'Are you sure?',
                text: 'You want to delete this employee!',
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, delete it!'
            }).then((result) => {
                if (result.isConfirmed) {
                    window.location.href = event.target.href; // Proceed with the link action
                }
            });
        }
    </script>

   <%@include file="footer.jsp" %>
</body>
</html>
