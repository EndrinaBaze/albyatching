<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
    <%--include header--%>
    <%@ include file="./headerCP.jsp" %>
</head>

<body>

<div id="wrapper">
    <%@ include file="./menu.jsp" %>
    <div id="page-wrapper" class="gray-bg">
        <%@ include file="./header2CP.jsp" %>
        <div class="row wrapper border-bottom white-bg page-heading">
            <div class="col-lg-10">
                <h2> Arrival Formalities</h2>
            </div>
            <div class="col-lg-2">

            </div>
        </div>
        <div class="wrapper wrapper-content animated fadeInRight">
            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox ">
                        <div class="ibox-title">
                            <h5>Arrival Formalities Table</h5>
                            <div class="ibox-tools">
                                <a class="collapse-link">
                                    <i class="fa fa-chevron-up"></i>
                                </a>
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                    <i class="fa fa-wrench"></i>
                                </a>
                                <ul class="dropdown-menu dropdown-user">
                                    <li><a href="#" class="dropdown-item">Config option 1</a>
                                    </li>
                                    <li><a href="#" class="dropdown-item">Config option 2</a>
                                    </li>
                                </ul>
                                <a class="close-link">
                                    <i class="fa fa-times"></i>
                                </a>
                            </div>
                        </div>
                        <div class="ibox-content">

                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover dataTables-example" >
                                    <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>From</th>
                                        <th>To</th>
                                        <th>Time</th>
                                        <th>Action</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${listArrivalFormalities}" var="arrivalFormalities">
                                        <tr class="gradeC">
                                            <td>${arrivalFormalities.id}</td>
                                            <td>${arrivalFormalities.arrivalFrom}</td>
                                            <td>${arrivalFormalities.arrivalTo}</td>
                                            <td>${arrivalFormalities.arrivalTime}</td>
                                            <td style="width: 5%;">
                                                <table>
                                                    <tr>
                                                        <td>

                                                            <small>
                                                                <button class="btn btn-primary  dim " type="submit"  data-toggle="tooltip" data-placement="top" title="Edit"/><i>Confirm</i> </button>
                                                            </small>
                                                        </td>
                                                        <td>
                                                            <small>
                                                                <button class="btn btn-danger  dim" type="submit" data-toggle="tooltip" data-placement="top" title="Delete"/><i>Delete</i></button>
                                                            </small>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td></td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                    <tfoot>
                                    <tr>
                                        <th>No</th>
                                        <th>From</th>
                                        <th>To</th>
                                        <th>Time</th>
                                        <th>Action</th>
                                    </tr>
                                    </tfoot>
                                </table>
                            </div>
                            <%--include footer--%>
                            <%@ include file="./footerCP.jsp" %>
                        </div>
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

<script src="${contextPath}/resources/controlpanel/js/plugins/dataTables/datatables.min.js"></script>
<script src="${contextPath}/resources/controlpanel/js/plugins/dataTables/dataTables.bootstrap4.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="${contextPath}/resources/controlpanel/js/inspinia.js"></script>
<script src="${contextPath}/resources/controlpanel/js/plugins/pace/pace.min.js"></script>

<!-- Page-Level Scripts -->
<script>
    $(document).ready(function(){
        $('.dataTables-example').DataTable({
            pageLength: 25,
            responsive: true,
            dom: '<"html5buttons"B>lTfgitp',
            buttons: [
                { extend: 'copy'},
                {extend: 'csv'},
                {extend: 'excel', title: 'ExampleFile'},
                {extend: 'pdf', title: 'ExampleFile'},

                {extend: 'print',
                    customize: function (win){
                        $(win.document.body).addClass('white-bg');
                        $(win.document.body).css('font-size', '10px');

                        $(win.document.body).find('table')
                            .addClass('compact')
                            .css('font-size', 'inherit');
                    }
                }
            ]

        });

    });

</script>

</body>

</html>
