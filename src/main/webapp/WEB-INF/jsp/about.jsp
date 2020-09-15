<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@page contentType="text/html" pageEncoding="x-iso-8859-11"%>
<!DOCTYPE html>
<c:set var="contextPath" value="${pageContext.request.contextPath}" /><html lang="zxx">

<%@ include file="./header.jsp" %>


    <!-- Hero image starts here -->
    <section class="hero-about">
        <div class="container-fluid">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="hero-text">
                            <h5>About Us</h5>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero image ends here -->

    <!-- About Us starts here -->
    <section>
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12">
                    <div class="title">
                        <h2><span>Few Words</span>About Us</h2>
                    </div>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation commodo consequat. Duis aute irure dolor in reprehenderit in dolore eu fugiat nulla pariatur.</p>
                </div>

                <div class="col-lg-8 col-md-6 col-sm-12 col-xs-12">
                    <div class="about-img text-right"><img class="img-fluid" src="${contextPath}/resources/images/about.jpg" alt=""></div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 pt-5">
                    <div class="about-point">
                        <img src="${contextPath}/resources/images/about_icon_1.svg" alt="">
                        <h6>Luxury Yachts</h6>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore adipiscing elit dolore magna aliqua. Ut enim ad minim veniam.</p>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 pt-5">
                    <div class="about-point">
                        <img src="${contextPath}/resources/images/about_icon_2.svg" alt="">
                        <h6>Experienced Team</h6>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore adipiscing elit dolore magna aliqua. Ut enim ad minim veniam.</p>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 pt-5">
                    <div class="about-point">
                        <img src="${contextPath}/resources/images/about_icon_3.svg" alt="">
                        <h6>Quick Service</h6>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore adipiscing elit dolore magna aliqua. Ut enim ad minim veniam.</p>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 pt-5">
                    <div class="about-point">
                        <img src="${contextPath}/resources/images/about_icon_4.svg" alt="">
                        <h6>Best Destinations</h6>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore adipiscing elit dolore magna aliqua. Ut enim ad minim veniam.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- About Us ends here -->

    <!-- Number starts here -->
    <section>
        <div class="container-fluid number-bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="number-single">
                            <img src="${contextPath}/resources/images/number_img_1.png" class="img-fluid" alt="">
                            <h1>1200+</h1>
                            <p>Our Customer</p>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="number-single">
                            <img src="${contextPath}/resources/images/number_img_2.png" class="img-fluid" alt="">
                            <h1>51</h1>
                            <p>Total Yachts</p>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="number-single">
                            <img src="${contextPath}/resources/images/number_img_3.png" class="img-fluid" alt="">
                            <h1>69</h1>
                            <p>Our Locations</p>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="number-single">
                            <img src="${contextPath}/resources/images/number_img_4.png" class="img-fluid" alt="">
                            <h1>1800+</h1>
                            <p>Total Tours</p>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <!-- Number ends here -->

    <!-- Image Gallery starts here -->
    <section>
        <div class="container">
            <div class="row">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 text-center">
                            <div class="title">
                                <h2><span>Onsite</span>Photoshoot</h2>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 gall-img">
                    <a class="moto" href="../statics/images/img-gallery-1.jpg">
                        <img class="img-fluid" src="${contextPath}/resources/images/img-gallery-1.jpg" alt="">
                        <div class="zoom"><img src="${contextPath}/resources/images/icon_zoom.svg" alt=""></div>
                    </a>
                </div>

                <div class="col-lg-3 col-md-6 col-sm-6 gall-img">
                    <a class="moto" href="../statics/images/img-gallery-2.jpg">
                        <img class="img-fluid" src="${contextPath}/resources/images/img-gallery-2.jpg" alt="">
                        <div class="zoom"><img src="${contextPath}/resources/images/icon_zoom.svg" alt=""></div>
                    </a>
                </div>

                <div class="col-lg-3 col-md-6 col-sm-6 gall-img">
                    <a class="moto" href="../statics/images/img-gallery-3.jpg">
                        <img class="img-fluid" src="${contextPath}/resources/images/img-gallery-3.jpg" alt="">
                        <div class="zoom"><img src="${contextPath}/resources/images/icon_zoom.svg" alt=""></div>
                    </a>
                </div>

                <div class="col-lg-3 col-md-6 col-sm-6 gall-img">
                    <a class="moto" href="../statics/images/img-gallery-4.jpg">
                        <img class="img-fluid" src="${contextPath}/resources/images/img-gallery-4.jpg" alt="">
                        <div class="zoom"><img src="${contextPath}/resources/images/icon_zoom.svg" alt=""></div>
                    </a>
                </div>

                <div class="col-lg-3 col-md-6 col-sm-6 gall-img">
                    <a class="moto" href="../statics/images/img-gallery-5.jpg">
                        <img class="img-fluid" src="${contextPath}/resources/images/img-gallery-5.jpg" alt="">
                        <div class="zoom"><img src="${contextPath}/resources/images/icon_zoom.svg" alt=""></div>
                    </a>
                </div>

                <div class="col-lg-3 col-md-6 col-sm-6 gall-img">
                    <a class="moto" href="images/img-gallery-6.jpg">
                        <img class="img-fluid" src="${contextPath}/resources/images/img-gallery-6.jpg" alt="">
                        <div class="zoom"><img src="${contextPath}/resources/images/icon_zoom.svg" alt=""></div>
                    </a>
                </div>

                <div class="col-lg-3 col-md-6 col-sm-6 gall-img">
                    <a class="moto" href="images/img-gallery-7.jpg">
                        <img class="img-fluid" src="${contextPath}/resources/images/img-gallery-7.jpg" alt="">
                        <div class="zoom"><img src="${contextPath}/resources/images/icon_zoom.svg" alt=""></div>
                    </a>
                </div>

                <div class="col-lg-3 col-md-6 col-sm-6 gall-img">
                    <a class="moto" href="images/img-gallery-8.jpg">
                        <img class="img-fluid" src="${contextPath}/resources/images/img-gallery-8.jpg" alt="">
                        <div class="zoom"><img src="${contextPath}/resources/images/icon_zoom.svg" alt=""></div>
                    </a>
                </div>

            </div>
        </div>
    </section>
    <!-- Image Gallery ends here -->

    <!-- Clients starts here -->
    <section class="mar-bot">
        <div class="container">
            <div class="row">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 text-center">
                            <div class="title">
                                <h2><span>Precious</span>Clients</h2>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 col-sm-6 client-single">
                    <img class="img-fluid" src="${contextPath}/resources/images/client_1.jpg" alt="">
                </div>

                <div class="col-lg-3 col-md-6 col-sm-6 client-single">
                    <img class="img-fluid" src="${contextPath}/resources/images/client_2.jpg" alt="">
                </div>

                <div class="col-lg-3 col-md-6 col-sm-6 client-single">
                    <img class="img-fluid" src="${contextPath}/resources/images/client_3.jpg" alt="">
                </div>

                <div class="col-lg-3 col-md-6 col-sm-6 client-single">
                    <img class="img-fluid" src="${contextPath}/resources/images/client_1.jpg" alt="">
                </div>

            </div>
        </div>
    </section>

    <!-- Clients ends here -->

<%@ include file="./footer.jsp" %>


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

    <!-- Jquery -->
    <script src="${contextPath}/resources/js/jquery/jquery-2.2.4.js"></script>

    <!-- Magnific popup -->
    <script src="${contextPath}/resources/js/magnific/jquery.js"></script>
    <script src="${contextPath}/resources/js/magnific/jquery.magnific-popup.js"></script>
    <script src="${contextPath}/resources/js/magnific/magnific-popup.js"></script>

</body>

</html>