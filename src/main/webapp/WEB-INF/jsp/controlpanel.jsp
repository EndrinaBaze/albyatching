<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@page contentType="text/html" pageEncoding="x-iso-8859-11"%>

<!DOCTYPE html>
<c:set var="contextPath" value="${pageContext.request.contextPath}" /><html lang="zxx">

<%--include header--%>
<%@ include file="./headerCP.jsp" %>

<body>
    <div id="wrapper">
<%--include menu--%>
    <%@ include file="./menu.jsp" %>
    <div id="page-wrapper" class="gray-bg dashbard-1">
        <%@ include file="./header2CP.jsp" %>

                <div class="row  border-bottom white-bg dashboard-header">

                    <div class="col-md-3">
                        <h2>Welcome Endrina</h2>
                        <small>You have 42 messages and 6 notifications.</small>
                    </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Mainly scripts -->
    <script src="${contextPath}/resources/controlpanel/js/jquery-3.1.1.min.js"></script>
    <script src="${contextPath}/resources/controlpanel/js/popper.min.js"></script>
    <script src="${contextPath}/resources/controlpanel/js/bootstrap.js"></script>
    <script src="${contextPath}/resources/controlpanel/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="${contextPath}/resources/controlpanel/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Flot -->
    <script src="${contextPath}/resources/controlpanel/js/plugins/flot/jquery.flot.js"></script>
    <script src="${contextPath}/resources/controlpanel/js/plugins/flot/jquery.flot.tooltip.min.js"></script>
    <script src="${contextPath}/resources/controlpanel/js/plugins/flot/jquery.flot.spline.js"></script>
    <script src="${contextPath}/resources/controlpanel/js/plugins/flot/jquery.flot.resize.js"></script>
    <script src="${contextPath}/resources/controlpanel/js/plugins/flot/jquery.flot.pie.js"></script>

    <!-- Peity -->
    <script src="${contextPath}/resources/controlpanel/js/plugins/peity/jquery.peity.min.js"></script>
    <script src="${contextPath}/resources/controlpanel/js/demo/peity-demo.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="${contextPath}/resources/controlpanel/js/inspinia.js"></script>
    <script src="${contextPath}/resources/controlpanel/js/plugins/pace/pace.min.js"></script>

    <!-- jQuery UI -->
    <script src="${contextPath}/resources/controlpanel/js/plugins/jquery-ui/jquery-ui.min.js"></script>

    <!-- GITTER -->
    <script src="${contextPath}/resources/controlpanel/js/plugins/gritter/jquery.gritter.min.js"></script>

    <!-- Sparkline -->
    <script src="${contextPath}/resources/controlpanel/js/plugins/sparkline/jquery.sparkline.min.js"></script>

    <!-- Sparkline demo data  -->
    <script src="${contextPath}/resources/controlpanel/js/demo/sparkline-demo.js"></script>

    <!-- ChartJS-->
    <script src="${contextPath}/resources/controlpanel/js/plugins/chartJs/Chart.min.js"></script>

    <!-- Toastr -->
    <script src="${contextPath}/resources/controlpanel/js/plugins/toastr/toastr.min.js"></script>

</body>
</html>
