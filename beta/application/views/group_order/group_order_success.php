<?php echo $html_heading; echo $header; $currencySymbol='<i class="fa fa-rupee"></i>';//($this->session->userdata('FE_SESSION_USER_LOCATION_VAR')=="IN") ? '<i class="fa fa-rupee"></i>' :'KSh';
?>
<script src="<?php echo SiteJSURL;?>user-all-my-js.js" type="text/javascript"></script>
<div class="breadcrumb">
    <div class="container">
        <ul class="filters visible-xs visible-sm pull-left">
            <li class="filterBtn"><span><i class="fa fa-bars"></i> Menu</span></li>
        </ul>
    </div><!-- /.container -->
</div><!-- /.breadcrumb -->
<div class="bodyContent">
    <div class='container'>
        <div class='row'>
            <div class="col-xs-12 col-sm-12 col-md-3 sidebar filters">
                <span class="cross visible-xs visible-sm">&times;</span>
                <div class="side-menu animateDropdown">
                    <nav class="yamm megamenu-horizontal" role="navigation">
                        <?php echo $userMenu;?>
                    </nav>
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-9">
                <div class="container">
                    <div class="jumbotron success">
                        <h1 class="text-success"><i class="fa fa-check-circle"></i> Thank You !!</h1>
                        <p class="m-t-30">Your order is placed successfully. You can check your order details here, <a href="<?php echo BASE_URL.'my-orders';?>" class="text-pri">Click here</a>.</p>
                        <p>Would you like to browse more categories?</p>
                        <a class="btn btn-success" href="<?php echo BASE_URL;?>" role="button">Click Here</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php echo $footer;?>