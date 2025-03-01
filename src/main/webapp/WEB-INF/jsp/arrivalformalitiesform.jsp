<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@page contentType="text/html" pageEncoding="x-iso-8859-11"%>

<!DOCTYPE html>
<c:set var="contextPath" value="${pageContext.request.contextPath}" /><html lang="zxx">

<header>
    <link href="${contextPath}/resources/controlpanel/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/controlpanel/font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="${contextPath}/resources/controlpanel/css/plugins/iCheck/custom.css" rel="stylesheet">

    <link href="${contextPath}/resources/controlpanel/css/plugins/chosen/bootstrap-chosen.css" rel="stylesheet">

    <link href="${contextPath}/resources/controlpanel/css/plugins/bootstrap-tagsinput/bootstrap-tagsinput.css" rel="stylesheet">

    <link href="${contextPath}/resources/controlpanel/css/plugins/colorpicker/bootstrap-colorpicker.min.css" rel="stylesheet">

    <link href="${contextPath}/resources/controlpanel/css/plugins/cropper/cropper.min.css" rel="stylesheet">

    <link href="${contextPath}/resources/controlpanel/css/plugins/switchery/switchery.css" rel="stylesheet">

    <link href=${contextPath}/resources/controlpanel/"css/plugins/jasny/jasny-bootstrap.min.css" rel="stylesheet">

    <link href="${contextPath}/resources/controlpanel/css/plugins/nouslider/jquery.nouislider.css" rel="stylesheet">

    <link href="${contextPath}/resources/controlpanel/css/plugins/datapicker/datepicker3.css" rel="stylesheet">

    <link href="${contextPath}/resources/controlpanel/css/plugins/ionRangeSlider/ion.rangeSlider.css" rel="stylesheet">
    <link href="${contextPath}/resources/controlpanel/css/plugins/ionRangeSlider/ion.rangeSlider.skinFlat.css" rel="stylesheet">

    <link href="${contextPath}/resources/controlpanel/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">

    <link href="${contextPath}/resources/controlpanel/css/plugins/clockpicker/clockpicker.css" rel="stylesheet">

    <link href="${contextPath}/resources/controlpanel/css/plugins/daterangepicker/daterangepicker-bs3.css" rel="stylesheet">

    <link href="${contextPath}/resources/controlpanel/css/plugins/select2/select2.min.css" rel="stylesheet">

    <link href="${contextPath}/resources/controlpanel/css/plugins/touchspin/jquery.bootstrap-touchspin.min.css" rel="stylesheet">

    <link href="${contextPath}/resources/controlpanel/css/plugins/dualListbox/bootstrap-duallistbox.min.css" rel="stylesheet">

    <link href="${contextPath}/resources/controlpanel/css/animate.css" rel="stylesheet">
    <link href="${contextPath}/resources/controlpanel/css/styleAY.css" rel="stylesheet">
</header>
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
                                                       <div class="form-group" id="data_1">
                                                           <p> Arrival From </p>
                                                               <div class="input-group date">
                                                                   <div class="input-group-addon">
                                                                       <i class="fa fa-calendar ">
                                                                       </i>
                                                                   </div>
                                                                   <input class="input field" class="form-control" value="" placeholder="MM/DD/YYYY" type="text"/>
                                                           </div>
                                                       </div>
                                                   </div>

                            <div class="col-md-6">
                                <div class="form-group" id="data_1">
                                    <p> Arrival To </p>
                                    <div class="input-group date">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar">
                                            </i>
                                        </div>
                                        <input  class="input field" class="form-control" value="" placeholder="MM/DD/YYYY" type="text"/>
                                    </div>
                                </div>
                            </div>


<%--                                                       <div class="form-group">--%>
<%--                                                           <p>Date</p>--%>
<%--                                                           <input type="date" class="form-control" id="exampleFormControlInput1" name="arrivalTime" placeholder="dd.mm.yyyy" value="" required>--%>
<%--                                                       </div>--%>
<%--                                                   </div>--%>

                                                   <div class="col-md-6" >
                                                      <div class="form-group" >
                                                           <p> Time</p>
                                                       <div style>
                                                               <input type="number" id="hour" name="quantity" min="00" max="23">
                                                   </div>
                                                       <p style="margin-left: 35%; margin-top: -11.5%"><b>:</b></p>
                                                       <div style="margin-top: -10%; margin-left:40%">
                                                       <input  type="number" id="minutes" name="quantity" min="00" max="60">
                                                       </div>
                                                   </div>
                                                   </div>

                                                    <div class="col-md-6" >
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

<br>
<br>
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
<!-- Mainly scripts -->
<script src="${contextPath}/resources/controlpanel/js/jquery-3.1.1.min.js"></script>
<script src="${contextPath}/resources/controlpanel/js/popper.min.js"></script>
<script src="${contextPath}/resources/controlpanel/js/bootstrap.js"></script>

