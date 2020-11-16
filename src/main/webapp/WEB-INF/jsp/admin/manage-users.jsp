<%@ page contentType="text/html" pageEncoding="x-iso-8859-11" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>

<header>
    <link href="${contextPath}/resources/controlpanel/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/controlpanel/font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="${contextPath}/resources/controlpanel/css/plugins/iCheck/custom.css" rel="stylesheet">

    <link href="${contextPath}/resources/controlpanel/css/plugins/chosen/bootstrap-chosen.css" rel="stylesheet">

    <link href="${contextPath}/resources/controlpanel/css/plugins/bootstrap-tagsinput/bootstrap-tagsinput.css"
          rel="stylesheet">

    <link href="${contextPath}/resources/controlpanel/css/plugins/colorpicker/bootstrap-colorpicker.min.css"
          rel="stylesheet">

    <link href="${contextPath}/resources/controlpanel/css/plugins/cropper/cropper.min.css" rel="stylesheet">

    <link href="${contextPath}/resources/controlpanel/css/plugins/switchery/switchery.css" rel="stylesheet">

    <link href=${contextPath}/resources/controlpanel/"css/plugins/jasny/jasny-bootstrap.min.css" rel="stylesheet">

    <link href="${contextPath}/resources/controlpanel/css/plugins/nouslider/jquery.nouislider.css" rel="stylesheet">

    <link href="${contextPath}/resources/controlpanel/css/plugins/datapicker/datepicker3.css" rel="stylesheet">

    <link href="${contextPath}/resources/controlpanel/css/plugins/ionRangeSlider/ion.rangeSlider.css" rel="stylesheet">
    <link href="${contextPath}/resources/controlpanel/css/plugins/ionRangeSlider/ion.rangeSlider.skinFlat.css"
          rel="stylesheet">

    <link href="${contextPath}/resources/controlpanel/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css"
          rel="stylesheet">

    <link href="${contextPath}/resources/controlpanel/css/plugins/clockpicker/clockpicker.css" rel="stylesheet">

    <link href="${contextPath}/resources/controlpanel/css/plugins/daterangepicker/daterangepicker-bs3.css"
          rel="stylesheet">

    <link href="${contextPath}/resources/controlpanel/css/plugins/select2/select2.min.css" rel="stylesheet">

    <link href="${contextPath}/resources/controlpanel/css/plugins/touchspin/jquery.bootstrap-touchspin.min.css"
          rel="stylesheet">

    <link href="${contextPath}/resources/controlpanel/css/plugins/dualListbox/bootstrap-duallistbox.min.css"
          rel="stylesheet">

    <link href="${contextPath}/resources/controlpanel/css/animate.css" rel="stylesheet">
    <link href="${contextPath}/resources/controlpanel/css/styleAY.css" rel="stylesheet">
