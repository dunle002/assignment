<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<body>

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
    <div class="container">


    <c:choose>
        <c:when test="${mode=='modeRegister'}">
            <div class="container " style="width: 60%">

                <h3>New Register</h3>
                <hr>
                <form class="form-horizontal" method="post" action="save-user">
                    <input type="hidden" name="id" value="${user.id}"/>
                    <div class="form-group">
                        UserName
                        <div class="">
                            <input type="text" class="form-control" name="username" value="${user.username}"/>
                        </div>
                    </div>
                    <div class="form=group">
                        Password
                        <div class="">
                            <input type="password" class="form-control" name="password" value="${user.password}"/>
                        </div>
                    </div>
                    <br>
                    <hr>
                    <div class="form-group">
                        <input type="submit" class="btn btn-success" value="Register"/>
                    </div>
                </form>
            </div>
        </c:when>
        <c:when test="${mode=='allUser' }">
            <div class=" text-center" id="tasksDiv">
                <h3>All Users</h3>
                <hr>
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th>Id</th>
                            <th class="">UserName</th>
                            <th>Delete</th>
                            <th>Update</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="user" items="${users}">
                            <tr>
                                <td>${user.id}</td>
                                <td>${user.username}</td>
                                <td><a href="/delete-user?id=${user.id }">Delete</a></td>
                                <td><a href="/view-update/${user.id}">Update</a></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </c:when>

        <c:when test="${mode=='modeLogin'}">
            <div class="" >
                <br>
                <h3 style="text-align: center">Login Form</h3>
                <br>
                <form action="/login-user" method="post" class="container">
                    <c:if test="${not empty error}">
                        <div class="alert alert-danger">
                        <c:out value="${error}"></c:out>
                        </div>
                    </c:if>
                    <div class="form-outline mb-4">
                        <label class="form-label" for="form2Example1">Username</label>
                        <input type="text" id="form2Example1" value="${user.username}" name="username"
                               class="form-control"/>

                    </div>

                    <div class="form-outline mb-4">
                        <label class="form-label" for="form2Example2">Password</label>
                        <input type="password" id="form2Example2" value="${user.password}" name="password"
                               class="form-control"/>
                    </div>
                    <br>
                    <!-- Submit button -->
                    <button type="submit" class="btn btn-success btn-block mb-4">Sign in</button>
                    <br>
                </form>
            </div>
        </c:when>
    </c:choose>
    </div>
    <div class=" my-5" >
        <!-- Footer -->
        <footer style=" margin-top: 200px"
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
                <
                <!-- Right -->
            </section>
            <!-- Section: Social media -->

            <!-- Section: Links  -->
            <section class="">
                <div class=" text-center text-md-start mt-5">
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
    <!-- End of .container -->


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