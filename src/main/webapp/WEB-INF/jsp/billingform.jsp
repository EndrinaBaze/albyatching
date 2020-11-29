<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@page contentType="text/html" pageEncoding="x-iso-8859-11"%>
<!DOCTYPE html>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<html lang="zxx">
<%@ include file="./header.jsp" %>

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


</html>