<!-- Custom and plugin javascript -->
<script src="${contextPath}/resources/controlpanel/js/inspinia.js"></script>
<script src="${contextPath}/resources/controlpanel/js/plugins/pace/pace.min.js"></script>
<script src="${contextPath}/resources/controlpanel/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Chosen -->
<script src="${contextPath}/resources/controlpanel/js/plugins/chosen/chosen.jquery.js"></script>

<!-- JSKnob -->
<script src="${contextPath}/resources/controlpanel/js/plugins/jsKnob/jquery.knob.js"></script>

<!-- Data picker -->
<script src="${contextPath}/resources/controlpanel/js/plugins/datapicker/bootstrap-datepicker.js"></script>


<!-- MENU -->
<script src="${contextPath}/resources/controlpanel/js/plugins/metisMenu/jquery.metisMenu.js"></script>

<!-- Image cropper -->
<script src="${contextPath}/resources/controlpanel/js/plugins/cropper/cropper.min.js"></script>

<!-- Date range use moment.js same as full calendar plugin -->
<script src="${contextPath}/resources/controlpanel/js/plugins/fullcalendar/moment.min.js"></script>

<!-- Date range picker -->
<script src="${contextPath}/resources/controlpanel/js/plugins/daterangepicker/daterangepicker.js"></script>

<!-- Select2 -->
<script src="${contextPath}/resources/controlpanel/js/plugins/select2/select2.full.min.js"></script>


<!-- Tags Input -->
<script src="${contextPath}/resources/controlpanel/js/plugins/bootstrap-tagsinput/bootstrap-tagsinput.js"></script>



