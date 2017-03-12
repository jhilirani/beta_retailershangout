<div id="brands-carousel" class="logo-slider">
    <h3 class="section-title">Our Brands</h3>
    <div class="logo-slider-inner">
        <div id="brand-slider" class="owl-carousel brand-slider custom-carousel owl-theme">
            <?php foreach($brandZoneArr AS $k){
                    if($k->brandImage==""){$src=SiteImagesURL.'no-image.png';}else{$src=SiteResourcesURL.'brand/category/'.$k->brandImage;}?>
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