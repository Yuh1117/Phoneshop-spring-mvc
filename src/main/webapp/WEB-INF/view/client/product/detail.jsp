<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8">
                <title>Detail Product</title>
                <meta content="width=device-width, initial-scale=1.0" name="viewport">
                <meta content="" name="keywords">
                <meta content="" name="description">

                <!-- Google Web Fonts -->
                <link href='https://fonts.googleapis.com/css?family=Be Vietnam Pro' rel='stylesheet'>

                <!-- Icon Font Stylesheet -->
                <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
                <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
                    rel="stylesheet">

                <!-- Libraries Stylesheet -->
                <link href="/client/lib/lightbox/css/lightbox.min.css" rel="stylesheet">
                <link href="/client/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


                <!-- Customized Bootstrap Stylesheet -->
                <link href="/client/css/bootstrap.min.css" rel="stylesheet">

                <!-- Template Stylesheet -->
                <link href="/client/css/style.css" rel="stylesheet">
            </head>

            <body>

                <!-- Spinner Start -->
                <div id="spinner"
                    class="show w-100 vh-100 bg-white position-fixed translate-middle top-50 start-50  d-flex align-items-center justify-content-center">
                    <div class="spinner-grow text-primary" role="status"></div>
                </div>
                <!-- Spinner End -->


                <jsp:include page="../layout/header.jsp" />


                <!-- Modal Search Start -->
                <div class="modal fade" id="searchModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                    aria-hidden="true">
                    <div class="modal-dialog modal-fullscreen">
                        <div class="modal-content rounded-0">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Search by keyword</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <div class="modal-body d-flex align-items-center">
                                <div class="input-group w-75 mx-auto d-flex">
                                    <input type="search" class="form-control p-3" placeholder="keywords"
                                        aria-describedby="search-icon-1">
                                    <span id="search-icon-1" class="input-group-text p-3"><i
                                            class="fa fa-search"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Modal Search End -->


                <!-- Single Page Header start -->
                <div class="container-fluid page-header py-5">
                    <h1 class="text-center display-6" style="color: #3d5a80;">Sản phẩm</h1>
                </div>
                <!-- Single Page Header End -->


                <!-- Single Product Start -->
                <div class="container-fluid py-5 mt-5">
                    <div class="container">
                        <div class="row g-4 mb-5">
                            <div class="col-lg-8 col-xl-9">
                                <div class="row g-4">
                                    <div class="col-lg-6">
                                        <div class="border rounded">
                                            <a href="#">
                                                <img src="/client/img/fruite-item-1.jpg" class="img-fluid rounded"
                                                    alt="Image">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <h4 class="fw-bold mb-3">Iphone 16 Promax</h4>
                                        <p class="mb-3">Loại: Điện thoại</p>
                                        <h5 class="fw-bold mb-3">999$</h5>
                                        <div class="d-flex mb-4">
                                            <i class="fa fa-star text-secondary"></i>
                                            <i class="fa fa-star text-secondary"></i>
                                            <i class="fa fa-star text-secondary"></i>
                                            <i class="fa fa-star text-secondary"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                        <p class="mb-4">The generated Lorem Ipsum is therefore always free from
                                            repetition injected
                                            humour, or non-characteristic words etc.</p>
                                        <p class="mb-4">Susp endisse ultricies nisi vel quam suscipit. Sabertooth
                                            peacock flounder;
                                            chain pickerel hatchetfish, pencilfish snailfish</p>
                                        <div class="input-group quantity mb-5" style="width: 100px;">
                                            <div class="input-group-btn">
                                                <button class="btn btn-sm btn-minus rounded-circle bg-light border">
                                                    <i class="fa fa-minus"></i>
                                                </button>
                                            </div>
                                            <input type="text" class="form-control form-control-sm text-center border-0"
                                                value="1">
                                            <div class="input-group-btn">
                                                <button class="btn btn-sm btn-plus rounded-circle bg-light border">
                                                    <i class="fa fa-plus"></i>
                                                </button>
                                            </div>
                                        </div>
                                        <a href="#"
                                            class="btn border border-secondary rounded-pill px-4 py-2 mb-4 text-primary"><i
                                                class="fa fa-shopping-bag me-2 text-primary"></i> Thêm vào giỏ</a>
                                    </div>
                                    <div class="col-lg-12">
                                        <nav>
                                            <div class="nav nav-tabs mb-3">
                                                <button class="nav-link active border-white border-bottom-0"
                                                    type="button" role="tab" id="nav-about-tab" data-bs-toggle="tab"
                                                    data-bs-target="#nav-about" aria-controls="nav-about"
                                                    aria-selected="true">Mô tả</button>
                                                <button class="nav-link border-white border-bottom-0" type="button"
                                                    role="tab" id="nav-mission-tab" data-bs-toggle="tab"
                                                    data-bs-target="#nav-mission" aria-controls="nav-mission"
                                                    aria-selected="false">Đánh giá</button>
                                            </div>
                                        </nav>
                                        <div class="tab-content mb-5">
                                            <div class="tab-pane active" id="nav-about" role="tabpanel"
                                                aria-labelledby="nav-about-tab">
                                                <p>The generated Lorem Ipsum is therefore always free from repetition
                                                    injected
                                                    humour, or non-characteristic words etc.
                                                    Susp endisse ultricies nisi vel quam suscipit </p>
                                                <p>Sabertooth peacock flounder; chain pickerel hatchetfish, pencilfish
                                                    snailfish
                                                    filefish Antarctic
                                                    icefish goldeye aholehole trumpetfish pilot fish airbreathing
                                                    catfish, electric
                                                    ray sweeper.</p>
                                                <div class="px-2">
                                                    <div class="row g-4">
                                                        <div class="col-6">
                                                            <div
                                                                class="row bg-light align-items-center text-center justify-content-center py-2">
                                                                <div class="col-6">
                                                                    <p class="mb-0">Weight</p>
                                                                </div>
                                                                <div class="col-6">
                                                                    <p class="mb-0">1 kg</p>
                                                                </div>
                                                            </div>
                                                            <div
                                                                class="row text-center align-items-center justify-content-center py-2">
                                                                <div class="col-6">
                                                                    <p class="mb-0">Country of Origin</p>
                                                                </div>
                                                                <div class="col-6">
                                                                    <p class="mb-0">Agro Farm</p>
                                                                </div>
                                                            </div>
                                                            <div
                                                                class="row bg-light text-center align-items-center justify-content-center py-2">
                                                                <div class="col-6">
                                                                    <p class="mb-0">Quality</p>
                                                                </div>
                                                                <div class="col-6">
                                                                    <p class="mb-0">Organic</p>
                                                                </div>
                                                            </div>
                                                            <div
                                                                class="row text-center align-items-center justify-content-center py-2">
                                                                <div class="col-6">
                                                                    <p class="mb-0">Сheck</p>
                                                                </div>
                                                                <div class="col-6">
                                                                    <p class="mb-0">Healthy</p>
                                                                </div>
                                                            </div>
                                                            <div
                                                                class="row bg-light text-center align-items-center justify-content-center py-2">
                                                                <div class="col-6">
                                                                    <p class="mb-0">Min Weight</p>
                                                                </div>
                                                                <div class="col-6">
                                                                    <p class="mb-0">250 Kg</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tab-pane" id="nav-mission" role="tabpanel"
                                                aria-labelledby="nav-mission-tab">
                                                <div class="d-flex">
                                                    <img src="/client/img/avatar.jpg"
                                                        class="img-fluid rounded-circle p-3"
                                                        style="width: 100px; height: 100px;" alt="">
                                                    <div class="">
                                                        <p class="mb-2" style="font-size: 14px;">April 12, 2024</p>
                                                        <div class="d-flex justify-content-between">
                                                            <h5>Jason Smith</h5>
                                                            <div class="d-flex mb-3">
                                                                <i class="fa fa-star text-secondary"></i>
                                                                <i class="fa fa-star text-secondary"></i>
                                                                <i class="fa fa-star text-secondary"></i>
                                                                <i class="fa fa-star text-secondary"></i>
                                                                <i class="fa fa-star"></i>
                                                            </div>
                                                        </div>
                                                        <p>The generated Lorem Ipsum is therefore always free from
                                                            repetition
                                                            injected humour, or non-characteristic
                                                            words etc. Susp endisse ultricies nisi vel quam suscipit
                                                        </p>
                                                    </div>
                                                </div>
                                                <div class="d-flex">
                                                    <img src="/client/img/avatar.jpg"
                                                        class="img-fluid rounded-circle p-3"
                                                        style="width: 100px; height: 100px;" alt="">
                                                    <div class="">
                                                        <p class="mb-2" style="font-size: 14px;">April 12, 2024</p>
                                                        <div class="d-flex justify-content-between">
                                                            <h5>Sam Peters</h5>
                                                            <div class="d-flex mb-3">
                                                                <i class="fa fa-star text-secondary"></i>
                                                                <i class="fa fa-star text-secondary"></i>
                                                                <i class="fa fa-star text-secondary"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                            </div>
                                                        </div>
                                                        <p class="text-dark">The generated Lorem Ipsum is therefore
                                                            always free from
                                                            repetition injected humour, or non-characteristic
                                                            words etc. Susp endisse ultricies nisi vel quam suscipit
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tab-pane" id="nav-vision" role="tabpanel">
                                                <p class="text-dark">Tempor erat elitr rebum at clita. Diam dolor diam
                                                    ipsum et
                                                    tempor sit. Aliqu diam
                                                    amet diam et eos labore. 3</p>
                                                <p class="mb-0">Diam dolor diam ipsum et tempor sit. Aliqu diam amet
                                                    diam et eos
                                                    labore.
                                                    Clita erat ipsum et lorem et sit</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-xl-3">
                                <div class="row g-4 fruite">
                                    <div class="col-lg-12">
                                        <div class="mb-4">
                                            <h4>Danh mục</h4>
                                            <ul class="list-unstyled fruite-categorie">
                                                <li>
                                                    <div class="d-flex justify-content-between fruite-name">
                                                        <a href="#"><i class="fas fa-apple-alt me-2"></i>Apples</a>
                                                        <span>(3)</span>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="d-flex justify-content-between fruite-name">
                                                        <a href="#"><i class="fas fa-apple-alt me-2"></i>Oranges</a>
                                                        <span>(5)</span>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="d-flex justify-content-between fruite-name">
                                                        <a href="#"><i class="fas fa-apple-alt me-2"></i>Strawbery</a>
                                                        <span>(2)</span>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="d-flex justify-content-between fruite-name">
                                                        <a href="#"><i class="fas fa-apple-alt me-2"></i>Banana</a>
                                                        <span>(8)</span>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="d-flex justify-content-between fruite-name">
                                                        <a href="#"><i class="fas fa-apple-alt me-2"></i>Pumpkin</a>
                                                        <span>(5)</span>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>             
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Single Product End -->


                <jsp:include page="../layout/footer.jsp" />


                <!-- Back to Top -->
                <a href="#" class="btn btn-primary border-3 border-primary rounded-circle back-to-top text-white"><i
                        class="fa fa-arrow-up"></i></a>


                <!-- JavaScript Libraries -->
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
                <script src="/client/lib/easing/easing.min.js"></script>
                <script src="/client/lib/waypoints/waypoints.min.js"></script>
                <script src="/client/lib/lightbox/js/lightbox.min.js"></script>
                <script src="/client/lib/owlcarousel/owl.carousel.min.js"></script>

                <!-- Template Javascript -->
                <script src="/client/js/main.js"></script>
            </body>

            </html>