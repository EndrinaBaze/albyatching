<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@page contentType="text/html" pageEncoding="x-iso-8859-11"%>

<!DOCTYPE html>
<c:set var="contextPath" value="${pageContext.request.contextPath}" /><html lang="zxx">

<%@ include file="./header.jsp" %>


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

    <!-- Jquery CDN -->
    <script src="${contextPath}/resources/js/jquery/jquery-2.2.4.js"></script>

</body>

</html>