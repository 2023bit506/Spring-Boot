<html>
<head>
    <title>Responsive Header</title>
    <style>
        /* Custom CSS */
        @import url('https://fonts.googleapis.com/css?family=Work+Sans:400,600');

        body {
            margin: 0;
            background: #222;
            font-family: 'Work Sans', sans-serif;
            font-weight: 800;
        }

        .navbar {
            background-color: #55d6aa !important; /* Custom background color for navbar */
            padding: 10px 20px;
        }

        .navbar-brand {
            display: flex;
            align-items: center;
            color: white !important;
            font-size: 24px;
            font-weight: 700;
        }

        .navbar-brand img {
            height: 40px; /* Adjust logo height */
            margin-right: 10px; /* Add spacing between logo and text */
        }

        .navbar-nav .nav-link {
            color: white !important;
            font-weight: 600;
            text-transform: uppercase;
            font-size: 18px; /* Increased font size */
            position: relative;
        }

        .navbar-nav .nav-link:hover {
            color: #000 !important;
        }

        .navbar-toggler {
            border-color: white;
        }

        .navbar-toggler-icon {
            background-color: white;
        }

        /* Hover effect for links */
        .navbar-nav .nav-item .nav-link::before {
            content: '';
            display: block;
            height: 5px;
            background-color: white;
            position: absolute;
            top: 0;
            width: 0%;
            transition: all ease-in-out 250ms;
        }

        .navbar-nav .nav-item .nav-link:hover::before {
            width: 100%;
        }

        /* Center alignment for smaller devices */
        @media (max-width: 768px) {
            .navbar-nav {
                text-align: center;
                width: 100%;
            }

            .navbar-nav .nav-item {
                margin-bottom: 10px;
            }
        }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
                <img src="resources/images/employee.png" alt="Employee Logo"> <!-- Add the employee logo here -->
                Employee Portal
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav w-100">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="homePage">Home</a>
                    </li>
					
                    <%
                    String role = (String)session.getAttribute("role");
                    if(role.equalsIgnoreCase("admin"))
                    {
                    %>
                    <li class="nav-item">
                          <a class="nav-link" href="addEmployees">Add Employees</a>
                    </li>
                    <%
                    }
                    %>		                  

                    <li class="nav-item">
                        <a class="nav-link" href="getAllEmployees">List Of Employees</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="getEmployeeById?eid=<%= session.getAttribute("id") %>&msg=null">Profile (<%= session.getAttribute("username") %>)</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="logout?eid=<%= session.getAttribute("id") %>">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXlJtcfN4OL3kcnSNF5z1hbPp9VVFG+8ZNuW0V8F76G5p5p1l5h2y4UjzH8h" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-c5B24IFThmY3u7GiRTtwkGFDRHbFgIsk0WYWe+5dyD8aG2jtP4rypM7g6Jpaz9d" crossorigin="anonymous"></script>
</body>
</html>
