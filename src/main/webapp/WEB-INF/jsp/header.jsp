
<c:set var="contextPath" value="${pageContext.request.contextPath}" /><html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title></title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${contextPath}/resources/css/bootstrap/bootstrap.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/bootstrap/bootstrap-grid.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/bootstrap/bootstrap-reboot.css">

    <!-- Favicon -->
    <link rel="shortcut icon" href="${contextPath}/resources/images/favicon.ico" />

    <!-- Fontawesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

    <!-- Google font -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custome CSS -->
    <link rel="stylesheet" href="${contextPath}/resources/css/custome/style.css">

    <!-- Responsive CSS -->
    <link rel="stylesheet" href="${contextPath}/resources/css/custome/responsive.css">

    <!-- owl carousel css -->
    <link rel="stylesheet" href="${contextPath}/resources/css/owl-carousel/owl.carousel.css" type="text/css">
    <link rel="stylesheet" href="${contextPath}/resources/css/owl-carousel/owl.theme.default.min.css" type="text/css">

    <!-- magnific popup css -->
    <link rel="stylesheet" href="${contextPath}/resources/css/magnific/magnific-popup.css" type="text/css">

</head>

    <!-- Nav Bar Starts here -->

    <div class="site-mobile-menu site-navbar-target">
        <div class="site-mobile-menu-header">
          <div class="site-mobile-menu-close mt-3">
            <span class="icofont-close fas fa-times js-menu-toggle"></span>
          </div>
        </div>
        <div class="site-mobile-menu-body"></div>
      </div>

      <header class="site-navbar js-sticky-header site-navbar-target">

        <div class="container">
          <div class="row align-items-center">

            <div class="col-6 col-lg-2">
              <a href="/" class="company-logo">
                  <li> <img src="${contextPath}/resources/images/logo.png"> </li>
              </a>
            </div>

            <div class="col-12 col-md-10 d-none d-lg-block">
                <nav class="site-navigation position-relative text-right">
                        <ul class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">
                            <li><a href="/" class="nav-link">Home</a></li>
                            <li><a href="about" class="nav-link">About Us</a></li>
                            <li class="has-children">
                                <a href="services" class="nav-link">Services</a>
                                <ul class="dropdown">
                                    <li> <a href="#" class="nav-link">Yacht </a> </li>
                                </ul>
                            </li>
                            <li><a href="${contextPath}/contact" class="nav-link">Contact</a></li>
                        </ul>
                </nav>
            </div>


            <div class="col-6 d-inline-block d-lg-none ml-md-0 py-3" style="position: relative; top: 3px;">

              <a href="#" class="burger site-menu-toggle js-menu-toggle" data-toggle="collapse"
                data-target="#main-navbar">
                <span></span>
              </a>
            </div>

          </div>
        </div>

      </header>

    <!-- Nav Bar Ends here -->