<script>
    $(document).ready(function(){

        $('.tagsinput').tagsinput({
            tagClass: 'label label-primary'
        });

        var $image = $(".image-crop > img")
        $($image).cropper({
            aspectRatio: 1.618,
            preview: ".img-preview",
            done: function(data) {
                // Output the result data for cropping image.
            }
        });

        var $inputImage = $("#inputImage");
        if (window.FileReader) {
            $inputImage.change(function() {
                var fileReader = new FileReader(),
                    files = this.files,
                    file;

                if (!files.length) {
                    return;
                }

                file = files[0];

                if (/^image\/\w+$/.test(file.type)) {
                    fileReader.readAsDataURL(file);
                    fileReader.onload = function () {
                        $inputImage.val("");
                        $image.cropper("reset", true).cropper("replace", this.result);
                    };
                } else {
                    showMessage("Please choose an image file.");
                }
            });
        } else {
            $inputImage.addClass("hide");
        }

        $("#download").click(function() {
            window.open($image.cropper("getDataURL"));
        });

        $("#zoomIn").click(function() {
            $image.cropper("zoom", 0.1);
        });

        $("#zoomOut").click(function() {
            $image.cropper("zoom", -0.1);
        });

        $("#rotateLeft").click(function() {
            $image.cropper("rotate", 45);
        });

        $("#rotateRight").click(function() {
            $image.cropper("rotate", -45);
        });

        $("#setDrag").click(function() {
            $image.cropper("setDragMode", "crop");
        });

        var mem = $('#data_1 .input-group.date').datepicker({
            todayBtn: "linked",
            keyboardNavigation: false,
            forceParse: false,
            calendarWeeks: true,
            autoclose: true
        });

        var yearsAgo = new Date();
        yearsAgo.setFullYear(yearsAgo.getFullYear() - 20);

        $('#selector').datepicker('setDate', yearsAgo );


        $('#data_2 .input-group.date').datepicker({
            startView: 1,
            todayBtn: "linked",
            keyboardNavigation: false,
            forceParse: false,
            autoclose: true,
            format: "dd/mm/yyyy"
        });

        $('#data_3 .input-group.date').datepicker({
            startView: 2,
            todayBtn: "linked",
            keyboardNavigation: false,
            forceParse: false,
            autoclose: true
        });

        $('#data_4 .input-group.date').datepicker({
            minViewMode: 1,
            keyboardNavigation: false,
            forceParse: false,
            forceParse: false,
            autoclose: true,
            todayHighlight: true
        });

        $('#data_5 .input-daterange').datepicker({
            keyboardNavigation: false,
            forceParse: false,
            autoclose: true
        });

        var elem = document.querySelector('.js-switch');
        var switchery = new Switchery(elem, { color: '#1AB394' });

        var elem_2 = document.querySelector('.js-switch_2');
        var switchery_2 = new Switchery(elem_2, { color: '#ED5565' });

        var elem_3 = document.querySelector('.js-switch_3');
        var switchery_3 = new Switchery(elem_3, { color: '#1AB394' });

        var elem_4 = document.querySelector('.js-switch_4');
        var switchery_4 = new Switchery(elem_4, { color: '#f8ac59' });
        switchery_4.disable();

        $('.i-checks').iCheck({
            checkboxClass: 'icheckbox_square-green',
            radioClass: 'iradio_square-green'
        });

        $('.demo1').colorpicker();

        var divStyle = $('.back-change')[0].style;
        $('#demo_apidemo').colorpicker({
            color: divStyle.backgroundColor
        }).on('changeColor', function(ev) {
            divStyle.backgroundColor = ev.color.toHex();
        });

        $('.clockpicker').clockpicker();

        $('input[name="daterange"]').daterangepicker();

        $('#reportrange span').html(moment().subtract(29, 'days').format('MMMM D, YYYY') + ' - ' + moment().format('MMMM D, YYYY'));

        $('#reportrange').daterangepicker({
            format: 'MM/DD/YYYY',
            startDate: moment().subtract(29, 'days'),
            endDate: moment(),
            minDate: '01/01/2012',
            maxDate: '12/31/2015',
            dateLimit: { days: 60 },
            showDropdowns: true,
            showWeekNumbers: true,
            timePicker: false,
            timePickerIncrement: 1,
            timePicker12Hour: true,
            ranges: {
                'Today': [moment(), moment()],
                'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                'This Month': [moment().startOf('month'), moment().endOf('month')],
                'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
            },
            opens: 'right',
            drops: 'down',
            buttonClasses: ['btn', 'btn-sm'],
            applyClass: 'btn-primary',
            cancelClass: 'btn-default',
            separator: ' to ',
            locale: {
                applyLabel: 'Submit',
                cancelLabel: 'Cancel',
                fromLabel: 'From',
                toLabel: 'To',
                customRangeLabel: 'Custom',
                daysOfWeek: ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr','Sa'],
                monthNames: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
                firstDay: 1
            }
        }, function(start, end, label) {
            console.log(start.toISOString(), end.toISOString(), label);
            $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
        });

        $(".select2_demo_1").select2();
        $(".select2_demo_2").select2();
        $(".select2_demo_3").select2({
            placeholder: "Select a state",
            allowClear: true
        });


        $(".touchspin1").TouchSpin({
            buttondown_class: 'btn btn-white',
            buttonup_class: 'btn btn-white'
        });

        $(".touchspin2").TouchSpin({
            min: 0,
            max: 100,
            step: 0.1,
            decimals: 2,
            boostat: 5,
            maxboostedstep: 10,
            postfix: '%',
            buttondown_class: 'btn btn-white',
            buttonup_class: 'btn btn-white'
        });

        $(".touchspin3").TouchSpin({
            verticalbuttons: true,
            buttondown_class: 'btn btn-white',
            buttonup_class: 'btn btn-white'
        });

        $('.dual_select').bootstrapDualListbox({
            selectorMinimalHeight: 160
        });


    });

    $('.chosen-select').chosen({width: "100%"});

    $("#ionrange_1").ionRangeSlider({
        min: 0,
        max: 5000,
        type: 'double',
        prefix: "$",
        maxPostfix: "+",
        prettify: false,
        hasGrid: true
    });

    $("#ionrange_2").ionRangeSlider({
        min: 0,
        max: 10,
        type: 'single',
        step: 0.1,
        postfix: " carats",
        prettify: false,
        hasGrid: true
    });

    $("#ionrange_3").ionRangeSlider({
        min: -50,
        max: 50,
        from: 0,
        postfix: "?",
        prettify: false,
        hasGrid: true
    });

    $("#ionrange_4").ionRangeSlider({
        values: [
            "January", "February", "March",
            "April", "May", "June",
            "July", "August", "September",
            "October", "November", "December"
        ],
        type: 'single',
        hasGrid: true
    });

    $("#ionrange_5").ionRangeSlider({
        min: 10000,
        max: 100000,
        step: 100,
        postfix: " km",
        from: 55000,
        hideMinMax: true,
        hideFromTo: false
    });

    $(".dial").knob();

    var basic_slider = document.getElementById('basic_slider');

    noUiSlider.create(basic_slider, {
        start: 40,
        behaviour: 'tap',
        connect: 'upper',
        range: {
            'min':  20,
            'max':  80
        }
    });

    var range_slider = document.getElementById('range_slider');

    noUiSlider.create(range_slider, {
        start: [ 40, 60 ],
        behaviour: 'drag',
        connect: true,
        range: {
            'min':  20,
            'max':  80
        }
    });

    var drag_fixed = document.getElementById('drag-fixed');

    noUiSlider.create(drag_fixed, {
        start: [ 40, 60 ],
        behaviour: 'drag-fixed',
        connect: true,
        range: {
            'min':  20,
            'max':  80
        }
    });


</script>



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



</body>

</html>
