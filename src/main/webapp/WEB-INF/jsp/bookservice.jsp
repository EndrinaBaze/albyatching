<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@page contentType="text/html" pageEncoding="x-iso-8859-11"%>

<!DOCTYPE html>
<c:set var="contextPath" value="${pageContext.request.contextPath}" /><html lang="zxx">
<%@ include file="./header.jsp" %>


<br>
<br>
<br>
<br>

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
<%--                       <div class="row">--%>
<%--                            <div class="col-md-6">--%>
<%--                                <div class="form-group">--%>
<%--                                    <input type="text" class="form-control" id="firstName" placeholder="First Name" value="" required>--%>
<%--                                </div>--%>
<%--                            </div>--%>

<%--                            <div class="col-md-6">--%>
<%--                                <div class="form-group">--%>
<%--                                    <input type="text" class="form-control" id="lastName" placeholder="Last Name" value="" required>--%>
<%--                                </div>--%>
<%--                            </div>--%>

<%--                            <div class="col-md-6">--%>
<%--                                <div class="form-group">--%>
<%--                                    <input type="text" class="form-control" id="firstName" placeholder="Contact" value="" required>--%>
<%--                                </div>--%>
<%--                            </div>--%>

<%--                            <div class="col-md-6">--%>
<%--                                <div class="form-group">--%>
<%--                                    <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="yourmailid@company.com">--%>
<%--                                </div>--%>
<%--                            </div>--%>


<%--                            <div class="col-md-6">--%>
<%--                                <div class="form-group">--%>
<%--                                    <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="From date">--%>
<%--                                </div>--%>
<%--                            </div>--%>

<%--                            <div class="col-md-6">--%>
<%--                                <div class="form-group">--%>
<%--                                    <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Till date">--%>
<%--                                </div>--%>
<%--                            </div>--%>

                              <div class="col-md-6 m-auto">
                                <div class="form-group text-center">
                                <select name= "URL" class="form-control custom-select" id="exampleFormControlSelect1" onchange="window.location.href= this.form.URL.options[this.form.URL.selectedIndex].value">
                                    <option value="#">Select Service</option>
                                    <option value="about">Arrival Formalities</option>
                                    <option value="provisioningform">Provisioning</option>
                                    <option value="viptoursform">VIP Tours</option>
                                    <option value="bunkeringform">Duty Free Bunkering</option>
                                </select>
                            </div>
                        </div>


<%--                            <div class="col-md-12">--%>
<%--                                <div class="form-group">--%>
<%--                                    <textarea class="form-control" placeholder="Type your message here..." spellcheck="false"></textarea>--%>
<%--                                </div>--%>
<%--                            </div>--%>

                            <div class="col-md-6 m-auto">
                                <div class="form-group text-center">
                                    <button type="button" class="btn btn-primary-color">Next</button>
                                </div>
                            </div>

                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

<br>
<br>
<br>


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