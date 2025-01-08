<%@include file="header.jsp" %>

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            background-color: #000; /* Fallback color */
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            color: #fff;
        }

        .first-container {
            background-image: url('/resources/images/bg_home.jpg'); /* Replace with your image path */
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            padding: 100px 20px;
            text-align: center;
            color: #fff;
        }

        .first-container h1 {
            font-size: 3.5em;
            font-weight: bold;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.7);
        }

        .first-container p {
            font-size: 1.5em;
            line-height: 1.6;
            margin-top: 20px;
        }

        .features-container {
            text-align: center;
            padding: 50px 20px;
        }

        .features {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }

        .feature {
            background: rgba(0, 0, 0, 0.6);
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
            padding: 20px;
            width: 300px;
            text-align: center;
        }

        .feature img {
            width: 100px;
            height: 100px;
            margin-bottom: 10px;
        }

        .feature h3 {
            margin: 10px 0;
            font-size: 1.2em;
            color: #fff;
        }

        .feature p {
            font-size: 1em;
            line-height: 1.4;
        }

        @media (max-width: 768px) {
            .first-container h1 {
                font-size: 2.5em;
            }

            .first-container p {
                font-size: 1.2em;
            }

            .feature {
                width: 90%;
            }
        }
    </style>
</head>
<body>

    <!-- First Container with Background Image -->
    <div class="first-container">
        <h1>Welcome to the Employee Management System</h1>
        <p>Streamline your organization's operations with ease and efficiency.</p>
    </div>

    <!-- Features Section 
    <div class="features-container">
        <div class="features">
            <div class="feature">
                <img src="/resources/images/employee_management.png" alt="Employee Management">
                <h3>Employee Management</h3>
                <p>Store and manage detailed employee records with ease.</p>
            </div>
            <div class="feature">
                <img src="/resources/images/attedance.png" alt="Attendance Tracking">
                <h3>Attendance Tracking</h3>
                <p>Keep track of employee attendance and work hours.</p>
            </div>
            <div class="feature">
                <img src="/resources/images/reports.png" alt="Reports">
                <h3>Comprehensive Reports</h3>
                <p>Generate insightful reports to analyze employee performance.</p>
            </div>
            <div class="feature">
                <img src="/resources/images/security.png" alt="Security">
                <h3>Data Security</h3>
                <p>Ensure the security and privacy of employee information.</p>
            </div>
        </div>
    </div>-->

    <%@include file="footer.jsp" %>
</body>
</html>
