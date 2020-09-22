<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@page contentType="text/html" pageEncoding="x-iso-8859-11"%>

<!DOCTYPE html>
<c:set var="contextPath" value="${pageContext.request.contextPath}" /><html lang="zxx">
<%@ include file="./header.jsp" %>

<header>
    <!--  jQuery -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

    <!-- Isolated Version of Bootstrap, not needed if your site already uses Bootstrap -->
    <link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" />

    <!-- Bootstrap Date-Picker Plugin -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
</header>
<br>
<br>
<br>

<!-- Special version of Bootstrap that only affects content wrapped in .bootstrap-iso -->
<link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" />

<!--Font Awesome (added because you use icons in your prepend/append)-->
<link rel="stylesheet" href="https://formden.com/static/cdn/font-awesome/4.4.0/css/font-awesome.min.css" />

<!-- Inline CSS based on choices in "Settings" tab -->
<style>.bootstrap-iso .formden_header h2, .bootstrap-iso .formden_header p, .bootstrap-iso form{font-family: Arial, Helvetica, sans-serif; color: black}.bootstrap-iso form button, .bootstrap-iso form button:hover{color: white !important;} .asteriskField{color: red;}</style>




<script>
    $(document).ready(function(){
        var date_input=$('input[name="date"]'); //our date input has the name "date"
        var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
        date_input.datepicker({
            format: 'mm/dd/yyyy',
            container: container,
            todayHighlight: true,
            autoclose: true,
        })
    })
</script>

<section>
    <div class="container">
        <div class="row justify-content-md-center">
            <div class="col-lg-6 text-center">
                <div class="title">
                    <h2>Duty Free Bunkering</h2>
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

                            <!-- HTML Form (wrapped in a .bootstrap-iso div) -->
                            <div class="bootstrap-iso">
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <form method="post">
                                                <div class="form-group ">
                                                    <label class="control-label " for="date">
                                                        From date
                                                    </label>
                                                    <div class="input-group">
                                                        <div class="input-group-addon">
                                                            <i class="fa fa-calendar">
                                                            </i>
                                                        </div>
                                                        <input class="form-control" id="date" name="date" placeholder="MM/DD/YYYY" type="text"/>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="col-md-6">
                                <div class="form-group">
                                    <p> Name </p>
                                    <input type="text" class="form-control" id="lastName" name="lastname" placeholder="Last Name" value="" required>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <p> Contact </p>
                                    <input type="text" class="form-control" id="firstName" name="phone_number" placeholder="Phone Number" value="" required>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <p>Email Address</p>
                                    <input type="email" class="form-control" id="exampleFormControlInput1" name="email" placeholder="yourmailid@company.com" required>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <p>Quantity</p>
                                    <input type="number" class="form-control" id="exampleFormControlInput1" name="quantity" placeholder="Quantity" required>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <p>City</p>
                                    <input type="text" class="form-control" id="exampleFormControlInput1" name="dutyfree_city" placeholder="City" required>
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
                                    <p> Comments </p>
                                    <textarea class="form-control" placeholder="Type here..." name="comments" spellcheck="false"></textarea>
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