</header>
<jsp:include page="../headerCP.jsp"></jsp:include>
<div id="wrapper">
    <jsp:include page="../menu.jsp"></jsp:include>
    <div id="page-wrapper" class="gray-bg">
        <jsp:include page="../header2CP.jsp"></jsp:include>
        <div class="row wrapper border-bottom white-bg page-heading">
            <div class="col-lg-10">
                <h2> Albania Yachting Add Agent</h2>
            </div>
            <div class="col-lg-2">

            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="ibox ">
                    <div class="ibox-title">
                        Add or Update Users
                        <%--                <c:choose>--%>
                        <%--                    <c:when test="${not empty propertyVO.idprop}">--%>
                        <%--                        <h5><spring:message code="be.ashblerje.updateprop"/></h5>--%>
                        <%--                    </c:when>--%>
                        <%--                    <c:otherwise>--%>
                        <%--                        <h5><spring:message code="be.ashblerje.createprop"/></h5>--%>
                        <%--                    </c:otherwise>--%>
                        <%--                </c:choose>--%>
                        <div class="ibox-tools"><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></div>
                    </div>
                    <div class="ibox-content col-lg-12">
                        <form:form id="submitForm" modelAttribute="usersDTO" method="post">
                            <div class="form-group  row"><label class="col-sm-2 col-form-label">E-mail</label>
                                <div class="col-sm-10"><form:input type="text" path="email" class="form-control"
                                                                   required="true"/></div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group  row"><label class="col-sm-2 col-form-label">Username</label>
                                <div class="col-sm-10"><form:input type="text" path="username" class="form-control"
                                                                   required="true"/></div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group  row"><label class="col-sm-2 col-form-label">Password</label>
                                <div class="col-sm-10"><form:input type="password" path="password" class="form-control"
                                                                   required="true"/></div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="hr-line-dashed"></div>
                            <div class="col-lg-12 form-group  row"><label class="col-sm-2 col-form-label"></label>
                                <div class="col-sm-10">
                                        <%--                            <form:select id="persons" path="roles" required="required" class="select2_demo_3  col-lg-12"  >--%>
                                        <%--                                <c:forEach items="${listPersons}" var="persons">--%>
                                        <%--                                    <c:choose>--%>
                                        <%--                                        <c:when test="${not empty persons.idpersons and persons.idpersons == propertyVO.refpersons.idpersons}">--%>
                                        <%--                                            <option selected="selected" value="${persons.idpersons}">${persons.idpersons}</option>--%>
                                        <%--                                        </c:when>--%>
                                        <%--                                        <c:otherwise>--%>
                                        <%--                                            <option value="${persons.idpersons}">${persons.persname}</option>--%>
                                        <%--                                        </c:otherwise>--%>
                                        <%--                                    </c:choose>--%>
                                        <%--                                </c:forEach>--%>
                                        <%--                            </form:select>--%>
                                    <form:select id="roles" path="roles" required="true"
                                                 class="select2_demo_3  col-lg-12">
                                        <option selected="selected" value="ROLE_ADMIN">ADMIN</option>
                                        <option value="ROLE_CLIENT">CLIENT</option>
                                    </form:select>
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="col-lg-12 text-right">
                                <div class="col-sm-12 col-sm-offset-2 ">
                                    <button id="resetProperty" name="resetProperty" class="btn btn-white btn-sm"
                                            >
                                        Cancel
                                    </button>
                                    <c:choose>
                                        <c:when test="${not empty usersDTO.id}">
                                            <button id="updateUsers"  class="btn btn-primary btn-sm"
                                                    type="submit">Update
                                            </button>
                                        </c:when>
                                        <c:otherwise>
                                            <button id="saveUsers" onclick="createUsersFromAdmin(this)" class="btn btn-primary btn-sm"
                                                    type="submit">Save
                                            </button>
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                            </div>
                            <%--                    <form:hidden path="idprop"/>--%>
                        </form:form>


                    </div>
                    <div id="addFoto">
<%--                        <jsp:include page="../footer.jsp"></jsp:include>--%>
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

<!-- Sparkline demo data -->
<script src="${contextPath}/resources/controlpanel/js/demo/sparkline-demo.js"></script>

<!-- ChartJS-->
<script src="${contextPath}/resources/controlpanel/js/plugins/chartJs/Chart.min.js"></script>

<!-- Toastr -->
<script src="${contextPath}/resources/controlpanel/js/plugins/toastr/toastr.min.js"></script>

<script src="${contextPath}/resources/js/admin/utils.js"></script>

<script>
    var mem = $('#data_1 .input-group.date').datepicker({
        todayBtn: "linked",
        keyboardNavigation: false,
        forceParse: false,
        calendarWeeks: true,
        autoclose: true
    });
    $(".select2_demo_3").select2({
        placeholder: "Select person",
        allowClear: true,
        tabindex: 2
    });
    $('.chosen-select').chosen({width: "100%"});
    $(".select2_demo_3").select2({
        placeholder: "Select property type",
        allowClear: true,
        tabindex: 2
    });
    $('.chosen-select').chosen({width: "100%"});
    $(".select2_demo_3").select2({
        placeholder: "Select owner",
        allowClear: true,
        tabindex: 2
    });
    $('.chosen-select').chosen({width: "100%"});
    $(".select2_demo_3").select2({
        placeholder: "Select owner",
        allowClear: true,
        tabindex: 2
    });
    $('.chosen-select').chosen({width: "100%"});
</script>