<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <title>Manage Products</title>
                <link href="/css/styles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
            </head>

            <body class="sb-nav-fixed">
                <jsp:include page="../layout/header.jsp" />
                <div id="layoutSidenav">
                    <jsp:include page="../layout/sidebar.jsp" />
                    <div id="layoutSidenav_content" class="bg-light">
                        <main>
                            <div class="container-fluid px-4">
                                <h1 class="mt-4">Manage Products</h1>
                                <ol class="breadcrumb mb-4">
                                    <li class="breadcrumb-item active"><a href="/admin">Dashboard</a></li>
                                    <li class="breadcrumb-item active">Product</li>
                                </ol>
                                <div class="container mt-5">
                                    <div class="row">
                                        <div class="col-12 mx-auto">
                                            <a href="/admin/product" class="btn btn-outline-secondary"><i
                                                    class="fa-solid fa-caret-left fa-xl"></i></a>
                                            <div class="card rounded-5 my-3">
                                                <div class="card-header fs-2 fw-medium rounded-top-5 text-center">
                                                    Product information
                                                </div>
                                                <div>
                                                    <ul class="list-group list-group-flush p-3">
                                                        <li class="list-group-item">
                                                            <span class="fw-medium">ID:</span> ${product.id}
                                                        </li>
                                                        <li class="list-group-item">
                                                            <span class="fw-medium">Name:</span> ${product.name}
                                                        </li>
                                                        <li class="list-group-item">
                                                            <span class="fw-medium">Price:</span> ${product.price}
                                                        </li>
                                                        <li class="list-group-item">
                                                            <span class="fw-medium">Detail description:</span> ${product.detailDesc}
                                                        </li>
                                                        <li class="list-group-item">
                                                            <span class="fw-medium">Shor description:</span> ${product.shortDesc}
                                                        </li>
                                                        <li class="list-group-item">
                                                            <span class="fw-medium">Quantity:</span> ${product.quantity}
                                                        </li>
                                                        <li class="list-group-item">
                                                            <span class="fw-medium">Factory:</span> ${product.factory}
                                                        </li>
                                                        <li class="list-group-item">
                                                            <span class="fw-medium">Target:</span> ${product.target}
                                                        </li>
                                                        <li class="list-group-item">
                                                            <span class="fw-medium">Image:</span>
                                                            <div>
                                                                <img src="/images/product/${product.image}" alt="Image"
                                                                    class="img-thumbnail" style="width: 20rem" />
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </main>
                        <jsp:include page="../layout/footer.jsp" />

                    </div>
                </div>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                    crossorigin="anonymous"></script>
                <script src="/js/scripts.js"></script>
            </body>

            </html>