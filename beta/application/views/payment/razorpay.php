<?php echo $html_heading; echo $header;?>
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
            <div class="col-xs-12 col-sm-12 col-md-9 wht_bg">
                <div class="tab_dashbord">
                    <div class="active row">
                        <div class="col-md-12 col-sm-12" style="height: 100px;">
                            <form action="<?php echo BASE_URL.'shopping/razorpay_return/';?>" method="POST">
                            <!-- Note that the amount is in paise = 50 INR -->
                            <script
                                src="<?php echo $checkOutURL;?>"
                                data-key="<?php echo $keyId;?>"
                                data-amount="<?php echo $paymentGatewayAmount*100;?>"
                                data-buttontext="Pay with Razorpay"
                                data-name="Tidiit Internet Pvt Ltd"
                                data-description="Purchase Description"
                                data-image="http://www.Retailershangout.com/resources/images/logo.png"
                                data-prefill.name="<?php echo $userData->firstName.' '.$userData->lastName;?>"
                                data-prefill.email="<?php echo $userData->email;?>"
                                data-prefill.contact="<?php echo ($userData->contactNo=="") ? $userData->mobile : $userData->contactNo;?>"
                                data-theme.color="#F37254"
                            ></script>
                            <input type="hidden" value="<?php echo $orderIds;?>" name="orderIds">
                            </form>
                        </div>                            
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>    
<?php echo $footer;?>
