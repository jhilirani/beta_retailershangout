<body class="homePage">
        <!-- header -->
        <header>
            <!-- topBar -->
            <nav class="topBar">
                <div class="container clearfix">
                    <ul class="list-inline priNav">
                        <li><a href="tel:+911234567890"><i class="fa fa-phone"></i> 1234567890</a></li>
                        <li><a href="support@retailershangout.com"><i class="fa fa-envelope"></i> support@retailershangout.com</a></li>
                    </ul>
                    <ul class="list-inline secNav">
                        <li><a href="buyerSeller.php"><i class="fa fa-phone"></i> Buyer & Seller Support</a></li>
                        <li><a href=""><i class="fa fa-heart"></i> Wishlist</a></li>
                        <li class="divider"></li>
                        <li><a href="" data-toggle="modal" data-target="#loginModal"><i class="fa fa-sign-in"></i> Sign In</a></li>
                        <li><a href="" data-toggle="modal" data-target="#regiterModal"><i class="fa fa-user-plus"></i> Sign Up</a></li>
                    </ul>
                </div>
            </nav> <!-- /.topBar -->
            <!-- brand & Search -->
            <nav class="navbar navbar-default">
                <div class="container">
                    <div class="navbar-header clearfix">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#mainNav" aria-expanded="false"><i class="fa fa-bars"></i></button>
                        <button type="button" class="navbar-toggle collapsed right" data-toggle="collapse" data-target="#searchBar" aria-expanded="false"><i class="fa fa-search"></i></button>
                        <h1><a href="index.php" class="navbar-brand">Your Company</a></h1>
                    </div>
                    <div class="navbar-right cart hidden-xs">
                        <a href="" data-toggle="modal" data-target="#cartModal"><i class="fa fa-truck pull-left"></i> Your Truck <br/> <span class="text-pri"><i class="fa fa-inr"></i> 0 - <span >0 items</span></span></a>
                    </div>
                    <div class="collapse navbar-collapse" id="searchBar">
                        <div class="input-group searchBar"> 
                            <input type="text" class="form-control" placeholder="Type a keyword" aria-describedby="basic-addon1"> 
                            <span class="input-group-btn" id="basic-addon1"><button class="btn btn-default" type="button"><i class="fa fa-search"></i></button></span>
                        </div>
                    </div>
                </div>
                <nav class="navbar-collapse collapse" id="mainNav">
                    <div class="container">
                        <ul class="nav navbar-nav">
                            <li class="active hidden-xs"><a href="index.php"><i class="fa fa-home"></i></a></li>
                            <li><a href="#">New Arrivals <span class="menu-label hot-menu hidden-xs">hot</span></a></li>
                            <li><a href="3">Brand Zone</a></li>
                            <li><a href="#">Payment Policy</a></li>
                            <li><a href="">Customer Service</a></li>
                        </ul>
                        <!-- mobile nav -->
                        <ul class="nav navbar-nav visible-xs mobileNav">
                            <li><a href="">Wishlist</a></li>
                            <li><a href="">Your Truck</a></li>
                            <li><a href="" data-toggle="modal" data-target="#loginModal">Sign In</a></li>
                            <li><a href="" data-toggle="modal" data-target="#regiterModal">Sign Up</a></li>
                            <li class="dropdown">
                                <a href="" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="fasle">My Account</a>
                                <ul class="dropdown-menu">
                                    <li><a href="">Your Profile</a></li>
                                    <li><a href="">Edit Profile</a></li>
                                    <li><a href="">Change Password</a></li>
                                    <li><a href="">Order History</a></li>
                                    <li><a href="">Sign Out</a></li>
                                </ul>
                            </li>
                        </ul> <!-- /.mobile nav -->
                        <ul class="nav navbar-nav navbar-right download">
                            <li class="active"><a href=""><i class="fa fa-cloud-download">&nbsp;</i> Download <i class="fa fa-mobile-phone"></i> Now</a></li>
                        </ul>
                    </div>
                </nav>
            </nav>
        </header> <!-- /.header -->