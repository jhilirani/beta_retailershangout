<div class="section">
    <h3 class="section-title">Best Selling Item</h3>
    <div class="sidebar-widget-body outer-top-xs">
        <div class="owl-carousel best-seller custom-carousel owl-theme outer-top-xs">
            <?php foreach($bestSelllingItem AS $k){ //pre($k);die;?>
            <div class="item">
                <div class="products best-product">
                    <div class="product">
                        <div class="product-micro">
                            <div class="row product-micro-row">
                                <div class="col col-xs-4">
                                    <div class="product-image">
                                        <div class="image">
                                            <?php if($k->qty<$k->minQty):?>
                                            <a href="javascript:void(0);" data-lightbox="image-1" data-title="<?php echo $k->title;?>">
                                            <?php else :?>
                                            <a href="<?php echo BASE_URL.'product/details/'.base64_encode($k->productId);?>" data-lightbox="image-1" data-title="<?php echo $k->title;?>">
                                            <?php endif;?>
                                                <img data-echo="<?php echo HOME_LISTING.$k->image;?>" src="<?php echo HOME_LISTING.$k->image;?>" alt="<?php echo $k->title;?>" title="<?php echo $k->title;?>" class="img-responsive img-thumbnail">
                                                <div class="zoom-overlay"></div>
                                            </a>
                                        </div>
                                        <!-- /.image -->
                                        <div class="tag tag-micro new">
                                            <span>new</span>
                                        </div>
                                    </div> <!-- /.product-image -->
                                </div> <!-- /.col -->
                                <div class="col col-xs-8">
                                    <div class="product-info">
                                        <h3 class="name">
                                            <?php if($k->qty<$k->minQty):?>
                                        <a href="javascript:void(0);" title="<?php echo $k->title;?>">
                                        <?php else:?>
                                        <a href="<?php echo BASE_URL.'product/details/'.base64_encode($k->productId);?>" title="<?php echo $k->title;?>">
                                        <?php endif;?>
                                            <?php echo $k->title;?></a>
                                        </h3>
                                        <div class="product-price">
                                            <span class="price"><i class="fa fa-inr"></i> <?php echo $k->lowestPrice;?> - <i class="fa fa-inr"></i> <?php echo $k->heighestPrice;?> </span>
                                        </div>
                                        <!-- /.product-price -->
                                        <div class="action">
                                            <?php if($k->qty<$k->minQty):?>
                                            <a href="javascript:void(0);" title="<?php echo $k->title;?>" class="lnk btn btn-primary">
                                            <?php else:?>
                                                <a href="<?php echo BASE_URL.'product/details/'.base64_encode($k->productId);?>" title="<?php echo $k->title;?>" class="lnk btn btn-primary">
                                            <?php endif;?>
                                                View Details</a></div>
                                    </div>
                                </div> <!-- /.col -->
                            </div> <!-- /.product-micro-row -->
                        </div> <!-- /.product-micro -->
                    </div>
                </div>
            </div>
            <?php }?>
        </div>
    </div> <!-- /.sidebar-widget-body -->
</div> <!-- /.sidebar-widget -->