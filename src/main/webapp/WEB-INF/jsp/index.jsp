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
                    <a href="bookservice" class="btn btn-primary-color mt-4"> Book Services Now</a>
                </div>
            </div>
            <div class="carousel-item">
                <div class="hero-slider-3"></div>
                <div class="slider-text">
                        <h1>Albania Yachting</h1>
                        <p>making it simple ...</p>
                    <a href="bookservice" class="btn btn-primary-color mt-4"> Book Services Now</a>
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
                        <div class="col-md-6 m-auto">
                            <div class="form-group text-center">
                                <select name= "URL" class="form-control custom-select" id="exampleFormControlSelect1" onchange="window.location.href= this.form.URL.options[this.form.URL.selectedIndex].value">
                                    <option value="#">Select Service</option>
                                    <option value="about">Arrival Formalities</option>
                                    <option value="provisioningform">Provisioning</option>
                                    <option value="ports">Ports</option>
                                    <option value="booktourform">VIP Tours</option>
                                    <option value="bunkeringform">Duty Free Bunkering</option>
                                </select>
                            </div>
                        </div>

                        <div class="col-md-6 m-auto">
                            <div class="form-group text-center">
                                <button type="button" class="btn btn-primary-color">Next</button>
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
<%--    <section>--%>
<%--        <div class="container">--%>
<%--            <div class="row">--%>
<%--                <div class="col-lg-12 text-center">--%>
<%--                    <h2><span>More to us than just bunkering...</span>Discover More</h2>--%>
<%--                    <p>Weather you have only a few hours or a few days let us show you our beautiful country. With over 476 km of coastline, Unesco World Heritage sites, vast mountain tops, canyons, peaceful hikes and trails and some amazing anchorage spots. --%>
<%-- --%>
<%--                        We invite you to come a bit closer and take in one of Europe's last wonders.</p>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="container-fluid" style="margin-top: 3%;">--%>
<%--            <div class="row">--%>
<%--                <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6 destination-info">                  --%>
<%--                    <h6>BUTRINT Archaeological Park</h6>--%>
<%--                    <p>In 1992, the archaeological site joined the UNESCO list of World Heritage Sites.</p>--%>
<%--                    <span><i class="fas fa-map-marker-alt"></i> Distance - <strong>20 kms.</strong></span>--%>
<%--                    <span><i class="fas fa-star"></i> Rating - <strong>4.3</strong></span>--%>
<%--                    <span><i class="fas fa-heart"></i> Likes - <strong>1.5 K</strong></span>--%>
<%--                </div>--%>
<%--               --%>
<%--                <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6 destination-img p-0">--%>
<%--                    <img class="img-fluid" src="images/butrint.jpg" alt="">                --%>
<%--                </div>--%>
<%--               --%>
<%--                <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6 destination-info">                  --%>
<%--                    <h6>Nivica Canyon</h6>--%>
<%--                    <p>Spectacular Views from Nivica Canyons. </p>--%>
<%--                    <span><i class="fas fa-map-marker-alt"></i> Distance - <strong>10 kms.</strong></span>--%>
<%--                    <span><i class="fas fa-star"></i> Rating - <strong>4.3</strong></span>--%>
<%--                    <span><i class="fas fa-heart"></i> Likes - <strong>1.5 K</strong></span>--%>
<%--                    --%>
<%--                </div>--%>
<%--               --%>
<%--                <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6 destination-img p-0">--%>
<%--                    <img class="img-fluid" src="${contextPath}/resources/images/nivica.jpg" alt="">--%>
<%--                </div>--%>
<%--               --%>
<%--                <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6 destination-img p-0">--%>
<%--                    <img class="img-fluid" src="${contextPath}/resources/images/bylis.jpg" alt="">--%>
<%--                </div>--%>
<%--               --%>
<%--                <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6 destination-info">                  --%>
<%--                    <h6>Byllis Archaeological Park</h6>--%>
<%--                    <p>Byllis Archaeological Park is the largest ancient Illyrian city in the south of Albania. </p>--%>
<%--                    <span><i class="fas fa-map-marker-alt"></i> Distance - <strong>10 kms.</strong></span>--%>
<%--                    <span><i class="fas fa-star"></i> Rating - <strong>4.3</strong></span>--%>
<%--                    <span><i class="fas fa-heart"></i> Likes - <strong>1.5 K</strong></span>--%>
<%--                </div>--%>
<%--               --%>
<%--                <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6 destination-img p-0">--%>
<%--                    <img class="img-fluid" src="images/${contextPath}/resources/gjirokastra.jpg" alt="">--%>
<%--                </div>--%>
<%--               --%>
<%--                <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6 destination-info">                  --%>
<%--                    <h6>Gjirokastra</h6>--%>
<%--                    <p>Its old town is a UNESCO World Heritage Site, described as "a rare example of a well-preserved Ottoman town, built by farmers of large estate" </p>--%>
<%--                    <span><i class="fas fa-map-marker-alt"></i> Distance - <strong>10 kms.</strong></span>--%>
<%--                    <span><i class="fas fa-star"></i> Rating - <strong>4.3</strong></span>--%>
<%--                    <span><i class="fas fa-heart"></i> Likes - <strong>1.5 K</strong></span>--%>
<%--                </div>--%>
<%--                --%>
<%--            </div>--%>
<%--        </div>--%>

