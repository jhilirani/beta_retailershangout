<?php echo $html_heading; echo $header;?>
<div class="bodyContent outer-top-xs" id="top-banner-and-menu">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-3 sidebar">
                <div class="side-menu animateDropdown">
                    <?php echo $main_category_menu; ?>
                    <?php //echo $desktop_hot_deal_home_page; ?>
                    <?php //echo $desktop_home_left_sidebar_advertise_banner; ?>
                    <?php //echo $desktop_special_offer_home_page; ?>
                    <?php //echo $news_letter;?>
                </div> <!-- /.sidemenu-holder -->
            </div> <!-- /.sidebar -->
            <div class="col-xs-12 col-sm-12 col-md-9 homebanner-holder">
                
                <?php pre($brandZoneArr);?>
            </div> <!-- /.home banner -->
        </div> <!-- /.row -->
        
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="thumbnail icon">
                    <figure><a href="<?php echo BASE_URL.'content/about-us/'.  base64_encode(1);?>"><img src="<?php echo SiteImagesURL;?>about_img.png" alt="Event banner" /></a></figure>
                    <div class="caption">
                       <a href="<?php echo BASE_URL.'content/about-us/'.  base64_encode(1);?>" class="title">About Retailershangout</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="thumbnail icon">
                    <figure><a href="<?php echo BASE_URL.'seller-faq';?>"><img src="<?php echo SiteImagesURL;?>faq_img.png" alt="Event banner" /></a></figure>
                    <div class="caption">
                       <a href="<?php echo BASE_URL.'seller-faq';?>" class="title">New Sellers FAQ</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="thumbnail icon">
                    <figure><a href="<?php echo BASE_URL.'buyer-faq';?>"><img src="<?php echo SiteImagesURL;?>prtctn_img.png" alt="Event banner" /></a></figure>
                    <div class="caption">
                       <a href="<?php echo BASE_URL.'buyer-faq';?>" class="title">New Buyers FAQ</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php echo $footer;?>