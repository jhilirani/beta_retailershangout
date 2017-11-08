<?php echo $html_heading; echo $header;?>
<div class="bodyContent outer-top-xs" id="top-banner-and-menu">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-3 sidebar">
                <div class="side-menu animateDropdown">
                    <?php echo $main_category_menu; ?>
                    <?php //echo $desktop_hot_deal_home_page; ?>
                    <?php echo $desktop_home_left_sidebar_advertise_banner; ?>
                    <?php //echo $desktop_special_offer_home_page; ?>
                    <?php echo $news_letter;?>
                </div> <!-- /.sidemenu-holder -->
            </div> <!-- /.sidebar -->
            <div class="col-xs-12 col-sm-12 col-md-9 homebanner-holder">
                <div id="hero">
                    <div id="owl-main" class="owl-carousel">
                        <?php if(!empty($slider1)):?>
                            <?php foreach ($slider1 AS $k): ?>
                            <div class="item">
                                <img src="<?php echo SiteResourcesURL.'banner/landing/'.$k->image;?>" alt="">
                            </div> <!-- /.item -->
                            <?php endforeach;?>
                        <?php endif;?>
                    </div> <!-- /.owl-carousel -->
                </div> <!-- /.hero -->
                <div class="info-boxes hidden-xs">
                    <div class="info-boxes-inner">
                        <div class="row">
                            <div class="col-md-6 col-sm-4 col-lg-4">
                                <div class="info-box">
                                    <h4 class="info-box-heading green">money back</h4>
                                    <h6 class="text">30 Day Money Back Guarantee.</h6>
                                </div>
                            </div> <!-- /.col -->
                            <div class="hidden-md col-sm-4 col-lg-4">
                                <div class="info-box">
                                    <h4 class="info-box-heading orange">free shipping</h4>                                    
                                    <h6 class="text">free ship-on oder over $600.00</h6>
                                </div>
                            </div> <!-- /.col -->
                            <div class="col-md-6 col-sm-4 col-lg-4">
                                <div class="info-box">
                                    <h4 class="info-box-heading red">Special Sale</h4>
                                    <h6 class="text">All items-sale up to 20% off </h6>
                                </div>
                            </div> <!-- /.col -->
                        </div> <!-- /.row -->
                    </div> <!-- /.info-boxes-inner -->
                </div> <!-- /.info-boxes -->
                <?php echo $new_product_slider_dynamic;?>
                <?php echo $best_selling_items;?>
                <?php echo $featured_products_home_page;?>
            </div> <!-- /.home banner -->
        </div> <!-- /.row -->
        <?php echo $our_brand;?>
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