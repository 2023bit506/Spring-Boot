<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Footer</title>
    <style>
        /* Footer CSS */
        .bg-footer {
            background-color: #33383c;
            padding: 50px 0 30px;
        }

        .footer-heading {
            letter-spacing: 2px;
            font-size: 18px; /* Increased text size for headings */
            position: relative;
            padding-bottom: 12px;
        }

        .footer-heading:after {
            content: '';
            width: 25px;
            border-bottom: 2px solid #1bbc9b; /* Made line more visible */
            position: absolute;
            left: 0;
            bottom: 0;
            display: block;
        }

        .footer-link a {
            color: #acacac;
            line-height: 40px;
            font-size: 16px; /* Increased text size for links */
            transition: all 0.5s;
        }

        .footer-link a:hover {
            color: #1bbc9b;
        }

        .contact-info {
            color: #acacac;
            font-size: 16px; /* Increased text size for contact info */
        }

        .footer-social-icon {
            font-size: 18px; /* Increased icon size */
            height: 40px; /* Increased height */
            width: 40px; /* Increased width */
            line-height: 40px;
            border-radius: 3px;
            text-align: center;
            display: inline-block;
        }

        .facebook {
            background-color: #4e71a8;
            color: #ffffff;
        }

        .twitter {
            background-color: #55acee;
            color: #ffffff;
        }

        .google {
            background-color: #d6492f;
            color: #ffffff;
        }

        .apple {
            background-color: #424041;
            color: #ffffff;
        }

        .footer-alt {
            color: #acacac;
            font-size: 16px; /* Increased text size for footer note */
        }

        @media (max-width: 767px) {
            .footer-link a {
                line-height: 30px;
                font-size: 14px; /* Adjust text size for smaller screens */
            }

            .contact-info {
                font-size: 14px; /* Adjust text size for smaller screens */
            }

            .footer-social-icon {
                font-size: 16px; /* Adjust icon size for smaller screens */
                height: 36px;
                width: 36px;
            }
        }
    </style>
</head>
<body>
    <footer class="section bg-footer">
        <div class="container">
            <div class="row">
                <!-- Information Column -->
                <div class="col-lg-3 col-md-6">
                    <div class="">
                        <h6 class="footer-heading text-uppercase text-white">Information</h6>
                        <ul class="list-unstyled footer-link mt-4">
                            <li><a href="homePage">Home</a></li>
                            <li><a href="addEmployees">Add Employee</a></li>
                            <li><a href="getAllEmployees">List Of Employees</a></li>
                            <li><a href="getEmployeeById?eid=<%= session.getAttribute("id") %>&msg=null">Profile (<%= session.getAttribute("username") %>)</a></li>
                        </ul>
                    </div>
                </div>

                <!-- Resources Column -->
                <div class="col-lg-3 col-md-6">
                    <div class="">
                        <h6 class="footer-heading text-uppercase text-white">Resources</h6>
                        <ul class="list-unstyled footer-link mt-4">
                            <li><a href="">Monitoring Grader</a></li>
                            <li><a href="">Video Tutorial</a></li>
                            <li><a href="">Terms & Service</a></li>
                            <li><a href="">Zeeko API</a></li>
                        </ul>
                    </div>
                </div>

                <!-- Help Column -->
                <div class="col-lg-2 col-md-6">
                    <div class="">
                        <h6 class="footer-heading text-uppercase text-white">Help</h6>
                        <ul class="list-unstyled footer-link mt-4">
                            <li><a href="">Sign Up</a></li>
                            <li><a href="">Login</a></li>
                            <li><a href="">Terms of Services</a></li>
                            <li><a href="">Privacy Policy</a></li>
                        </ul>
                    </div>
                </div>

                <!-- Contact Us Column -->
                <div class="col-lg-4 col-md-6">
                    <div class="">
                        <h6 class="footer-heading text-uppercase text-white">Contact Us</h6>
                        <p class="contact-info mt-4">Contact us if you need help with anything</p>
                        <p class="contact-info">+9322305911</p>
                        <div class="mt-5">
                            <ul class="list-inline">
                                <li class="list-inline-item"><a href="#"><i class="fab facebook footer-social-icon fa-facebook-f"></i></a></li>
                                <li class="list-inline-item"><a href="#"><i class="fab twitter footer-social-icon fa-twitter"></i></a></li>
                                <li class="list-inline-item"><a href="#"><i class="fab google footer-social-icon fa-google"></i></a></li>
                                <li class="list-inline-item"><a href="#"><i class="fab apple footer-social-icon fa-apple"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="text-center mt-5">
            <p class="footer-alt mb-0 f-14">2025 © Shubham Pawar, All Rights Reserved</p>
        </div>
    </footer>
</body>
</html>
