<?php $currencySymbol='<i class="fa fa-rupee"></i>';?>
<!-- cart modal -->
<div class="modal fade" id="cartModal" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header modal-header1">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Shopping Truck <small class="text-pri js-cart-item">(<?= count($allItemArr) ?> item<?php if (count($allItemArr) > 1): echo 's';endif; ?>)</small></h4><hr class="hr hr-primary">
            </div>
            <?php
            //echo "<pre>";
            //print_r($allItemArr);
            //$cart = $this->cart->contents();
            $is_single = false;
            foreach ($allItemArr as $k):
                if ($k['orderType'] == 'SINGLE'):
                    $is_single = true;
                    continue;
                endif;
            endforeach;

            $is_group = false;
            foreach ($allItemArr as $k):
                if ($k['orderType'] == 'GROUP'):
                    $is_group = true;
                    continue;
                endif;
            endforeach;
            $subtotal = 0;
            $tax = 0;
            ?>
            <div class="modal-body">
                <div class="checkout"> <!-- tab-pane -->
                    <?php if ($is_single): ?>
                    <form action="checkout.php">
                        <h4 class="pageTitle">Single Order</h4>
                        <div class="table-responsive">
                            <table class="table table-striped" id="cart"> <!-- table -->
                                <thead>
                                <tr> <!-- row -->
                                    <td><h4 class="h4">Product</h4></td>
                                    <td class="text-center"><h4 class="h4">Price</h4></td>
                                    <td class="text-center"><h4 class="h4">Quantity</h4></td>
                                    <td class="text-center"><h4 class="h4">Total Price</h4></td>
                                    <td>&nbsp;</td>
                                </tr> <!-- /.row -->
                                </thead>
                                <tbody>
                                <?php
                        foreach ($allItemArr as $k):
                            if (isset($k['orderType']) && $k['orderType'] == 'SINGLE'): ?>
                                <tr id="<?= $k['orderId'] ?>"> <!-- row -->
                                    <td class="name">
                                        <div class="media">
                                            <a class="pull-left" href="#">
                                                <img class="media-object img-responsive img-thumbnail" src="<?= PRODUCT_DEAILS_SMALL . $k['pimage'] ?>" alt="<?= $k['productTitle'] ?>" height="80">
                                            </a>
                                            <div class="media-body">
                                                <h4 class="media-heading">Product Name</h4>
                                                <span class="text-mute">Sub Heading</span>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="ps-cell text-center price">
                                        <span class="selling"><i class="fa fa-inr"></i><?php echo $k['subTotalAmount'] / $k['qty'];?></span>
                                    </td>
                                    <td class="ps-cell qty"><h4 class="h4"><?=$k['qty'] ?></h4></td>
                                    <td class="ps-cell total">
                                        <?php echo $currencySymbol;?> <?= number_format($k['subTotalAmount']) ?>
                                    </td>
                                    <td class="text-center"><a href="" class="remove js-single-cart-remove" data-cartid="<?= $k['orderId'] ?>"><i class="fa fa-trash-o"></i></a></td>
                                </tr> <!-- /.row -->
                        <?php
                                $subtotal += $k['subTotalAmount'];
                                $tax += $k['taxAmount'];
                            endif;
                        endforeach; //echo 'grand total '.$subtotal+$tax;?>        
                                </tbody>
                                <tfoot>
                                <tr> <!-- row -->
                                    <td colspan="3" class="text-right sub-total">Sub Total</td>
                                    <td class="sub-total"><?php echo $currencySymbol;?> <?= number_format($subtotal) ?>.00</td>
                                    <td>&nbsp;</td>
                                </tr> <!-- /.row -->

                                <tr> <!-- row -->
                                    <td colspan="3" class="text-right sub-total">Service Tax (15%)</td>
                                    <td class="sub-total"><?php echo $currencySymbol;?> <?= number_format($tax) ?>.00</td>
                                    <td>&nbsp;</td>
                                </tr> <!-- /.row -->

                                <tr> <!-- row -->
                                    <td colspan="3" class="text-right sub-total">Total</td>
                                    <td class="sub-total"><?php echo $currencySymbol;?> <?= number_format($subtotal + $tax) ?>.00</td>
                                    <td>&nbsp;</td>
                                </tr> <!-- /.row -->
                                </tfoot>
                            </table> <!-- /.table -->
                        </div>
                        <div class="clearfix">
                            <button type="submit" class="btn btn-primary pull-right">Proceed to Checkout</button>
                        </div>
                    </form>
                    <?php endif; ?>
                    <?php
                $subtotal = 0;
                $tax = 0;
                if ($is_group): ?>
                    <form action="checkout.php" class="m-t-20">
                        <h4 class="pageTitle">Hangout Order</h4>
                        <div class="table-responsive">
                            <table class="table table-striped"> <!-- table -->
                                <thead>
                                <tr> <!-- row -->
                                    <td><h4 class="h4">Product</h4></td>
                                    <td class="text-center"><h4 class="h4">Price</h4></td>
                                    <td class="text-center"><h4 class="h4">Quantity</h4></td>
                                    <td class="text-center"><h4 class="h4">Total Price</h4></td>
                                    <td>&nbsp;</td>
                                </tr> <!-- /.row -->
                                </thead>
                                <tbody>
                                <?php
                        foreach ($allItemArr as $k):
                            if (isset($k['orderType']) && $k['orderType'] == 'GROUP'):
                                ?>
                                <tr id="<?= $k['orderId'] ?>"><!-- row -->
                                    <td class="name">
                                        <div class="media">
                                            <a class="pull-left" href="#">
                                                <img class="media-object img-responsive img-thumbnail" src="<?= PRODUCT_DEAILS_SMALL . $k['pimage'] ?>"
                                                    alt="<?= $k['productTitle'] ?>">
                                            </a>
                                            <div class="media-body">
                                                <h4 class="media-heading"><?= $k['productTitle'] ?></h4>
                                                <span class="text-mute">Sub Heading</span>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="ps-cell text-center price">
                                        <span class="selling"><?php echo $currencySymbol;?> <?= $k['subTotalAmount'] / $k['qty'] ?></span>
                                    </td>
                                    <td class="ps-cell qty"><h4 class="h4"><?= $k['qty'] ?></h4></td>
                                    <td class="ps-cell total">
                                        <?php echo $currencySymbol;?> <?= number_format($k['subTotalAmount']) ?>
                                    </td>
                                    <td class="text-center">
                                        <a href="" class="remove js-group-cart-remove" data-cartid="<?= $k['orderId'] ?>" data-orderid="<?= $k['orderId'] ?>"><i class="fa fa-trash-o"></i></a> &nbsp;
                                        <a href="<?= BASE_URL; ?>shopping/checkout/<?= base64_encode($k['orderId'] * 226201) ?>"
                                           class="btn btn-success btn-sm"> Checkout <i class="fa fa-angle-right"></i></a>
                                    </td>
                                </tr> <!-- /.row -->
                                <?php
                                $subtotal += $k['subTotalAmount'];
                                $tax += $k['taxAmount'];
                            endif;
                        endforeach; ?>
                                </tbody>
                                <tfoot>
                                <tr> <!-- row -->
                                    <td colspan="3" class="text-right sub-total">Sub Total</td>
                                    <td class="sub-total"><i class="fa fa-inr"></i> 3000</td>
                                    <td>&nbsp;</td>
                                </tr> <!-- /.row -->

                                <tr> <!-- row -->
                                    <td colspan="3" class="text-right sub-total">Service Tax (15%)</td>
                                    <td class="sub-total"><?php echo $currencySymbol;?> <?= number_format($tax) ?></td>
                                    <td>&nbsp;</td>
                                </tr> <!-- /.row -->

                                <tr> <!-- row -->
                                    <td colspan="3" class="text-right sub-total">Total</td>
                                    <td class="sub-total"><?php echo $currencySymbol;?> <?= number_format($subtotal + $tax) ?></td>
                                    <td>&nbsp;</td>
                                </tr> <!-- /.row -->
                                </tfoot>
                            </table> <!-- /.table -->
                        </div>
                        <div class="clearfix">
                            <button type="button" class="btn btn-border primary" data-dismiss="modal">Continue Shopping</button>
                            <!--<button type="submit" class="btn btn-primary pull-right">Proceed to Checkout</button>-->
                        </div>
                    </form>
                 <?php endif; ?>   
                </div> <!-- /.tab-pane -->
            </div>
        </div>
    </div>
