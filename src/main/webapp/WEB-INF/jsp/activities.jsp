<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@page contentType="text/html" pageEncoding="x-iso-8859-11"%>

<!DOCTYPE html>
<c:set var="contextPath" value="${pageContext.request.contextPath}" /><html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Moric-Yacht Booking HTML5 Template</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${contextPath}/resources/css/bootstrap/bootstrap.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/bootstrap/bootstrap-grid.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/bootstrap/bootstrap-reboot.css">

    <!-- Favicon -->
    <link rel="shortcut icon" href="${contextPath}/resources/images/favicon.ico" />

    <!-- Fontawesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

    <!-- Google font -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custome CSS -->
    <link rel="stylesheet" href="${contextPath}/resources/css/custome/style.css">

    <!-- Responsive CSS -->
    <link rel="stylesheet" href="${contextPath}/resources/css/custome/responsive.css">

</head>

<body>

    <!-- Nav Bar Starts here -->
    <div class="site-mobile-menu site-navbar-target">
        <div class="site-mobile-menu-header">
          <div class="site-mobile-menu-close mt-3">
            <span class="icofont-close fas fa-times js-menu-toggle"></span>
          </div>
        </div>
        <div class="site-mobile-menu-body"></div>
      </div>
  
      <header class="site-navbar js-sticky-header site-navbar-target">
  
        <div class="container">
          <div class="row align-items-center">
  
            <div class="col-6 col-lg-2">
              <a href="#" class="company-logo">
                  <img src="${contextPath}/resources/images/company_logo.png" alt="">
              </a>
            </div>
  
            <div class="col-12 col-md-10 d-none d-lg-block">
                <nav class="site-navigation position-relative text-right">
                        <ul class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">
                            <li class="has-children">
                                <a class="nav-link">Home</a>
                                <ul class="dropdown">
                                    <li><a href="${contextPath}/" class="nav-link">Home</a></li>
                                </ul>
                            <li class="has-children">
                                <a class="nav-link">About</a>
                                <ul class="dropdown">
                                    <li><a href="${contextPath}/about" class="nav-link">About Us</a></li>
                                </ul>
                            </li>
                            <li><a href="${contextPath}/services" class="nav-link active">Services</a></li>
                            <li><a href="${contextPath}/contact" class="nav-link">Contact</a></li>
                        </ul>
                </nav>
            </div>
  
  
            <div class="col-6 d-inline-block d-lg-none ml-md-0 py-3" style="position: relative; top: 3px;">
  
              <a href="#" class="burger site-menu-toggle js-menu-toggle" data-toggle="collapse"
                data-target="#main-navbar">
                <span></span>
              </a>
            </div>
  
          </div>
        </div>
  
      </header>
    <!-- Nav Bar Ends here -->

    <!-- Hero image starts here -->
    <section class="hero-activity">
        <div class="container-fluid">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="hero-text">
                            <h5>Exciting Activities</h5>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero image ends here -->

    <!-- Activities Section Starts here -->
    <section>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 m-auto text-center">

                    <div class="title pb-3">
                        <h2><span>Enjoy</span>Activities</h2>
                    </div>
                </div>
            </div>
        </div>

        <!-- Single Yacht -->

        <div class="container">
            <div class="row activity-sec">

                <div class="col-xl-6 col-lg-6 col-md-12">
                    <div class="act-img">
                        <img class="img-fluid" src="${contextPath}/resources/images/activity_1.jpg" alt="">
                    </div>
                </div>

                <div class="col-xl-6 col-lg-6 col-md-12">
                    <div class="act-head">
                        <h3>Luxury Cruising</h3>
                        <p>The once in a while experience of a luxury ship cruise combined with energetic services and luxurious amenities.</p>
                    </div>
                </div>

            </div>

            <div class="act-text">
                <div class="row">
                    <div class=" col-xl-6 col-lg-6 col-md-6">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
                    </div>

                    <div class=" col-xl-6 col-lg-6 col-md-6">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit.</p>
                    </div>

                </div>

            </div>

        </div>

        <!-- Single Yacht -->
    </section>

    <!-- Single Yacht Full Width -->
    <section>
        <div class="container-fluid">
            <div class="row">

                <div class=" col-xl-7 col-lg-7 order-lg-2 col-md-12 order-md-1 order-sm-1 p-0 ">
                    <div class="act-full-img">
                        <img class="img-fluid" src="${contextPath}/resources/images/activity_2.jpg" alt="">
                    </div>
                </div>

                <div class=" col-xl-5 col-lg-5 order-lg-1 col-md-12 order-md-2 order-sm-2 act-full-width">

                    <h3>Dolphin Watching
                <span>Having an experience as unique and memorable as dolphin watching.</span>
              </h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
                </div>

            </div>
        </div>
    </section>
    <!-- Single Yacht Full Width -->

    <!-- Single Yacht -->
    <section>
        <div class="container">
            <div class="row activity-sec">

                <div class="col-xl-6 col-lg-6 col-md-12">
                    <div class="act-img">
                        <img class="img-fluid" src="${contextPath}/resources/images/activity_3.jpg" alt="">
                    </div>
                </div>

                <div class="col-xl-6 col-lg-6 col-md-12">
                    <div class="act-head">
                        <h3>Fishing</h3>
                        <p>The once in a while experience of a Fishing cruise combined with energetic company and good amenities.</p>
                    </div>

                </div>

            </div>

            <div class="row act-text">
                <div class=" col-xl-6 col-lg-6 col-md-6">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
                </div>

                <div class=" col-xl-6 col-lg-6 col-md-6">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
                </div>
            </div>

        </div>

    </section>
    <!-- Single Yacht -->

    <!-- Single Yacht Full Width -->
    <section class="mar-bot">
        <div class="container-fluid">
            <div class="row">

                <div class=" col-xl-7 col-lg-7 order-lg-2 col-md-12 order-md-1 order-sm-2 p-0 ">
                    <div class="act-full-img">
                        <img class="img-fluid" src="${contextPath}/resources/images/activity_4.jpg" alt="">
                    </div>
                </div>

                <div class=" col-xl-5 col-lg-5 order-lg-1 col-md-12 order-md-2 order-sm-1 act-full-width">

                    <h3>Stag / Hen Parties
                <span>Having an experience as unique and memorable Hen Parties.</span>
              </h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
                </div>

            </div>
        </div>
    </section>
    <!-- Single Yacht Full Width -->

    <!-- Activities Section ends here -->

    <!-- Footer starts here -->
    <section id="footer-sec">
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="footer-col">
                            <h5>Activities</h5>
                            <ul>
                                <li><a href="${contextPath}/activities">Luxury Cruising</a></li>
                                <li><a href="${contextPath}/activities">Dolphin Watching</a></li>
                                <li><a href="${contextPath}/activities">Fishing</a></li>
                                <li><a href="${contextPath}/activities">Stag / Hen Parties</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="footer-col">
                            <div class="footer-contact">
                                <h5>Contact Us</h5>
                                <ul>
                                    <li><i class="fas fa-map-marker-alt mt-2"></i>
                                        <p>2079 Settlers Lane, lorem ipsum - 56478354</p>
                                    </li>
                                    <li><i class="fas fa-envelope mt-1"></i>
                                        <p>email@example.com</p>
                                    </li>
                                    <li><i class="fas fa-phone mt-1"></i>
                                        <p>+54 192 45 78 621 / 622 / 623</p>
                                    </li>
                                </ul>
                            </div>

                            <div class="footer-social mt-4">
                                <h6>We are social</h6>
                                <ul>
                                    <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                    <li><a href="#"><i class="fab fa-youtube"></i></a></li>
                                    <li><a href="#"><i class="fab fa-behance"></i></a></li>
                                </ul>
                            </div>

                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="footer-col">
                            <div class="footer-partner">
                                <h5>Business Partner</h5>
                                <figure><img src="${contextPath}/resources/images/partner_logo_1.jpg" alt=""></figure>
                                <p>Our huge list of partner market is lorem ipsum dolor sit consectetur amet, adipisicing elit. Suscipit, incidunt vero quod numquam tempore quia ipsa.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container-fluid footer-copy">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-12">
                            <p>Copyright © 2020 Moric. All rights reserved.</p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </section>
    <!-- Footer ends here -->

    <!-- Bootstrap JavaScript -->

    <!-- jQuery library -->
    <script src="${contextPath}/resources/js/bootstrap/jquery.min.js"></script>

    <!-- Popper JS -->
    <script src="${contextPath}/resources/js/bootstrap/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="${contextPath}/resources/js/bootstrap/bootstrap.min.js"></script>

    <!-- JavaScript Libraries -->
    <script src="${contextPath}/resources/js/counterup/jquery.counterup.js"></script>

    <!-- Sticky Navbar Javascript File -->
    <script src="${contextPath}/resources/js/easing/easing.min.js"></script>
    <script src="${contextPath}/resources/js/sticky/sticky.js"></script>
    <script src="${contextPath}/resources/js/main/main.js"></script>

    <!-- Jquery CDN -->
    <script src="${contextPath}/resources/js/jquery/jquery-2.2.4.js"></script>

</body>

</html>