<%--    </section>--%>
    <!-- Hot Destination ends here -->

<!-- Activities starts here -->
<section>
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2>
                    <span>Sporting</span>
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
                            <img src="${contextPath}/resources/images/vlora.jpg" class="card-img-top" alt="Sporting Activities">
                            <div class="card-body">
                                <h5>Vlora</h5>
                                <p class="card-text">Albania's Sourthen Riviera starts in Vlora and continues all the way to Saranda, the two major coastal cities being separated by the Llogara Pass as well as a few other mountainous roads and villages along the way.
                                    The seafront towns of Vlora and Orikum are popula destinations along the Albanian Riviera, and lie just hours south of Durres. On this tour, stop to admire views of Narta Lagoon which has a 274m wooden bridge that connects you to Zvernec. This discover the fascinating history of Vlora as you visit Muradiut Mosque, Vlora Castle and Kuzum Baba (sufi), then explore the beautiful beaches and ancient Roman ruins of Orikum.</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="item">
                    <div class="col-lg-12">
                        <div class="card">
                            <img src="${contextPath}/resources/images/zvernec.jpg" class="card-img-top" alt="Sporting Activities">
                            <div class="card-body">
                                <h5>Zvernec</h5>
                                <p class="card-text">The small picturesque island of Zvernec, situated in the beautiful Narta Lagoon, is majestically covered by only tall pine trees and connected to the mainland by a 274m-long, beautiful creafted wooden bridge.
                                    Zvernec contains the especially well-preserved 13th century Byzantine Zvernec Monastery.</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="item">
                    <div class="col-lg-12">
                        <div class="card">
                            <img src="${contextPath}/resources/images/sazan.jpg" class="card-img-top" alt="Sporting Activities">
                            <div class="card-body">
                                <h5>Sazan Island</h5>
                                <p class="card-text">Once a fortified military base, this island's beauty and pristine coastile has swiftly turned into one of the hottest summer destinations in the country.
                                    The island is beautifully situated where the Adriatic and Ionian seas meet. The largest island in Albania, with an area of 5.8 square kilometers, Sazan looks like a detached portion of the Karaburun penninsula and is also the gateway to the Gulf of Vlora. The entire marine territory is part of the Karaburun-Sazan Marine Park. While the island is uninhabited, you are sure to always find people here as, since it opened to the public in 2015, Sazan has quickly become one of the most attractive touristic destinations in the entire country.
                                    Elevation: 342m (1222ft)
                                    Coordinates:40?29'37"N 19?16'50"
                                    Length: 4.8 km (3 mi)
                                    Width: 2.7 km (2 mi)
                                    Area: 5.7 km2 (2 sq mi)
                                    Distance from Saranda by sea: 55
                                    Sazan (definite Albanian) is a island within the Mediterranean Sea and the largest island in Albania. It is strategically located between the Stait of Otranto and the entrance to the Bay of Vlore, forming the border between the Adriatic and Ionian Sea. It has a total area of 5.7 km2 (2.2 sq mi), with no civil population.</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="item">
                    <div class="col-lg-12">
                        <div class="card">
                            <img src="${contextPath}/resources/images/karaburun.jpg" class="card-img-top" alt="Sporting Activities">
                            <div class="card-body">
                                <h5>Karaburun Peninsula</h5>
                                <p class="card-text">A short boat ride away from Orikum separates you from the magical peninsula of Karaburun! The Karaburun PEninsula is the only national marine park of Albania, with a lot of hiking opportunities.
                                    Of the countless untouched beaches of the Karaburun Peninsula, this one is definitely worth adding to your list of destinations. Perfectly exclusive, this wonderful secluded area is perfect for camping and some alone time with the sea and the beauty of nature. Watch this small preview of the turqoise waters of Brisani Bay
                                    Brisani Bay, Karaburun, Source:pinterest.com</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="item">
                    <div class="col-lg-12">
                        <div class="card">
                            <img src="${contextPath}/resources/images/brisanbay.jpg" class="card-img-top" alt="Sporting Activities">
                            <div class="card-body">
                                <h5>Brisani Bay</h5>
                                <p class="card-text">Of the countless untouched beaches of the Karaburun Peninsula, this one is definitely worth adding to your list of destinations.
                                    Perfectly exclusive, this wonderful secluded area is perfect for camping and some alone time with the sea and the beauty of nature.</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="item">
                    <div class="col-lg-12">
                        <div class="card">
                            <img src="${contextPath}/resources/images/jal.jpg" class="card-img-top" alt="Sporting Activities">
                            <div class="card-body">
                                <h5>Jal</h5>
                                <p class="card-text">Let's continue on the rest of the beautiful journey. The small bay of Jal has the best camping life and the best nightclub/resot complex, called Folie Marine, of the Riviera. The beach is absolutely gorgeous and a strategic point from where you can visit many of the other beaches around it.
                                    This was Enver Hoxha's favorite place for goos reason! At the top of the hill in the bay of JAl, stands the former summer vacation complex of the Communis government. Go up the stairs to enjoy some beautiful panoramas!</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="item">
                    <div class="col-lg-12">
                        <div class="card">
                            <img src="${contextPath}/resources/images/livadh.jpg" class="card-img-top" alt="Sporting Activities">
                            <div class="card-body">
                                <h5>Livadh</h5>
                                <p class="card-text">Livadh is one of the longest coastlines of the south with some grat camping and restaurant options. Similar to Drimadhes, when you like space but do not like to be completely alone, this place is for you.
                                    Livadh Beach,photo by AlbaniaYachting.al</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="item">
                    <div class="col-lg-12">
                        <div class="card">
                            <img src="${contextPath}/resources/images/grama.jpg" class="card-img-top" alt="Sporting Activities">
                            <div class="card-body">
                                <h5>Grama Bay</h5>
                                <p class="card-text">The small bay is famous for its ancient writings in the rock by the sailors who stopped here during storms in the treacheries Accrocerauntain Mountains. Not studied fully, there are hundreds of inscriptions carved in the rock, some as early as IV century BC.
                                    Coordinates: 40?22'N 19?22'E
                                    Distance from Saranda by sea: 53 mil
                                    Karaburun Peninsula, Albania (Albanian: Gadishulli i Karaburunit, from Turkish Kara Burun, Black Cape) is the largest peninsula of the Albania, located in the Vlore Country, southwestern Albania, at the eastern side of the Strait of Otranto, where the Adriatic Sea meets the Ionian Sea. It has an area of 62 km2 (24 sq mi)[1] and has no population. It is 16 kilometres (9.9 mi) long with a width that varies from 3 to 4.5 kilometres (1.9 to 2.8 mi). The peninsula is a Managed Nature Reserve, and contains the Pasha Liman military base. The surrounding sea waters from part of the Karaburun-Sazan National Marine Park.[2] In 2014, the Regina Blu ferry was estabilished by a Radhime-based hotel owner making trips to Karaburun Peninsula and Sazan Island while stopping along the secluded beaches.</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="item">
                    <div class="col-lg-12">
                        <div class="card">
                            <img src="${contextPath}/resources/images/himara.jpg" class="card-img-top" alt="Sporting Activities">
                            <div class="card-body">
                                <h5>Himara</h5>
                                <p class="card-text">Himara, the largest village in the south. The midpoint between Vlore and Sarande, this is as close to a city as it gets along the Riviera tour in Himara and do not miss eating petulla (Albania's doughnut) for breakfast or you will regret it!</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="item">
                    <div class="col-lg-12">
                        <div class="card">
                            <img src="${contextPath}/resources/images/borsh.jpg" class="card-img-top" alt="Sporting Activities">
                            <div class="card-body">
                                <h5>Borsh</h5>
                                <p class="card-text">The longest coast of all the beacjes of the south and the most relaxed atmosphere. Local people and/or specialized tour opertors will inform you about hikes with shepherds in the regions of Qeparo and Borsh if you are interested in this bucolic fantasy!
                                    1) Spectacular Filicuri Bay
                                    2) Small Bay of Llaman whose especially brisk, green waters have beautifully carved a space for themselves in between two cliffs.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="item">
                    <div class="col-lg-12">
                        <div class="card">
                            <img src="${contextPath}/resources/images/portopalermo.jpg" class="card-img-top" alt="Sporting Activities">
                            <div class="card-body">
                                <h5>Porto Palermo</h5>
                                <p class="card-text">Porto Palermo, ranked first of 15 Undiscovered European destinations by the Huffington Post in 2017, is now undergoing the unlikely transition from Communist military base to a hot summer destination, where decrepit buildings and majestic vistas beautifully and early co-exist, where you will also find Ali Pasha's beautiful castle.
                                    Porto Palermo Castle Information
                                    Coordinates: 40?02'58.9"N 19?47'33.4"E
                                    Height: 10 m (33 ft)
                                    Distance from Saranda: 46.4 km (1 h 9 min)
                                    Distance from Saranda by sea: 16 mil
                                    Porto Palermo Castle (Albanian: Kalaja e Porto Palermos) is a castle near Himare in southern Albania. It is situated in the bay of Porto Palermo, a few kilometers south of Himara along the Albanian Riviera. Huffington Post ranked Porto Palermo first among 15 Undiscovered European Destinations for 2014.</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="item">
                    <div class="col-lg-12">
                        <div class="card">
                            <img src="${contextPath}/resources/images/kakome.jpg" class="card-img-top" alt="Sporting Activities">
                            <div class="card-body">
                                <h5>Kakome Bay</h5>
                                <p class="card-text">Nearby cities: Sarande, Vlore
                                    Coordinates: 39?55'39"N 19?56'7"E
                                    Distance from Saranda: 17 km
                                    Distance from Saranda by the sea: 7 mil
                                    Kakome Bay, on the Ionian coast, 10 km from Saranda, is about 550 meters inland and is about 2 kilometers long. On both sides of the bay, the coast is elevated by altitude ranging from 500 to 800 meters, knocking over the sea, forming steep slopes, bare rocks, rocks on aquatic and underwaters clothed with coral, shell, hedgehog and water vegetation with different shapes and colors, with pure water.</p></div>
                        </div>
                    </div>
                </div>

                <div class="item">
                    <div class="col-lg-12">
                        <div class="card">
                            <img src="${contextPath}/resources/images/krorez.jpg" class="card-img-top" alt="Sporting Activities">
                            <div class="card-body">
                                <h5>Krorezi Beach</h5>
                                <p class="card-text"> Kroreza is the only virgin beach remained in the Albania Riviera.
                                    This wonderful bay is 500m far from Kakome Bay.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="item">
                    <div class="col-lg-12">
                        <div class="card">
                            <img src="${contextPath}/resources/images/orso.jpg" class="card-img-top" alt="Sporting Activities">
                            <div class="card-body">
                                <h5>Bay of Orso</h5>
                                <p class="card-text">
                                    Longitude: 19.366667
                                    Latitude: 40.316667
                                    DMS Lat: 401900
                                    DMS Long: 192200
                                    Distance from Saranda by sea: 53 mil
                                    Orso Bay is drawn on the National Geospatial Agency (NGA) Map.
                                    Orso Bay is located in the Vlora Area of the country of Albania. The bay is located at the latitude and longitude coordinates of 40.316667 and 19.366667. Fishing enthusiast can find interested places near or at Orso Bay, should print out the Google Map and take it with them on their fishing trip. This could be one of the best fishin or outdoors adventure locations in the regions of Eastern Europe.
                                </p></div>
                        </div>
                    </div>
                </div>

                <div class="item">
                    <div class="col-lg-12">
                        <div class="card">
                            <img src="${contextPath}/resources/images/butrint.jpg" class="card-img-top" alt="Sporting Activities">
                            <div class="card-body">
                                <h5>Butrint National Park</h5>
                                <h3>Before you make your way to Saranda, approaching the conclusion of the Riviera, make a special trip to Butrint NAtional Park, Albania's gem of the country and a UNESCO World Heritage site, South of Port of Saranda.</h3>
                                <p class="card-text">Gem of the Country!
                                    Sarande - Ksamil -Butrint
                                    Saranda is the largest coastal city of the south. It has countless beautiful beaches with the most popular aptly named Pasqyrat (in English, "mirrors") as the flat white rocks framing it make its sparkle appear infinite. Do not miss the beautiful port and the promenade! As you may know, near Saranda are the remains of the ancient city of Butrint, a UNESCO World Heritage site, hosting the best-preserved, beautiful ancient outdoor theater and floor mosaic. The beautiful island of Corfu is a 30 minute ferry ride away!</p>
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