<div id="product-tabs-slider" class="scroll-tabs outer-top-vs">
    <div class="more-info-tab clearfix ">
        <h3 class="new-product-title pull-left">New Products</h3>
        <!--<ul class="nav nav-tabs nav-tab-line pull-right" id="new-products-1">
            <li class="active"><a data-transition-type="backSlide" href="#all" data-toggle="tab">All</a></li>
            <li><a data-transition-type="backSlide" href="#smartphone" data-toggle="tab">smartphone</a></li>
            <li><a data-transition-type="backSlide" href="#laptop" data-toggle="tab">laptop</a></li>
            <li><a data-transition-type="backSlide" href="#apple" data-toggle="tab">apple</a></li>
        </ul>->
        <!-- /.nav-tabs -->
    </div>
    <div class="tab-content outer-top-xs">
        <div class="tab-pane in active" id="all">
            <div class="product-slider">
                <div class="owl-carousel home-owl-carousel custom-carousel owl-theme" data-item="4">
                    <?php foreach($newArrivals AS $k){ //pre($k);//die;?>
                    <div class="item item-carousel">
                        <div class="products">
                            <div class="product">
                                <div class="product-image">
                                    <div class="image">
                                        <?php if($k->qty<$k->minQty):?>
                                        <a href="javascript:void(0);" title="<?php echo $k->title;?>">
                                        <?php else:?>
                                        <a href="<?php echo BASE_URL.'product/details/'.base64_encode($k->productId);?>" title="<?php echo $k->title;?>">
                                        <?php endif;?>
                                            <img src="<?php echo HOME_LISTING.$k->image;?>" data-echo="<?php echo HOME_LISTING.$k->image;?>" alt="<?php echo $k->title;?>" class="img-responsive img-thumbnail">
                                        </a>
                                    </div> <!-- /.image -->
                                    <div class="tag new"><span>new</span></div>
                                </div> <!-- /.product-image -->
                                <div class="product-info text-left">
                                    <h3 class="name">
                                        <?php if($k->qty<$k->minQty):?>
                                        <a href="javascript:void(0);" title="<?php echo $k->title;?>">
                                        <?php else:?>
                                        <a href="<?php echo BASE_URL.'product/details/'.base64_encode($k->productId);?>" title="<?php echo $k->title;?>">
                                        <?php endif;?>
                                            <?php echo $k->title;?></a>
                                    </h3>
                                    <div class="description"></div>
                                    <div class="product-price">
                                        <span class="price"><i class="fa fa-inr"></i> <?php echo $k->lowestPrice;?> - <i class="fa fa-inr"></i> <?php echo $k->heighestPrice;?> </span>
                                    </div> <!-- /.product-price -->
                                </div> <!-- /.product-info -->
                                <div class="cart clearfix animate-effect">
                                    <div class="action">
                                        <ul class="list-unstyled">
                                            <li class="add-cart-button btn-group">
                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                <i class="fa fa-truck"></i>
                                                </button>
                                                <?php if($k->qty<$k->minQty):?>
                                                <a href="javascript:void(0);">
                                                <?php else:?>
                                                <a class="btn btn-primary" title="<?php echo $k->title;?>" href="<?php echo BASE_URL.'product/details/'.base64_encode($k->productId);?>">
                                                <?php endif;?>    
                                                    Add to Truck</a>
                                            </li>
                                        </ul>
                                    </div> <!-- /.action -->
                                </div> <!-- /.cart -->
                            </div> <!-- /.product -->
                        </div> <!-- /.products -->
                    </div> <!-- /.item -->
                    <?php }?>

                </div> <!-- /.home-owl-carousel -->
            </div> <!-- /.product-slider -->
        </div> <!-- /.tab-pane -->
    </div> <!-- /.tab-content -->
</div> <!-- /.scroll-tabs -->