</div> <!-- /.cart modal -->
<script type="text/javascript">
jQuery(document).ready(function () {
    jQuery('#cartModal').modal('show');
    jQuery("body").delegate('.js-group-cart-remove', "click", function (e) {
        e.preventDefault();
        myJsMain.commonFunction.showPleaseWait();
        var cartId = jQuery(this).attr('data-cartid');
        var orderId = jQuery(this).attr('data-orderid');
        jQuery.post(myJsMain.baseURL + 'shopping/remove_group_cart/', {
                cartId: cartId,
                orderId: orderId
            },
            function (data) {
                myJsMain.commonFunction.hidePleaseWait();
                if (data.contents) {
                    jQuery('tr#' + cartId).remove();
                    var item = "(<?=count($allItemArr)-1?> Item<?php if(count($allItemArr)-1 > 1): echo 's';endif;?>)";
                    jQuery('span.js-cart-item').text(item);
                    jQuery('#shoppingcart').modal('hide');
                    //jQuery('.showCartDetails').trigger( "click" );
                    window.location.href = myJsMain.baseURL + 'shopping/my-cart/';
                }
            }, 'json');
    });
    
    jQuery("body").delegate('.js-single-cart-remove', "click", function (e) {
        e.preventDefault();

        var cartId = jQuery(this).attr('data-cartid');
        jQuery.post(myJsMain.baseURL + 'shopping/remove-single-cart/', {
                cartId: cartId
            },
            function (data) {
                if (data.contents) {
                    jQuery('tr#' + cartId).remove();
                    /*if(data.reload){
                     window.location.href = myJsMain.baseURL;
                     } else {
                     var item = "(
                    <?php //count($this->cart->contents())-1?> Item
                    <?php //if(count($this->cart->contents())-1 > 1): echo 's';endif;?>)";
                     jQuery('span.js-cart-item').text(item);
                     jQuery('#shoppingcart').modal('hide');
                     jQuery('.showCartDetails').trigger( "click" );
                     }*/
                    window.location.href = myJsMain.baseURL + 'shopping/my-cart/';
                }
            }, 'json');
    });
});    
</script>    