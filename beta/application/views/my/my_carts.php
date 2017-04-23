<?php echo $html_heading; echo $header; $currencySymbol='<i class="fa fa-rupee"></i>';//($this->session->userdata('FE_SESSION_USER_LOCATION_VAR')=="IN") ? '<i class="fa fa-rupee"></i>' :'KSh';
?>
<script src="<?php echo SiteJSURL;?>user-all-my-js.js" type="text/javascript"></script>
<div class="bodyContent" id="checkoutPage">
    <div class="container checkout"> <!-- container -->
        <div class="checkout">
            <div class="clearfix"></div>
            <div class="js-message" role="alert" style="display: none;"></div>
            <div class="clearfix"></div>
            <?php 
            //print_r($this->cart->contents());
            //$cart = $this->cart->contents();
            $is_single = false;
            foreach($allItemArr as $k):
                if(isset($k['orderType']) && $k['orderType'] == 'SINGLE'):
                    $is_single = true; continue;
                endif;
            endforeach;
            $is_group = false;
            foreach($allItemArr as $k):
                if(isset($k['orderType']) && $k['orderType'] == 'GROUP'):
                    $is_group = true; continue;
                endif;
            endforeach;
            ?>
            <?php if($is_single):?>
            <div class="row">
                <h4 class="pageTitle">Single Order</h4>
                <div class="table-responsive">
                    <table class="table table-striped"> <!-- table -->
                        <tr> <!-- row -->
                            <td><h4 class="h4">Product</h4></td>
                            <td class="text-center"><h4 class="h4">Price</h4></td>
                            <td class="text-center"><h4 class="h4">Quantity</h4></td>
                            <td class="text-center"><h4 class="h4">Total Price</h4></td>
                            <td>&nbsp;</td>
                        </tr> <!-- /.row -->
                        <?php 
                            $total = 0;
                            $tax=0;
                       foreach($allItemArr as $k):
                           if(isset($k['orderType']) && $k['orderType'] == 'SINGLE'):
                               //$productDetailsArr =  $this->Product_model->details($item['options']['productId']);
                               //$productImageArr =$this->Product_model->get_products_images($item['options']['productId']);*/
                           ?>
                        <tr id="<?=$k['orderId']?>"> <!-- row -->
                            <td class="name" data-th="Product">
                                <div class="media">
                                    <a class="pull-left" href="#">
                                        <img class="media-object" src="<?=PRODUCT_DEAILS_SMALL.$k['pimage']?>" alt="<?=$k['productTitle']?>" class="img-responsive" height="80">
                                    </a>
                                    <div class="media-body">
                                        <h4 class="media-heading"><?=$k['productTitle']?></h4>
                                        <span class="text-mute"><?php //$productDetailsArr[0]->shortDescription?></span>
                                    </div>
                                </div>
                            </td>
                            <td data-th="Price" class="ps-cell text-center price">
                                <span class="selling"><?php echo $currencySymbol; ?> <?=$k['subTotalAmount']/$k['qty']?></span>
                            </td>
                            <td data-th="Quantity" class="ps-cell qty"><h4 class="h4"><?=$k['qty']?></h4></td>
                            <td data-th="Subtotal" class="ps-cell total">
                                <?php echo $currencySymbol;?> <?=number_format($k['subTotalAmount'])?>
                            </td>
                            <td class="text-center actions"><a href="" class="remove js-single-cart-remove" data-cartid="<?=$k['orderId']?>"><i class="fa fa-trash-o"></i></a></td>
                        </tr> <!-- /.row -->
                        <?php 
                        $total += $k['subTotalAmount'];
                        $tax += $k['taxAmount'];
                        endif;
                        endforeach; ?>
                        <tr> <!-- row -->
                            <td colspan="3" class="text-right sub-total">Sub Total</td>
                            <td class="sub-total"><?php echo $currencySymbol;?> <?=number_format($total)?></td>
                            <td>&nbsp;</td>
                        </tr> <!-- /.row -->

                        <tr> <!-- row -->
                            <td colspan="3" class="text-right sub-total">Service Tax (15%)</td>
                            <td class="sub-total"><?php echo $currencySymbol;?> <?=number_format($tax)?></td>
                            <td>&nbsp;</td>
                        </tr> <!-- /.row -->

                        <tr> <!-- row -->
                            <td colspan="3" class="text-right sub-total">Total</td>
                            <td class="sub-total"> <?php echo $currencySymbol;?> <?=number_format($total+$tax)?></td>
                            <td>&nbsp;</td>
                        </tr> <!-- /.row -->
                    </table> <!-- /.table -->
                </div>
                <div class="clearfix">
                    <a href="<?=BASE_URL;?>" class="btn btn-primary">Continue Shopping</a>
                    <?php if($total > 1):?><button type="button" onclick="location.href='<?=BASE_URL;?>shopping/single-checkout/'" class="btn btn-primary pull-right">Proceed to Checkout</button><?php endif;?>
                </div>
            </div>
             <?php endif;?>
            <?php if($is_group):?>
            <div class="row">
                 <h4 class="pageTitle">Hangout Order</h4>
                <div class="table-responsive">
                    <table class="table table-striped"> <!-- table -->
                        <tr> <!-- row -->
                            <td><h4 class="h4">Product</h4></td>
                            <td class="text-center"><h4 class="h4">Price</h4></td>
                            <td class="text-center"><h4 class="h4">Quantity</h4></td>
                            <td class="text-center"><h4 class="h4">Total Price</h4></td>
                            <td>&nbsp;</td>
                        </tr> <!-- /.row -->
                        <?php
                        $total = 0;
                        $tax=0;
                        foreach($allItemArr as $k):
                            if(isset($k['orderType']) && $k['orderType'] == 'GROUP'):
                                /*$productDetailsArr =  $this->Product_model->details($item['options']['productId']);
                                $productImageArr =$this->Product_model->get_products_images($item['options']['productId']);*/
                            ?>
                        <tr id="<?=$k['orderId']?>"> <!-- row -->
                            <td class="name" data-th="Product">
                                <div class="media">
                                    <a class="pull-left" href="#">
                                        <img class="media-object" src="<?=PRODUCT_DEAILS_SMALL.$k['pimage']?>" alt="<?=$k['productTitle']?>" class="img-responsive" height="80">
                                    </a>
                                    <div class="media-body">
                                        <h4 class="media-heading"><?=$k['productTitle']?></h4>
                                        <span class="text-mute"><?php //$productDetailsArr[0]->shortDescription?></span>
                                    </div>
                                </div>
                            </td>
                            <td class="ps-cell text-center price" data-th="Price">
                                <span class="selling"> <?php echo $currencySymbol;?> <?=$k['subTotalAmount']?></span>
                            </td>
                            <td class="ps-cell qty" data-th="Quantity"><h4 class="h4"><?=$k['qty']?></h4></td>
                            <td class="ps-cell total" data-th="Subtotal">
                                <?php echo $currencySymbol;?> <?=number_format($k['subTotalAmount'])?>
                            </td>
                            <td class="text-center actions">
                                <a href="javascript:void(0);" class="remove js-group-cart-remove" data-cartid="<?=$k['orderId']?>" data-orderid="<?=$k['orderId']?>"><i class="fa fa-trash-o"></i></a>
                                <a href="<?=BASE_URL;?>shopping/checkout/<?=base64_encode($k['orderId']*226201)?>" class="btn btn-success btn-sm"> Checkout <i class="fa fa-angle-right"></i></a>
                            </td>
                        </tr> <!-- /.row -->
                         <?php
                                $total += $k['subTotalAmount'];
                                $tax += $k['taxAmount'];
                            endif;
                            endforeach;?>
                        <!--<tr> <!-- row -
                            <td colspan="3" class="text-right sub-total">Sub Total</td>
                            <td class="sub-total"><i class="fa fa-inr"></i> 3000</td>
                            <td>&nbsp;</td>
                        </tr> <!-- /.row -->

                        <tr> <!-- row -->
                            <td colspan="3" class="text-right sub-total">Service Tax (15%)</td>
                            <td class="sub-total"><?php echo $currencySymbol;?> <?=number_format($tax)?></td>
                            <td>&nbsp;</td>
                        </tr> <!-- /.row -->

                        <tr> <!-- row -->
                            <td colspan="3" class="text-right sub-total">Total</td>
                            <td class="sub-total"><?php echo $currencySymbol;?> <?=number_format($total+$tax)?></td>
                            <td>&nbsp;</td>
                        </tr> <!-- /.row -->
                    </table> <!-- /.table -->
                </div>
                <div class="clearfix">
                    <a href="<?=BASE_URL;?>" class="btn btn-primary">Continue Shopping</a>
                    <!--<button type="submit" class="btn btn-primary pull-right">Proceed to Checkout</button>-->
                </div>
            </div>
             <?php endif;?>
             <div class="js-message"></div>
            <?php if(!$is_single && !$is_group):?>
            <div class="alert alert-success" role="alert"><i class="fa fa-truck"></i>  Sorry! no truck item's available.</div>
            <?php endif;?>
        </div>
    </div>
</div>
<?php echo $footer;?>
