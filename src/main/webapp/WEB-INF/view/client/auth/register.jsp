<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="" />
                <meta name="author" content="" />
                <title>Đăng ký tài khoản</title>
                <link href="css/styles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
            </head>

            <body class="bg-light">
                <div id="layoutAuthentication">
                    <div id="layoutAuthentication_content">
                        <main>
                            <div class="container">
                                <div class="row justify-content-center">
                                    <div class="col-lg-7">
                                        <div class="card mt-5 shadow">
                                            <div class="card-header">
                                                <h3 class="text-center font-weight-light my-4">Tạo tài khoản</h3>
                                            </div>
                                            <div class="card-body">
                                                <form:form action="/register" method="post"
                                                    modelAttribute="registerUser">
                                                    <div class="row mb-3">
                                                        <div class="col-md-6">
                                                            <div class="form-floating">
                                                                <form:input class="form-control" id="inputLastName"
                                                                    type="text" placeholder="Enter your last name"
                                                                    path="lastName" />
                                                                <label for="inputLastName">Họ</label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-floating mb-3 mb-md-0">
                                                                <form:input class="form-control" id="inputFirstName"
                                                                    type="text" placeholder="Enter your first name"
                                                                    path="firstName" />
                                                                <label for="inputFirstName">Tên</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-floating mb-3">
                                                        <form:input class="form-control" id="inputEmail" type="email"
                                                            placeholder="name@example.com" path="email" />
                                                        <label for="inputEmail">Email </label>
                                                    </div>
                                                    <div class="row mb-3">
                                                        <div class="col-md-6">
                                                            <div class="form-floating mb-3 mb-md-0">
                                                                <form:input class="form-control" id="inputPassword"
                                                                    type="password" placeholder="Create a password"
                                                                    path="password" />
                                                                <label for="inputPassword">Mật khẩu</label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-floating mb-3 mb-md-0">
                                                                <form:input class="form-control"
                                                                    id="inputPasswordConfirm" type="password"
                                                                    placeholder="Confirm password"
                                                                    path="confirmPassword" />
                                                                <label for="inputPasswordConfirm">Nhập lại mật
                                                                    khẩu</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="mt-4 mb-0">
                                                        <button type="submit"
                                                            class="btn btn-primary btn-block form-control">Tạo tài
                                                            khoản</button>
                                                    </div>
                                                </form:form>
                                            </div>
                                            <div class="card-footer text-center py-3">
                                                <div class="small"><a href="login.html">Bạn đã có tài khoản? Đăng
                                                        nhập</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </main>
                    </div>
                </div>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                    crossorigin="anonymous"></script>
                <script src="js/scripts.js"></script>
            </body>

            </html>