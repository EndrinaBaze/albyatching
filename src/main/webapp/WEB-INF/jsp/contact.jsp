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
                                    <li><a href="${contextPath}/" class="nav-link">Home </a></li>
                                </ul>
                            <li class="has-children">
                                <a class="nav-link">About</a>
                                <ul class="dropdown">
                                    <li><a href="${contextPath}/about" class="nav-link">About Us</a></li>
                                </ul>
                            </li>
                            <li><a href="${contextPath}/services" class="nav-link">Services</a></li>
                            <li><a href="${contextPath}/contact" class="nav-link active">Contact</a></li>

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
    <section class="hero-contact">
        <div class="container-fluid">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="hero-text">
                            <h5>Contact Us</h5>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero image ends here -->

    <!-- Address Section Starts here -->
    <section class="mar-bot">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 m-auto text-center">

                    <div class="title pb-3">
                        <h2><span>Reach Anywhere</span> We are Multinational</h2>
                    </div>
                </div>
            </div>
        </div>

        <!-- Locations -->

        <div class="container">
            <div class="row">

                <div class="col-lg-6 col-md-12 col-sm-12">

                    <div class="country">
                        <ul>
                            <li>
                                <h6>Country - 1</h6>

                                <i class="fas fa-map-marker-alt"></i>
                                <p>2079 Settlers Lane, lorem ipsum - 56478354</p>

                            </li>
                            <li>
                                <i class="fas fa-envelope-open"></i>
                                <p><a href="#">email@example.com</a></p>
                            </li>
                            <li>
                                <i class="fas fa-phone"></i>
                                <p>+54 192 45 78 621&nbsp;/&nbsp;+54 192 45 78 622</p>
                            </li>
                        </ul>
                    </div>

                </div>

                <div class="col-lg-6 col-md-12 col-sm-12">

                    <div class="country">
                        <ul>
                            <li>
                                <h6>Country - 2</h6>

                                <i class="fas fa-map-marker-alt"></i>
                                <p>34 Oak Street, lorem ipsum, New South block</p>

                            </li>
                            <li>
                                <i class="fas fa-envelope-open"></i>
                                <p><a href="#">email@example.com</a></p>
                            </li>
                            <li>
                                <i class="fas fa-phone"></i>
                                <p>+(02) 6792 9005&nbsp;/&nbsp;+(02) 6792 9006</p>
                            </li>
                        </ul>
                    </div>

                </div>

                <div class="col-lg-6 col-md-12 col-sm-12 ">

                    <div class="contact-form">

                        <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quod inventore repellat? Aut, nesciunt nobis.</p>

                        <div class="form-body">
                            <form>

                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Name" id="exampleFormControlInput1">
                                </div>

                                <div class="form-group">
                                    <select class="form-control custom-select" id="exampleFormControlSelect1">
                                        <option>Select Country</option>
                                        <option>Thailand</option>
                                        <option>Indonesia</option>
                                        <option>USA</option>
                                        <option>India</option>
                                        <option>UAE</option>
                                        <option>Brazil</option>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <input type="email" placeholder="Enter Email ID" class="form-control">
                                </div>

                                <div class="form-group">
                                    <textarea class="form-control" placeholder="Type here..."></textarea>
                                </div>

                            </form>
                        </div>
                        <div class="form-footer">
                            <button class="btn btn-primary btn-block">Send Message</button>
                        </div>

                    </div>

                </div>

                <div class="col-lg-6 col-md-12 col-sm-12 ">
                    <div class="world-map">

                        <!--Google map-->
                        <div id="map-container-google-1" class="z-depth-1-half map-container">
                            <iframe src="https://maps.google.com/maps?q=manhatan&t=&z=13&ie=UTF8&iwloc=&output=embed" style="border:0" allowfullscreen></iframe>
                        </div>
                        <!--Google Maps-->

                    </div>
                </div>

            </div>
        </div>
    </section>

    <!-- Locations -->

    <!-- Address Section ends here -->

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