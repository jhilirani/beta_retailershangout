<section class="section">
    <h3 class="section-title">Featured Product</h3>
    <div class="owl-carousel home-owl-carousel custom-carousel owl-theme outer-top-xs">
        <?php foreach($bestSelllingItem AS $k){ //pre($k);die;?>
        <div class="item item-carousel">
            <div class="products">
                <div class="product">
                    <div class="product-image">
                        <div class="image">
                            <?php if($k->qty<$k->minQty):?>
                            <a href="">
                            <?php else:?>
                            <a href="<?php echo BASE_URL.'product/details/'.base64_encode($k->productId);?>" title="<?php echo $k->title;?>">    
                            <?php endif;?>    
                                <img data-echo="<?php echo HOME_LISTING.$k->image;?>" src="<?php echo HOME_LISTING.$k->image;?>" alt="<?php echo $k->title;?>" title="<?php echo $k->title;?>" class="img-responsive img-thumbnail">
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
                                    <a href="javascript:void(0);" title="<?php echo $k->title;?>" class="btn btn-primary">
                                    <?php else:?>
                                        <a href="<?php echo BASE_URL.'product/details/'.base64_encode($k->productId);?>" title="<?php echo $k->title;?>" class="btn btn-primary">
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
</section> <!-- /.section -->