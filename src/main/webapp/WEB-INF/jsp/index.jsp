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
    <title></title>

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

    <!-- owl carousle css -->
    <link rel="stylesheet" href="${contextPath}/resources/css/owl-carousel/owl.carousel.css" type="text/css">
    <link rel="stylesheet" href="${contextPath}/resources/css/owl-carousel/owl.theme.default.min.css" type="text/css">
    
    <!-- magnific popup css -->
    <link rel="stylesheet" href="${contextPath}/resources/css/magnific/magnific-popup.css" type="text/css">

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
                <!--a style="color:darkturquoise;">Albania Yachting</a-->
                  <!--img src="${contextPath}/resources/images/company_logo.png" alt=""-->
              </a>
            </div>
  
            <div class="col-12 col-md-10 d-none d-lg-block">
                <nav class="site-navigation position-relative text-right">
                        <ul class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">
                            <li class="has-children">
                                <a class="nav-link active">Home</a>
                                <ul class="dropdown">
                                    <li><a href="index.jsp" class="nav-link">Home</a></li>
                                </ul>
                            <li class="has-children">
                                <a class="nav-link">About</a>
                                <ul class="dropdown">
                                    <li><a href="${contextPath}/about" class="nav-link">About Us</a></li>
                                </ul>
                            </li>
                            <li><a href="${contextPath}/activities" class="nav-link">Services</a></li>
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
    

    <!-- Topbar starts here -->
    <div class="container-fluid top-bar">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 contact-info">
                    <ul>
                        <li><i class="fas fa-map"></i> &nbsp;Saranda, Durres, Albania</li>
                        <li><i class="fas fa-envelope-open"></i> &nbsp;contact@albaniayachting.al </li>
                        <li><i class="fas fa-phone"></i> &nbsp;+355 67 609 6010 </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- Topbar ends here -->

    <!-- Carousel starts here -->
    <div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="hero-slider-1"></div>
                <div class="slider-text">
                    <h1>Luxury Yachts</h1>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt dolore magna aliqua.</p>
                    <button type="submit" class="btn btn-primary-color mt-4">Book Services Now</button>
                </div>
            </div>
            <div class="carousel-item">
                <div class="hero-slider-3"></div>
                <div class="slider-text">
                    <h1> Enjoy a relaxing time at sea</h1>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt dolore magna aliqua.</p>
                    <button type="submit" class="btn btn-primary-color mt-4">Book Services Now</button>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <!-- Carousel ends here -->

    <!-- Feature starts here -->
    <div class="container-fluid">
        <div class="row border-bottom">

            <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6 p-3 border-right">
                <div class="feature text-center">
                    <img style="width: 60%; min-height: 90px; margin-top: -8%;" src="images/time3.jpg" alt="">
                    <h6 style="margin-top: -4%;"> Arrival Formalities</h6>
                    <p>Arrival and departure formalities must be completed by a licensed agent in order to enter the country. Albania has 3 major ports to choose from. </p>
                </div>
            </div>

            <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6 p-3 border-right">
                <div class="feature text-center">
                    <img src="${contextPath}/resources/images/bio.jpg" alt="">
                    <h6>Provisioning</h6>
                    <p>As a developing country one thing  for certain is that we still do some things the "old fashioned way" and that includes growing and consuming our food locally.</p>
                </div>
            </div>

            <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6 p-3 border-right">
                <div class="feature text-center">
                    <img src="${contextPath}/resources/images/4.jpg" alt="">
                    <h6>VIP Tours</h6>
                    <p>Albania is Europe's last destination to be explored. Depending on your interest our tours are hand crafted keeping the guests interest in mind.  </p>
                </div>
            </div>

            <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6 p-3">
                <div class="feature text-center">
                    <img src="${contextPath}/resources/images/dutyfree.jpeg" alt="">
                    <h6>Duty Free Bunkering</h6>
                    <p>One thing for certain is there are benefits as to not being an EU partner. This is a great advantage for our clients to receive duty free fuel.</p>
                </div>
            </div>

        </div>
    </div>
    <!-- Feature ends here -->

    <!-- Booking form starts here -->
    <section>
        <div class="container">
            <div class="row justify-content-md-center">
                <div class="col-lg-6 text-center">
                    <div class="title">
                        <h2><span>Don't Think</span>Book Services Now</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-8 m-auto booking-form-bg">
                    <div class="booking-form">
                    <form class="needs-validation" novalidate>
                      <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="text" class="form-control" id="firstName" placeholder="Full Name" value="" required>
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="firstName" placeholder="Contact" value="" required>
                                </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                    <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="yourmailid@company.com">
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <select class="form-control custom-select" id="exampleFormControlSelect1">
                                    <option>Select Service</option>
                                    <option>Appointment</option>
                                    <option>Airport Transfer</option>
                                    <option>Arrival Formalities</option>
                                    <option>Flower arrangements</option>
                                    <option>Anchorage Points</option>
                                    <option>Private Tours</option>
                                </select>
                                </div>
                        </div>


                        <div class="col-md-6">
                            <div class="form-group">
                                    <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="From date">
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                    <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Till date">
                            </div>
                        </div>

                        <div class="col-md-12">
                                <div class="form-group">
                                        <textarea class="form-control" placeholder="Type your message here..." spellcheck="false"></textarea>
                                </div>
                        </div>                   

                        <div class="col-md-6 m-auto">
                            <div class="form-group text-center">
                                <button type="button" class="btn btn-primary-color">Submit</button>
                            </div>
                        </div>

                      </div>
                   </form>
                  </div>
                  </div>
                </div>
            </div>
    </section>
    <!-- Booking form ends here -->

    <!-- Hot Destination start here -->
    <section>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2><span>More to us than just bunkering...</span>Discover More</h2>
                    <p>Weather you have only a few hours or a few days let us show you our beautiful country. With over 476 km of coastline, Unesco World Heritage sites, vast mountain tops, canyons, peaceful hikes and trails and some amazing anchorage spots. 
 
                        We invite you to come a bit closer and take in one of Europe's last wonders.</p>
                </div>
            </div>
        </div>
        <div class="container-fluid" style="margin-top: 3%;">
            <div class="row">
                <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6 destination-info">                  
                    <h6>BUTRINT Archaeological Park</h6>
                    <p>In 1992, the archaeological site joined the UNESCO list of World Heritage Sites.</p>
                    <span><i class="fas fa-map-marker-alt"></i> Distance - <strong>20 kms.</strong></span>
                    <span><i class="fas fa-star"></i> Rating - <strong>4.3</strong></span>
                    <span><i class="fas fa-heart"></i> Likes - <strong>1.5 K</strong></span>
                </div>
               
                <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6 destination-img p-0">
                    <img class="img-fluid" src="images/butrint.jpg" alt="">                
                </div>
               
                <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6 destination-info">                  
                    <h6>Nivica Canyon</h6>
                    <p>Spectacular Views from Nivica Canyons. </p>
                    <span><i class="fas fa-map-marker-alt"></i> Distance - <strong>10 kms.</strong></span>
                    <span><i class="fas fa-star"></i> Rating - <strong>4.3</strong></span>
                    <span><i class="fas fa-heart"></i> Likes - <strong>1.5 K</strong></span>
                    
                </div>
               
                <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6 destination-img p-0">
                    <img class="img-fluid" src="${contextPath}/resources/images/nivica.jpg" alt="">
                </div>
               
                <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6 destination-img p-0">
                    <img class="img-fluid" src="${contextPath}/resources/images/bylis.jpg" alt="">
                </div>
               
                <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6 destination-info">                  
                    <h6>Byllis Archaeological Park</h6>
                    <p>Byllis Archaeological Park is the largest ancient Illyrian city in the south of Albania. </p>
                    <span><i class="fas fa-map-marker-alt"></i> Distance - <strong>10 kms.</strong></span>
                    <span><i class="fas fa-star"></i> Rating - <strong>4.3</strong></span>
                    <span><i class="fas fa-heart"></i> Likes - <strong>1.5 K</strong></span>
                </div>
               
                <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6 destination-img p-0">
                    <img class="img-fluid" src="images/${contextPath}/resources/gjirokastra.jpg" alt="">
                </div>
               
                <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6 destination-info">                  
                    <h6>Gjirokastra</h6>
                    <p>Its old town is a UNESCO World Heritage Site, described as "a rare example of a well-preserved Ottoman town, built by farmers of large estate" </p>
                    <span><i class="fas fa-map-marker-alt"></i> Distance - <strong>10 kms.</strong></span>
                    <span><i class="fas fa-star"></i> Rating - <strong>4.3</strong></span>
                    <span><i class="fas fa-heart"></i> Likes - <strong>1.5 K</strong></span>
                </div>
                
            </div>
        </div>

    </section>
    <!-- Hot Destination ends here -->

    <!-- Activities starts here -->
    <section>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>
                <span></span>
                Activities
              </h2>
                </div>
            </div>
        </div>

        <div class="container activity-list">
            <div class="row">
                <div class="polo_1 owl-carousel owl-theme">

                    <div class="item">
                        <div class="col-lg-12">
                            <div class="card">
                                <img src="images/${contextPath}/resources/tur.jpg" class="card-img-top" alt="Sporting Activities">
                                <div class="card-body">
                                    <h5>Luxury Cruising</h5>
                                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
                                    <ul>
                                        <li>Offer - $2000/Day</li>
                                        <li>15 Guests</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="item">
                        <div class="col-lg-12">
                            <div class="card">
                                <img src="${contextPath}/resources/images/tur.jpg" class="card-img-top" alt="Sporting Activities">
                                <div class="card-body">
                                    <h5>Dolphin Watching</h5>
                                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
                                    <ul>
                                        <li>Offer - $2000/Day</li>
                                        <li>15 Guests</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="item">
                        <div class="col-lg-12">
                            <div class="card">
                                <img src="images/${contextPath}/resources/tur.jpg" class="card-img-top" alt="Sporting Activities">
                                <div class="card-body">
                                    <h5>Fishing</h5>
                                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
                                    <ul>
                                        <li>Offer - $2000/Day</li>
                                        <li>15 Guests</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="item">
                        <div class="col-lg-12">
                            <div class="card">
                                <img src="images/${contextPath}/resources/tur.jpg" class="card-img-top" alt="Sporting Activities">
                                <div class="card-body">
                                    <h5>Stag / Hen Parties</h5>
                                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
                                    <ul>
                                        <li>Offer - $2000/Day</li>
                                        <li>15 Guests</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="item">
                        <div class="col-lg-12">
                            <div class="card">
                                <img src="images/${contextPath}/resources/tur.jpg" class="card-img-top" alt="Sporting Activities">
                                <div class="card-body">
                                    <h5>Gibraltar Tour</h5>
                                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
                                    <ul>
                                        <li>Offer - $2000/Day</li>
                                        <li>15 Guests</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>

    </section>
    <!-- Activities ends here -->

 

    <!-- Testimonial start here -->
    <section>
        <div class="container">
            <div class="row">
                <div class="client-says owl-carousel owl-theme">

                    <div class="item">
                        <div class="col-lg-6 m-auto">
                            <div class="testimonial">
                                <div class="testi-pic"><img class="img-fluid" src="${contextPath}/resources/images/pic_1.jpg" alt=""></div>
                                <h6>Phillip Morris</h6>
                                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nulla, nobis ut? Excepturi ipsum similique repellat ut nihil vitae quod, architecto velit repellendus neque asperiores assumenda perferendis sed laboriosam, quam eos.</p>
                            </div>
                        </div>
                    </div>

                    <div class="item">
                        <div class="col-lg-6 m-auto">
                            <div class="testimonial">
                                <div class="testi-pic"><img class="img-fluid" src="images/${contextPath}/resources/pic_2.jpg" alt=""></div>
                                <h6>Pamela Walker</h6>
                                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nulla, nobis ut? Excepturi ipsum similique repellat ut nihil vitae quod, architecto velit repellendus neque asperiores assumenda perferendis sed laboriosam, quam eos.</p>
                            </div>
                        </div>
                    </div>

                    <div class="item">
                        <div class="col-lg-6 m-auto">
                            <div class="testimonial">
                                <div class="testi-pic"><img class="img-fluid" src="images/${contextPath}/resources/pic_3.jpg" alt=""></div>
                                <h6>Billy Knight</h6>
                                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nulla, nobis ut? Excepturi ipsum similique repellat ut nihil vitae quod, architecto velit repellendus neque asperiores assumenda perferendis sed laboriosam, quam eos.</p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <!-- Testimonial ends here -->

    <!-- Get Updates starts here -->
    <section>
        <div class="container-fluid jumbotron">
            <div class="container updates">
                <div class="row">

                    <div class="col-lg-6 col-md-12 col-sm-12 m-auto">
                        <div class="update-text">
                            <h4>Get Updates</h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt magna aliqua.</p>
                        </div>
                        <div class="update-btn">
                            <button type="submit" class="btn btn-primary-color">subscribe now</button>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <!-- Get Updates ends here -->

    <!-- Footer starts here -->
    <section id="footer-sec">
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="footer-col">
                            <h5>Activities</h5>
                            <ul>
                                <li><a href="activities.html">Luxury Cruising</a></li>
                                <li><a href="activities.html">Dolphin Watching</a></li>
                                <li><a href="activities.html">Fishing</a></li>
                                <li><a href="activities.html">Stag / Hen Parties</a></li>
                                <li><a href="activities.html">Gibraltar Tour</a></li>
                                <li><a href="activities.html">Corporate Events</a></li>
                                <li><a href="activities.html">Day Sailing</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="footer-col">
                            <h5>Yachts</h5>
                            <ul>
                                <li><a href="yachts.html">Motor Yachts</a></li>
                                <li><a href="yachts.html">Fishing Boats</a></li>
                                <li><a href="yachts.html">Sailing Yachts</a></li>
                                <li><a href="yachts.html">Groups Boats</a></li>
                                <li><a href="about.html">About</a></li>
                                <li><a href="management.html">Management</a></li>
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

    <!-- owl-carousel java script -->
    <script src="${contextPath}/resources/js/owl-carousel/owl.carousel.js"></script>
    <script src="${contextPath}/resources/js/owl-carousel/owl.carousel-activities.js"></script>
    <script src="${contextPath}/resources/js/owl-carousel/owl.carousel-testimonial.js"></script>

    <!-- JavaScript Libraries -->
    <script src="${contextPath}/resources/js/counterup/jquery.counterup.js"></script>

    <!-- Sticky Navbar Javascript File -->
    <script src="${contextPath}/resources/js/easing/easing.min.js"></script>
    <script src="${contextPath}/resources/js/sticky/sticky.js"></script>
    <script src="${contextPath}/resources/js/main/main.js"></script>

    <!-- Jquery -->
    <script src="${contextPath}/resources/js/jquery/jquery-2.2.4.js"></script>

    <!-- Magnific popup -->
    <script src="${contextPath}/resources/js/magnific/jquery.js"></script>
    <script src="${contextPath}/resources/js/magnific/jquery.magnific-popup.js"></script>
    <script src="${contextPath}/resources/js/magnific/magnific-popup.js"></script>
    
</body>

</html>