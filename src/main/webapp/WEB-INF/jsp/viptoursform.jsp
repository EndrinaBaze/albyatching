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

<section>
    <div class="container">
        <div class="row justify-content-md-center">
            <div class="col-lg-6 text-center">
                <div class="title">
                    <h2>Arrival Formalities</h2>
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
                                    <p> From date</p>
                                    <input type="date" class="form-control" id="exampleFormControlInput1" placeholder="dd.mm.yyyy" value="" required>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <p> Till date</p>
                                    <input type="date" class="form-control" id="exampleFormControlInput1" placeholder="dd.mm.yyyy" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <p> First Name </p>
                                    <input type="text" class="form-control" id="firstName" placeholder="First Name" value="" required>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <p> Last name</p>
                                    <input type="text" class="form-control" id="lastName" placeholder="Last Name" value="" required>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <p> Contact </p>
                                    <input type="text" class="form-control" id="firstName" placeholder="Phone Number" value="" required>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <p>Email Address</p>
                                    <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="yourmailid@company.com" required>
                                </div>
                            </div>



                            <%--                        <div class="col-md-6 m-auto">--%>
                            <%--                            <div class="form-group text-center">--%>
                            <%--                                <select class="form-control custom-select" id="exampleFormControlSelect1">--%>
                            <%--                                    <option>Select Service</option>--%>
                            <%--                                    <option>Arrival Formalities</option>--%>
                            <%--                                    <option>Provisioning</option>--%>
                            <%--                                    <option>VIP Tours</option>--%>
                            <%--                                    <option>Duty Free Bunkering</option>--%>
                            <%--                                </select>--%>
                            <%--                            </div>--%>
                            <%--                        </div>--%>

                            <div class="col-md-12">
                                <div class="form-group">
                                    <p> Leave a message </p>
                                    <textarea class="form-control" placeholder="Type here..." spellcheck="false"></textarea>
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