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
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                <script>
                    $(document).ready(() => {
                        const productImgFile = $("#productImgFile");
                        const orgImage = "${currentProduct.image}"
                        if (orgImage) {
                            const urlImg = "/image/product" + orgImage;
                            $("imgPreview").attr("src", urlImg)
                            $("#imgPreview").css({ "display": "block" });
                        }

                        productImgFile.change(function (e) {
                            const imgURL = URL.createObjectURL(e.target.files[0]);
                            $("#imgPreview").attr("src", imgURL);
                            $("#imgPreview").css({ "display": "block" });
                        });
                    });
                </script>
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
                                        <div class="col-md-6 col-12 mx-auto">
                                            <a href="/admin/product" class="btn btn-outline-secondary"><i
                                                    class="fa-solid fa-caret-left fa-xl"></i></a>
                                            <h1 class="text-center">Update information</h1>
                                            <%--@elvariable id="currentUser" type="" --%>
                                                <form:form action="/admin/product/update" method="post"
                                                    modelAttribute="currentProduct" class="row"
                                                    enctype="multipart/form-data">
                                                    <div class="mb-3 d-none">
                                                        <label class="form-label">ID:</label>
                                                        <form:input type="text" class="form-control" path="id" />
                                                    </div>
                                                    <div class="mb-3 col-12 col-md-6">
                                                        <c:set var="nameError">
                                                            <form:errors path="name" cssClass="invalid-feedback" />
                                                        </c:set>
                                                        <label class="form-label">Name:</label>
                                                        <form:input type="text"
                                                            class="form-control ${not empty nameError ? 'is-invalid' : '' }"
                                                            path="name" />
                                                        ${nameError}
                                                    </div>
                                                    <div class="mb-3 col-12 col-md-6">
                                                        <c:set var="priceError">
                                                            <form:errors path="price" cssClass="invalid-feedback" />
                                                        </c:set>
                                                        <label class="form-label">Price:</label>
                                                        <form:input type="number"
                                                            class="form-control ${not empty priceError ? 'is-invalid' : '' }"
                                                            path="price" />
                                                        ${priceError}
                                                    </div>
                                                    <div class="mb-3">
                                                        <c:set var="detailDescError">
                                                            <form:errors path="detailDesc"
                                                                cssClass="invalid-feedback" />
                                                        </c:set>
                                                        <label class="form-label">Detail description:</label>
                                                        <form:textarea type="text"
                                                            class="form-control ${not empty detailDescError ? 'is-invalid' : '' }"
                                                            path="detailDesc" />
                                                        ${detailDescError}
                                                    </div>
                                                    <div class="mb-3 col-12 col-md-6">
                                                        <c:set var="shortDescError">
                                                            <form:errors path="shortDesc" cssClass="invalid-feedback" />
                                                        </c:set>
                                                        <label class="form-label">Short description:</label>
                                                        <form:input type="text"
                                                            class="form-control ${not empty shortDescError ? 'is-invalid' : '' }"
                                                            path="shortDesc" />
                                                        ${shortDescError}
                                                    </div>
                                                    <div class="mb-3 col-12 col-md-6">
                                                        <c:set var="quantityError">
                                                            <form:errors path="quantity" cssClass="invalid-feedback" />
                                                        </c:set>
                                                        <label class="form-label">Quantity:</label>
                                                        <form:input type="number"
                                                            class="form-control ${not empty quantityError ? 'is-invalid' : '' }"
                                                            path="quantity" />
                                                        ${quantityError}
                                                    </div>
                                                    <div class="mb-3 col-12 col-md-6">
                                                        <label class="form-label">Factory:</label>
                                                        <form:select class="form-select" path="factory">
                                                            <option <c:out
                                                                value="${currentProduct.factory == 'Apple' ? 'selected' : ''}" />
                                                            value="Apple"> Apple</option>
                                                            <option <c:out
                                                                value="${currentProduct.factory == 'Samsung' ? 'selected' : ''}" />
                                                            value="Samsung">Samsung</option>
                                                            <option <c:out
                                                                value="${currentProduct.factory == 'Xiaomi' ? 'selected' : ''}" />
                                                            value="Xiaomi">Xiaomi</option>
                                                            <option <c:out
                                                                value="${currentProduct.factory == 'Oppo' ? 'selected' : ''}" />
                                                            value="Oppo">Oppo</option>
                                                            <option <c:out
                                                                value="${currentProduct.factory == 'Google' ? 'selected' : ''}" />
                                                            value="Google">Google</option>
                                                            <option <c:out
                                                                value="${currentProduct.factory == 'Oneplus' ? 'selected' : ''}" />
                                                            value="Oneplus">Oneplus</option>
                                                            <option <c:out
                                                                value="${currentProduct.factory == 'Realme' ? 'selected' : ''}" />
                                                            value="Realme">Realme</option>
                                                            <option <c:out
                                                                value="${currentProduct.factory == 'Vivo' ? 'selected' : ''}" />
                                                            value="Vivo">Vivo</option>
                                                            <option <c:out
                                                                value="${currentProduct.factory == 'Nokia' ? 'selected' : ''}" />
                                                            value="Nokia">Nokia</option>
                                                            <option <c:out
                                                                value="${currentProduct.factory == 'Sony' ? 'selected' : ''}" />
                                                            value="Sony">Sony</option>
                                                        </form:select>
                                                    </div>
                                                    <div class="mb-3 col-12 col-md-6">
                                                        <label class="form-label">Target:</label>
                                                        <form:select class="form-select" path="target">
                                                            <option <c:out
                                                                value="${currentProduct.target == 'Chơi game' ? 'selected' : ''}" />
                                                            value="Chơi game">Chơi game</option>
                                                            <option <c:out
                                                                value="${currentProduct.target == 'Chụp ảnh' ? 'selected' : ''}" />
                                                            value="Chụp ảnh">Chụp ảnh</option>
                                                            <option <c:out
                                                                value="${currentProduct.target == 'Pin trâu' ? 'selected' : ''}" />
                                                            value="Pin trâu">Pin trâu</option>
                                                            <option <c:out
                                                                value="${currentProduct.target == 'Dung lượng lớn' ? 'selected' : ''}" />
                                                            value="Dung lượng lớn">Dung lượng lớn</option>
                                                            <option <c:out
                                                                value="${currentProduct.target == 'Nhỏ gọn' ? 'selected' : ''}" />
                                                            value="Nhỏ gọn">Nhỏ gọn</option>
                                                        </form:select>
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="productImgFile" class="form-label">Image:</label>
                                                        <input class="form-control" type="file" id="productImgFile"
                                                            accept=".png, .jpg, .jpeg" name="productImgFile" />
                                                    </div>
                                                    <div class="col-12 mb-3" style="max-width: 80%;">
                                                        <img src="/images/product/${currentProduct.image}"
                                                            style="display:none; width: 100%;" alt="image preview"
                                                            id="imgPreview" />
                                                    </div>
                                                    <div class="mb-3">
                                                        <button type="submit"
                                                            class="btn btn-warning form-control">Save</button>
                                                    </div>
                                                </form:form>
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