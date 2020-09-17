<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@page contentType="text/html" pageEncoding="x-iso-8859-11"%>

<!DOCTYPE html>
<c:set var="contextPath" value="${pageContext.request.contextPath}" /><html lang="zxx">



<%@ include file="./header.jsp" %>


    <!-- Carousel starts here -->
    <div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="hero-slider-1"></div>
                <div class="slider-text">
                    <h1>Albania Yachting</h1>
                    <p>making it simple ...</p>
                    <a href="services" class="btn btn-primary-color mt-4"> Book Services Now</a>
                </div>
            </div>
            <div class="carousel-item">
                <div class="hero-slider-3"></div>
                <div class="slider-text">
                        <h1>Albania Yachting</h1>
                        <p>making it simple ...</p>
                    <a href="services" class="btn btn-primary-color mt-4"> Book Services Now</a>
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
<%@ include file="./bookservice.jsp" %>
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

<%@ include file="./footer.jsp" %>


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