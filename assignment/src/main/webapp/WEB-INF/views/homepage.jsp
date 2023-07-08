<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<body>
<style>
    .view {
        background: url("https://mdbootstrap.com/img/Photos/Others/img (51).webp")no-repeat center center;
        background-size: cover;
    }
    @media (min-width: 768px) {
        .view {
            overflow: visible;
            margin-top: -56px;
        }
    }
    .navbar {
        z-index: 1;
    }

    html,
    body,
    header,
    .view {
        height: 100%;
    }
</style>
    <div class="">
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel" >
            <div class="carousel-inner" style="height: 350px">
                <div class="carousel-item active">
                    <img class="d-block w-100" style="height: 350px" src="upload/banner-with-new-pair-of-white-sneakers-isolated-on-light-yellow-and-orange-background-sportive-pair-of-shoes-for-mockup-fashionable-stylish-sports-casual-shoes-photo.jpg" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" style="height: 350px" src="upload/banner-with-new-pair-of-white-sneakers-isolated-on-light-yellow-and-green-background-sportive-pair-of-shoes-for-mockup-fashionable-stylish-sports-casual-shoes-photo.jpg" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" style="height: 350px" src="upload/images (6).jpg" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link" href="/login">Login</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/register">NewRegister</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/show-user">AllUser</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/hien-thi">Product</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
    <div class="container" style="text-align: center;margin-top: 50px;color: red;">
        <h3>Welcome To Java5 Very Difficult</h3>
        
        <img src="data:image/png;base64,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" alt="">
    </div>
<div class=" my-5">
    <!-- Footer -->
    <footer
            class="text-center text-lg-start text-dark"
            style="background-color: #ECEFF1"
    >
        <!-- Section: Social media -->
        <section
                class="d-flex justify-content-between p-4 text-white"
                style="background-color: #21D192"
        >
            <!-- Left -->
            <div class="me-5">
                <span>Get connected with us on social networks:</span>
            </div>
            <!-- Left -->

            <!-- Right -->
            <div>
                <a href="" class="text-white me-4">
                    <i class="fab fa-facebook-f"></i>
                </a>
                <a href="" class="text-white me-4">
                    <i class="fab fa-twitter"></i>
                </a>
                <a href="" class="text-white me-4">
                    <i class="fab fa-google"></i>
                </a>
                <a href="" class="text-white me-4">
                    <i class="fab fa-instagram"></i>
                </a>
                <a href="" class="text-white me-4">
                    <i class="fab fa-linkedin"></i>
                </a>
                <a href="" class="text-white me-4">
                    <i class="fab fa-github"></i>
                </a>
            </div>
            <!-- Right -->
        </section>
        <!-- Section: Social media -->

        <!-- Section: Links  -->
        <section class="">
            <div class="container text-center text-md-start mt-5">
                <!-- Grid row -->
                <div class="row mt-3">
                    <!-- Grid column -->
                    <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
                        <!-- Content -->
                        <h6 class="text-uppercase fw-bold">Company name</h6>
                        <hr
                                class="mb-4 mt-0 d-inline-block mx-auto"
                                style="width: 60px; background-color: #7c4dff; height: 2px"
                        />
                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                        <!-- Links -->
                        <h6 class="text-uppercase fw-bold">Products</h6>
                        <hr
                                class="mb-4 mt-0 d-inline-block mx-auto"
                                style="width: 60px; background-color: #7c4dff; height: 2px"
                        />
                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                        <!-- Links -->
                        <h6 class="text-uppercase fw-bold">Useful links</h6>
                        <hr
                                class="mb-4 mt-0 d-inline-block mx-auto"
                                style="width: 60px; background-color: #7c4dff; height: 2px"
                        />

                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                        <!-- Links -->
                        <h6 class="text-uppercase fw-bold">Contact</h6>
                        <hr
                                class="mb-4 mt-0 d-inline-block mx-auto"
                                style="width: 60px; background-color: #7c4dff; height: 2px"
                        />
                    </div>
                    <!-- Grid column -->
                </div>
                <!-- Grid row -->
            </div>
        </section>
        <!-- Section: Links  -->

        <!-- Copyright -->
        <div
                class="text-center p-3"
                style="background-color: rgba(0, 0, 0, 0.2)"
        >
            © 2020 Copyright:
            <a class="text-dark" href="https://mdbootstrap.com/"
            >MDBootstrap.com</a
            >
        </div>
        <!-- Copyright -->
    </footer>
    <!-- Footer -->
</div>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
</body>
</html>