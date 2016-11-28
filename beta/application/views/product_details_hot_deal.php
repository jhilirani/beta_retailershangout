<div class="sidebar-widget">
    <h3 class="section-title">hot deals</h3>
    <div class="owl-carousel sidebar-carousel custom-carousel owl-theme outer-top-xs">
        <?php foreach($hotDealProducts AS $k){ //pre($k);die;?>
        <div class="item">
            <div class="products">
                <div class="hot-deal-wrapper">
                    <div class="image">
                        <img src="_/images/hot-deals/1.jpg" alt="">
                    </div>
                    <div class="sale-offer-tag"><span>35%<br>off</span></div>
                    <?php /*<div class="timing-wrapper">
                        <div class="box-wrapper">
                            <div class="date box">
                                <span class="key">120</span>
                                <span class="value">Days</span>
                            </div>
                        </div>
                        <div class="box-wrapper">
                            <div class="hour box">
                                <span class="key">20</span>
                                <span class="value">HRS</span>
                            </div>
                        </div>
                        <div class="box-wrapper">
                            <div class="minutes box">
                                <span class="key">36</span>
                                <span class="value">MINS</span>
                            </div>
                        </div>
                    </div> */?>
                </div>
                <!-- /.hot-deal-wrapper -->
                <div class="product-info text-left m-t-20">
                    <h3 class="name">
                        <?php if($k->qty<$k->minQty){?>
                        <a href="#" title="<?php echo $k->title;?>">
                        <?php }else{?>
                        <a href="<?php echo BASE_URL.'product/details/'.base64_encode($k->productId);?>" title="<?php echo $k->title;?>">    
                        <?php }?>    
                            <?php echo $k->title;?></a>
                    </h3>
                    <div class="product-price">
                        <span class="price"><i class="fa fa-inr"></i> <?php echo $k->lowestPrice;?> - <i class="fa fa-inr"></i> <?php echo $k->heighestPrice;?> </span>
                    </div>
                    <!-- /.product-price -->
                </div>
                <!-- /.product-info -->
                <div class="cart clearfix animate-effect">
                    <div class="action">
                        <div class="add-cart-button btn-group">
                            <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                            <i class="fa fa-truck"></i>
                            </button>
                            <button class="btn btn-primary" type="button">Add to Truck</button>
                        </div>
                    </div>
                    <!-- /.action -->
                </div>
                <!-- /.cart -->
            </div>
        </div>
        <?php }?>
    </div>
    <!-- /.sidebar-widget -->
</div>