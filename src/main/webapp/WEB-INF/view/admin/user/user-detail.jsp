<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>User Detail ${user.id}</title>
                <!-- Latest compiled and minified CSS -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
                <!-- Latest compiled JavaScript -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                <!-- <link href="/css/demo.css" rel="stylesheet"> -->
            </head>

            <body class="bg-body-tertiary">
                <div class="container mt-5">
                    <div class="row">
                        <div class="col-12 mx-auto">
                            <a href="/admin/user" class="btn btn-outline-secondary"><svg
                                    xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                    class="bi bi-caret-left-fill" viewBox="0 0 16 16">
                                    <path
                                        d="m3.86 8.753 5.482 4.796c.646.566 1.658.106 1.658-.753V3.204a1 1 0 0 0-1.659-.753l-5.48 4.796a1 1 0 0 0 0 1.506z" />
                                </svg></a>
                            <div class="card rounded-5 my-3">
                                <div class="card-header fs-2 fw-medium rounded-top-5 text-center">
                                    User information
                                </div>
                                <div>
                                    <ul class="list-group list-group-flush p-3">
                                        <li class="list-group-item">
                                            <span class="fw-medium">ID:</span> ${user.id}
                                        </li>
                                        <li class="list-group-item">
                                            <span class="fw-medium">Email:</span> ${user.email}
                                        </li>
                                        <li class="list-group-item">
                                            <span class="fw-medium">Full Name:</span> ${user.fullName}
                                        </li>
                                        <li class="list-group-item">
                                            <span class="fw-medium">Phone:</span> ${user.phone}
                                        </li>
                                        <li class="list-group-item">
                                            <span class="fw-medium">Address:</span> ${user.address}
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </body>

            </html>