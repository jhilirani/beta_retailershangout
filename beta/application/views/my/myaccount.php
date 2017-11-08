<?php echo $html_heading; echo $header;?>
<div class="breadcrumb">
    <div class="container">
        <ul class="filters visible-xs visible-sm pull-left">
            <li class="filterBtn"><span><i class="fa fa-bars"></i> Menu</span></li>
        </ul>
    </div><!-- /.container -->
</div><!-- /.breadcrumb -->

<div class="bodyContent" id="profilePage">
    <div class='container'>
        <div class='row'>
            <div class="col-xs-12 col-sm-12 col-md-3 sidebar filters">
                <span class="cross visible-xs visible-sm">&times;</span>
                <div class="side-menu animateDropdown">
                    <nav class="yamm megamenu-horizontal" role="navigation">
                        <?php echo $userMenu;?>
                    </nav><!-- /.megamenu-horizontal -->
                </div> <!-- /.sidemenu-holder -->
            </div> <!-- /.sidebar -->
            <div class="col-xs-12 col-sm-12 col-md-9">
                <div class="row">
                    <div class="col-xs-6 col-sm-4 col-md-4">
                        <div class="thumbnail icon">
                            <a href="<?php echo BASE_URL.'my-profile';?>"><i class="fa fa-user fa-5x"></i></a>
                            <div class="caption">
                               <a href="<?php echo BASE_URL.'my-profile';?>" class="title">Update Profile</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-4 col-md-4">
                        <div class="thumbnail icon">
                            <a href="<?php echo BASE_URL.'my-shipping-address';?>"><i class="fa fa-map-marker fa-5x"></i></a>
                            <div class="caption">
                               <a href="<?php echo BASE_URL.'my-shipping-address';?>" class="title">Shipping Address</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-4 col-md-4">
                        <div class="thumbnail icon">
                            <a href="billing-address.php"><i class="fa fa-map-pin fa-5x"></i></a>
                            <div class="caption">
                               <a href="<?php echo BASE_URL.'my-billing-address';?>" class="title">Billing Address</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-4 col-md-4">
                        <div class="thumbnail icon">
                            <a href="<?php echo BASE_URL.'my-groups';?>"><i class="fa fa-users fa-5x"></i></a>
                            <div class="caption">
                               <a href="<?php echo BASE_URL.'my-groups';?>" class="title">My Hangout</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-4 col-md-4">
                        <div class="thumbnail icon">
                            <a href="<?php echo BASE_URL.'my-orders';?>"><i class="fa fa-history fa-5x"></i></a>
                            <div class="caption">
                               <a href="<?php echo BASE_URL.'my-orders';?>" class="title">My Orders</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-4 col-md-4">
                        <div class="thumbnail icon">
                            <a href="<?php echo BASE_URL.'my-finance-info';?>"><i class="fa fa-line-chart fa-5x"></i></a>
                            <div class="caption">
                               <a href="<?php echo BASE_URL.'my-finance-info';?>" class="title">Finance Info</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div>
</div>
<?php echo $footer;?>