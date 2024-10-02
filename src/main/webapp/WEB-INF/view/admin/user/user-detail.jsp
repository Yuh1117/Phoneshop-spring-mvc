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
                            <a href="/admin/user" class="btn btn-secondary">Back</a>
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
                                            <span class="fw-medium">FullName:</span> ${user.fullName}
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