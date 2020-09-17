<html>
<%@ include file="./header.jsp" %>

<br>
<br>
<br>

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

                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="From date">
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Till date">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="firstName" placeholder="First Name" value="" required>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="lastName" placeholder="Last Name" value="" required>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="firstName" placeholder="Contact" value="" required>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="yourmailid@company.com">
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
                                    <textarea class="form-control" placeholder="Type your message here..." spellcheck="false"></textarea>
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

</body>

</html>