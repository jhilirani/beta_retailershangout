<?php echo $html_heading; echo $header;?>
<style>
    .navbar-toggle[data-target="#mainNav"]{display: none}
    .sidebar.mrg-z{margin: 0;}
    .sidebar .side-menu .head{cursor: pointer;}
</style>
<div class="homebanner-holder">
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
</div>
<div class="sidebar mrg-z">
    <div class="side-menu animateDropdown">
        <?php echo $main_category_menu; ?>
    </div><!-- /.sidemenu-holder -->
</div><!-- /.sidebar -->
<div class="container">
    <?php echo $new_product_slider_dynamic;?>
    <?php echo $best_selling_items;?>
    <?php echo $featured_products_home_page;?>
    <div class="sidebar">
        <div class="side-menu animateDropdown">
            <?php //echo $desktop_hot_deal_home_page; ?>
        </div><!-- /.sidemenu-holder -->
    </div><!-- /.sidebar -->
    <div id="brands-carousel" class="logo-slider">
        <h3 class="section-title">Our Brands</h3>
        <div class="logo-slider-inner">
            <div id="brand-slider" class="owl-carousel brand-slider custom-carousel owl-theme">
                <?php foreach($brandZoneArr AS $k){
                        if($k->brandImage==""){$src=SiteImagesURL.'no-image.png';}else{$src=SiteResourcesURL.'brand/original/'.$k->brandImage;}?>
                <div class="item">
                    <a href="<?php echo BASE_URL.'brand/'.base64_encode($k->brandId*226201).'/?';?>&brand=<?php echo $k->title;?>" class="image">
                    <img src="<?php echo $src;?>" alt="<?php echo $k->title;?>" title="<?php echo $k->title;?>"/>
                    </a>
                </div>
                <?php }?>
            </div>
            <!-- /.owl-carousel #logo-slider -->
        </div>
        <!-- /.logo-slider-inner -->
    </div>
</div>
<?php echo $footer;?>