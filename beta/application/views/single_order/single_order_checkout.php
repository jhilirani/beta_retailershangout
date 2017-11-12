<?php echo $html_heading; echo $header; $currencySymbol='<i class="fa fa-rupee"></i>';//($this->session->userdata('FE_SESSION_USER_LOCATION_VAR')=="IN") ? '<i class="fa fa-rupee"></i>' :'KSh';
?>
<script src="<?php echo SiteJSURL;?>user-all-my-js.js" type="text/javascript"></script>
<!--<div class="bodyContent" id="checkoutPage">
    
    </div> <!-- /.container -
</div>-->
<div class="bodyContent" id="checkoutPage">
    <div class="container checkout"> <!-- container -->
        <div class="row">
            <div class="col-md-3 col-sm-12">
                <nav> <!-- nav -->
                    <ul class="nav nav-tabs nav-stacked"> <!-- list-inline -->
                        <li class="active"><a href="#billing" data-toggle="tab" class="js-active-shipping js-shipping" data-shipping="<?php if ($userShippingDataDetails->address): ?>true<?php endif; ?>">Confirm Address</a></li>
                        <li><a href="#checkout" data-toggle="tab" data-shipping="<?php if ($userShippingDataDetails->address): ?>true<?php endif; ?>" class="js-shipping">Review Order</a></li>
                        <li><a href="#payment" data-toggle="tab" data-shipping="<?php if ($userShippingDataDetails->address): ?>true<?php endif; ?>" class="js-shipping">Make Payment</a></li>
                    </ul> <!-- /.list-inline -->
                </nav> <!-- /.nav -->
            </div>
            <div class="col-md-9 col-sm-12">
                <div class="tab-content"> <!-- tab-content -->
                    <div class="tab-pane fade" id="checkout"> <!-- tab-pane -->
                        <form action="javascript:void(0);">
                            <h4 class="pageTitle">Single Order</h4><hr class="hr hr-primary">
                            <div class="table-responsive">
                                <table class="table table-striped"> <!-- table -->
                                    <tr> <!-- row -->
                                        <td>Product</td>
                                        <td class="text-center"><h4 class="h4">Price</h4></td>
                                        <td class="text-center"><h4 class="h4">Quantity</h4></td>
                                        <td class="text-right"><h4 class="h4">Subtotal</h4></td>
                                        <td>&nbsp;</td>
                                    </tr> <!-- /.row -->
                                    <?php
                                    $total = 0;
                                    $tax=0;
                                    $disc='';
                                    foreach ($allItemArr as $k): //pre($k);
                                        $total += $k['subTotalAmount'];
                                        $tax +=$k['taxAmount'];
                                        $disc +=$k['discountAmount'];
                                        //$productDetailsArr = $this->Product_model->details($item['options']['productId']);
                                        //$productImageArr = $this->Product_model->get_products_images($item['options']['productId']);
                                        ?>
                                    <tr id="<?=$k['orderId']?>"> <!-- row -->
                                        <td class="name" data-th="Product">
                                            <div class="media">
                                                <a class="pull-left" href="#">
                                                    <img class="media-object img-responsive" src="<?=PRODUCT_DEAILS_SMALL.$k['pimage']?>" alt="<?=$k['productTitle']?>" height="80">
                                                </a>
                                                <div class="media-body">
                                                    <h4 class="media-heading"><?= $k['productTitle'] ?></h4>
                                                    <span class="text-mute">Sub Heading</span>
                                                    <div class="clearfix m-t-15"><span class="pointer text-pri showPromocodeSection" data-eleid="<?=$k['orderId']?>" data-toggle="collapse" data-target="#coupon<?=$k['orderId']?>">Have a promo code?</span></div>
                                                </div>
                                            </div>
                                            <div id="coupon<?=$k['orderId']?>" class="collapse ApplyCouponActionSection<?=$k['orderId']?>" <?php if($k['discountAmount']<1){?>style="display: none;"<?php }?>>
                                                <div class="input-group m-t-15" style="max-width:250px;">
                                                    <input type="text" id="order-coupon<?=$k['orderId']?>" name="coupon" style="<?php if($k['discountAmount']<1){?>display: none;<?php }?>" class="form-control" placeholder="Enter coupon code">
                                                    <span class="input-group-btn">
                                                        <button class="btn btn-primary js-apply-coupon" alt="<?=$k['orderId']?>" type="button">Apply</button>
                                                    </span>
                                                    <span class="applyCouponElemtnForRemove<?=$k['orderId']?>">
                                                        <?php if($k['discountAmount']>0){?>
                                                        <button type="button" class="btn btn-info btn-xs remove-coupon-from-order-<?=$k["orderId"]?>" style="width:75px"><i class="fa fa-tags"></i>COUPON</button><button type="button" class="btn btn-danger btn-xs remove-coupon-from-order remove-coupon-from-order-<?=$k["orderId"]?>" data-id="<?=$k["orderId"]?>"><i class="fa fa-times-circle"></i></button>
                                                        <?php }?>
                                                    </span>
                                                </div><!-- /input-group -->
                                            </div>
                                        </td>
                                        <td class="ps-cell text-center price" data-th="Price">
                                            <span class="selling"><?php echo $currencySymbol;?> <?= $k['subTotalAmount']/$k['qty'] ?></span>
                                        </td>
                                        <td class="ps-cell qty" data-th="Quantity"><h4 class="h4"><?= $k['qty'] ?></h4></td>
                                        <td class="ps-cell total" data-th="Subtotal">
                                            <?php echo $currencySymbol;?> <?= number_format($k['subTotalAmount']) ?>.00                            
                                        </td>
                                        <td class="text-center actions"><a href="" class="remove js-single-cart-remove" data-cartid="<?=$k['orderId']?>"><i class="fa fa-trash-o"></i></a></td>
                                    </tr> <!-- /.row -->
                                    <?php
                                    endforeach;
                                    ?>
                                    <tr> <!-- row -->
                                        <td colspan="3" class="text-right sub-total" <?php if($disc==""):?>style="display: none;"<?php endif;?>>Discount</td>
                                        <td class="sub-total"><?php echo $currencySymbol;?> <?php 
                                                        echo  number_format(round($disc,0,PHP_ROUND_HALF_UP),2);
                                                        ?></td>
                                        <td>&nbsp;</td>
                                    </tr> <!-- /.row -
                                    <tr> <!-- row -
                                        <td colspan="3" class="text-right sub-total">Sub Total</td>
                                        <td class="sub-total"><i class="fa fa-inr"></i> 3000</td>
                                        <td>&nbsp;</td>
                                    </tr> <!-- /.row -->

                                    <tr> <!-- row -->
                                        <td colspan="3" class="text-right sub-total">GST<!--Service Tax (15%)--></td>
                                        <td class="sub-total"><?php echo $currencySymbol;?> <?= number_format(round($tax,0,PHP_ROUND_HALF_UP),2)?></td>
                                        <td>&nbsp;</td>
                                    </tr> <!-- /.row -->

                                    <tr> <!-- row -->
                                        <td colspan="3" class="text-right sub-total">Total</td>
                                        <td class="sub-total"><?php echo $currencySymbol;?> <?=number_format(round(($total-$disc)+$tax,0,PHP_ROUND_HALF_UP),2)?></td>
                                        <td>&nbsp;</td>
                                    </tr> <!-- /.row -->
                                </table> <!-- /.table -->
                            </div>
                            <div class="clearfix">
                                <a href="" class="btn btn-primary">Continue Shopping</a>
                                <div class="text-right">
                                    <button type="button" class="btn btn-primary pull-righ js-proceed-payment">Proceed to Payment</button>
                                </div>
                            </div>
                        </form>
                        <div class="js-message" role="alert" style="display: none;"></div>                                        
                        <div class="clearfix"></div>
                    </div> <!-- /.tab-pane -->
                    <div class="tab-pane fade sign-in-up active in" id="billing"> <!-- tab-pane -->
                        <h3 class="pageTitle">Billing Details</h3><hr class="hr hr-primary">
                        <div class="panel panel-body">
                            <form action="#" class="row" name="my_checkout_shipping_address" id="my_checkout_shipping_address"> <!-- form -->
                                <div class="col-md-6 col-sm-6">
                                    <div class="form-group"> <!-- name -->
                                        <label>First Name</label>
                                        <input type="text" class="form-control" placeholder="Enter first name" name="firstName" id="firstName" required="required" value="<?= $userShippingDataDetails->firstName; ?>">
                                    </div> <!-- /.name -->
                                </div>
                                <div class="col-md-6 col-sm-6">
                                    <div class="form-group"> <!-- name -->
                                        <label>Last Name</label>
                                        <input type="text" class="form-control" placeholder="Enter last name" name="lastName" id="lastName" required="required" value="<?= $userShippingDataDetails->lastName; ?>">
                                    </div> <!-- /.name -->
                                </div>
                                <div class="col-md-6 col-sm-6">
                                    <div class="form-group"> <!-- name -->
                                        <label>Phone Number</label>
                                        <input type="text" class="form-control" placeholder="Enter phone number" name="phone" id="phone" value="<?= $userShippingDataDetails->contactNo; ?>" required="required">
                                    </div> <!-- /.name -->
                                </div>
                                <div class="col-md-6 col-sm-6">
                                    <div class="form-group"> <!-- name -->
                                        <label>Address</label>
                                        <input type="text" class="form-control" placeholder="Enter address" name="address" id="address" value="<?= $userShippingDataDetails->address; ?>" required="required">
                                    </div> <!-- /.name -->
                                </div>
                                <input type="hidden" name="countryId" id="countryId" value="99" />
                                
                                <div class="col-md-6 col-sm-6">
                                    <div class="form-group"> <!-- city -->
                                        <label class="col-sm-3 control-label">Select <?php if($this->session->userdata('FE_SESSION_USER_LOCATION_VAR')=='IN'):?>
                                                    City<?php else:?>
                                                    County<?php endif;?>
                                                    </label>
                                        <div class="col-sm-9 cityElementPara">
                                            <select name="cityId" id="cityId" class="form-control required">
                                                <option value="">Select City</option>
                                                <?php foreach ($cityDataArr As $k) { ?>
                                                    <option value="<?php echo $k->cityId; ?>" <?php if ($k->cityId == $userShippingDataDetails->cityId) { ?>selected<?php } ?>><?php echo $k->city; ?></option>
                                                <?php } ?> 
                                            </select>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div> <!-- /.city -->
                                </div>
                                <div class="col-md-6 col-sm-6">
                                    <div class="form-group"> <!-- city -->
                                        <label for="" class="col-sm-3 control-label">Select <?php if($this->session->userdata('FE_SESSION_USER_LOCATION_VAR')=='IN'):?>
                                                    Zip<?php else:?>
                                                    Postal Box Zip Code<?php endif;?>
                                        </label>
                                        <div class="col-sm-9 zipElementPara">
                                            <?php if ($userShippingDataDetails->zipId == "") { ?>
                                                <select class="form-control" name="zipId" id="zipId" value=""  tabindex="1">
                                                    <option value="">Select</option>
                                                </select>
                                            <?php } else { ?>
                                                <select class="form-control" name="zipId" id="zipId" value=""  tabindex="1">
                                                    <option value="">Select</option>
                                                    <?php foreach ($zipDataArr AS $k) { ?>
                                                        <option value="<?php echo $k->zipId; ?>" <?php if ($k->zipId == $userShippingDataDetails->zipId) { ?>selected<?php } ?>><?php echo $k->zip; ?></option>
                                                    <?php } ?>
                                                </select>
                                            <?php } ?>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div> <!-- /.city -->
                                </div>
                                <div class="col-md-6 col-sm-6">
                                    <div class="form-group"> <!-- name -->
                                        <label for="" class="col-sm-3 control-label">Locality</label>
                                        <div class="col-sm-9 localityElementPara">
                                            <?php if ($userShippingDataDetails->localityId == "") { ?>
                                                <select class="form-control" name="localityId" id="localityId" value=""  tabindex="1">
                                                    <option value="">Select</option>
                                                </select>
                                            <?php } else { ?>
                                                <select class="form-control" name="localityId" id="localityId" value=""  tabindex="1">
                                                    <option value="">Select</option>
                                                    <?php foreach ($localityDataArr AS $k) { ?>
                                                        <option value="<?php echo $k->localityId; ?>" <?php if ($k->localityId == $userShippingDataDetails->localityId) { ?>selected<?php } ?>><?php echo $k->locality; ?></option>
                                                    <?php } ?>
                                                </select>
                                            <?php } ?>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div> <!-- /.name -->
                                </div>
                                <div class="col-md-6 col-sm-6">
                                    <div class="form-group">
                                        <label for="" class="col-sm-3 control-label">Landmark</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="landmark" name="landmark" placeholder="" value="<?= $userShippingDataDetails->landmark; ?>">
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                                <div class="col-sm-12 text-right">
                                    <button type="submit" class="btn btn-primary" name="shippingCheckoutAddress" id="shippingCheckoutAddress">Update</button>
                                </div>
                            </form> <!-- /.form -->                           
                        </div>
                        <div class="js-message" role="alert" style="display: none;"></div>
                    </div> <!-- /.tab-pane -->
                    <div class="tab-pane fade sign-in-up" id="payment"> <!-- tab-pane -->
                        <h3 class="pageTitle">Select Payment Option</h3><hr class="hr hr-primary">
                        <div class="panel panel-body">
                            <form name="single_order_payment_option_pr" id="single_order_payment_option_pr" method="post" action="<?php echo BASE_URL.'shopping/ajax_process_single_payment_start';?>">
                                <?php foreach($paymentGatewayData AS $k):?>
                                <div class="form-group">
                                    <div class="radio"><label><input type="radio" name="paymentoption" value="<?php echo $k->gatewayCode;?>"><?php echo $k->gatewayTitle;?></label></div>
                                </div>
                                <?php endforeach;?>
                                <div class="form-group">
                                    <div class="radio"><label><input type="radio" name="paymentoption" value="sod"> Settlement on Delivery</label></div>
                                </div>
                                <div class="m-t-15"><button type="submit" class="btn btn-primary">Proceed to Pay</button></div>
                            </form>
                        </div>
                        <div class="js-payment-message" role="alert" style="display: none;"></div>                                        
                        <div class="clearfix"></div>
                    </div> <!-- /.tab-pane -->
                </div> <!-- /.tab-content -->
            </div>
        </div>
    </div> <!-- /.container -->
</div>
<?php echo $footer;?>
<script type="text/javascript">
    jQuery(document).ready(function(){
        jQuery('.showPromocodeSection').click(function(){
            var eleID=jQuery(this).attr('data-eleid');
            
            jQuery('#order-coupon'+eleID).show();
            jQuery('.ApplyCouponActionSection'+eleID).show();
            jQuery(this).html('');
        });
    myJsMain.my_checkout_shipping_address();
    jQuery('#countryId').on('change',function(){
           if(jQuery(this).val()==""){
               return false;
           }else{
               jQuery.ajax({
                   type:"POST",
                   url:myJsMain.baseURL+'ajax/show_city_by_country/',
                   data:'countryId='+jQuery(this).val(),
                   success:function(msg){
                       if(msg!=""){
                           jQuery('.cityElementPara').html(msg);
                            //jQuery('.zipElementPara').html(zipDynEle);
                            //jQuery('.localityElementPara').html(localityDynEle);
                       }
                   }
               });
           }
        });
        
        jQuery('.cityElementPara').on('change','#cityId',function(){
        //jQuery('#cityId').on('change',function(){ alert('rr');
           if(jQuery(this).val()==""){
               return false;
           }else{
               jQuery.ajax({
                   type:"POST",
                   url:myJsMain.baseURL+'ajax/show_zip_by_city/',
                   data:'cityId='+jQuery(this).val(),
                   success:function(msg){
                       if(msg!=""){
                           jQuery('.zipElementPara').html(msg);
                           //jQuery('.localityElementPara').html(localityDynEle);
                       }
                   }
               });
           }
        });
        
        jQuery('.zipElementPara').on('change','#zipId',function(){
        //jQuery('#cityId').on('change',function(){ alert('rr');
           if(jQuery(this).val()==""){
               return false;
           }else{
               jQuery.ajax({
                   type:"POST",
                   url:myJsMain.baseURL+'ajax/show_locality_by_zip/',
                   data:'zipId='+jQuery(this).val(),
                   success:function(msg){
                       if(msg!=""){
                           jQuery('.localityElementPara').html(msg);
                       }
                   }
               });
           }
        });
        
        jQuery("body").delegate('.shipping-continue', "click", function(e){
            e.preventDefault();
            var shipping = $(this).attr('data-shipping');
            if(!shipping){ 
                $('div.js-message').html('<div class="alert alert-danger">Please update shipping address!</div>');
             $('div.js-message').fadeIn(300,function() { setTimeout( '$("div.js-message").fadeOut(300)', 15000 ); });
            } else {                
                $('.nav-tabs a[href="#checkout"]').trigger( "click" ); 
            }
        });
        
       jQuery('a[data-toggle="tab"]').on('hidden.bs.tab', function (e) {
            e.target // newly activated tab
            e.relatedTarget // previous active tab
            if(!$(e.relatedTarget).attr('data-shipping')){
                $('.nav-tabs a[href="#billing"]').trigger( "click" );
            }
      });
      
      jQuery("body").delegate('a.js-apply-coupon', "click", function(e){
            e.preventDefault();
            myJsMain.commonFunction.showPleaseWait();
            var orderId=jQuery(this).attr('alt');
            var obj = $('input[id="order-coupon'+orderId+'"]');            
            var cpn = obj.val();
            if(!cpn){ 
                myJsMain.commonFunction.hidePleaseWait();
                $('div.js-message').html('<div class="alert alert-danger">Please enter your promo code!</div>');
             $('div.js-message').fadeIn(300,function() { setTimeout( '$("div.js-message").fadeOut(300)', 15000 ); });
            } else {                
                $.post( myJsMain.baseURL+'shopping/ajax_single_order_set_promo/', {
                    orderId: obj.attr('data-order'),
                    promocode: cpn,
                    orderId: orderId
                },
                function(data){ 
                    myJsMain.commonFunction.hidePleaseWait();
                    if(data.error){
                        $('div.js-message').html('<div class="alert alert-danger">'+data.error+'</div>');
                        $('div.js-message').fadeIn(300,function() { setTimeout( '$("div.js-message").fadeOut(300)', 15000 ); });
                    }
                    
                    if(data.msg){
                        $('div.js-message').html('<div class="alert alert-success">'+data.msg+'</div>');
                        $('div.js-message').fadeIn(300,function() { setTimeout( '$("div.js-message").fadeOut(300)', 15000 ); });
                    }
                    
                    if(data.content){
                        $('tr.js-show-disc').show();
                        $('td.js-show-disc-amt').html('<strong><?php echo $currencySymbol;?> '+data.content.couponAmount+'</strong>');
                        $('.js-tax-total').html('<strong><?php echo $currencySymbol;?> '+data.content.tax+'</strong>');
                        $('.js-sub-total').html('<strong><?php echo $currencySymbol;?> '+data.content.grandTotal+'</strong>');
                        var htmlCoupon = "<button type=\"button\" class=\"btn btn-info btn-xs remove-coupon-from-order-"+orderId+"\" style=\"width:75px\"><i class=\"fa fa-tags\"></i>"+cpn+"</button><button type=\"button\" class=\"btn btn-danger btn-xs remove-coupon-from-order remove-coupon-from-order-"+orderId+"\" data-id=\""+orderId+"\"><i class=\"fa fa-times-circle\"></i></button>";
                        jQuery('.applyCouponElemtnForRemove'+orderId).html(htmlCoupon);
                        obj.val('');
                    }
                    
                }, 'json' ); 
            }
        });
        
        jQuery("body").delegate('.remove-coupon-from-order', "click", function(e){
            orderId= jQuery(this).attr('data-id');
            e.preventDefault();
            myJsMain.commonFunction.showPleaseWait();
            $.post( myJsMain.baseURL+'shopping/ajax_single_order_remove_promo/', {
                    orderId: orderId
                },
                function(data){ 
                    myJsMain.commonFunction.hidePleaseWait();
                    if(data.msg=='ok'){
                        jQuery('.applyCouponElemtnForRemove'+orderId).html('');
                        location.href=myJsMain.baseURL+'shopping/single-checkout/';
                    }else{
                            $('div.js-message').html('<div class="alert alert-danger">Unknown error arises to remove the Coupon Code.</div>');
                            $('div.js-message').fadeIn(300,function() { setTimeout( '$("div.js-message").fadeOut(300)', 15000 ); });
                    }
                }, 'json' ); 
        });
        
        jQuery("body").delegate('.js-proceed-payment', "click", function(e){
            //console.log("goting for payment tab");
            e.preventDefault();
            $('.nav-tabs a[href="#payment"]').trigger( "click" ); 
        });
        
        
        jQuery("body").delegate('.js-single-cart-remove', "click", function(e){
            e.preventDefault();
                         
            var cartId = jQuery(this).attr('data-cartid');
            jQuery.post( myJsMain.baseURL+'shopping/remove-single-cart/', {
                cartId: cartId
            },
            function(data){ 
                if(data.contents){
                    //jQuery('tr#'+cartId).remove();
                    var item = "(<?=count($this->cart->contents())-1?> Item<?php if(count($this->cart->contents())-1 > 1): echo 's';endif;?>)";
                    jQuery('span.js-cart-item').text(item);                    
                    jQuery('tr#'+cartId).remove();  
                    //if(data.reload){
                       // window.location.href = myJsMain.baseURL+'shopping/single-checkout/';
                   // } else {
                        window.location.href = myJsMain.baseURL+'shopping/my-cart/';
                   // }
                }
            }, 'json' );
        }); 
        
        jQuery("body").delegate('a.js-order-payment', "click", function(e){
            myJsMain.commonFunction.showPleaseWait();
            $('#single_order_payment_option')[0].submit();
            /*e.preventDefault();
            var cartId = jQuery(this).attr('data-cartid');
            jQuery.post( myJsMain.baseURL+'shopping/ajax_process_single_payment/', {
                cartId: cartId
            },
            function(data){
                myJsMain.commonFunction.hidePleaseWait();
                if(data.url){
                    window.location.href = data.url;
                }

                if(data.error){
                    $('div.js-payment-message').html(data.error);
                    $('div.js-payment-message').fadeIn(300,function() { setTimeout( '$("div.js-payment-message").fadeOut(300)', 15000 ); });
                }
            }, 'json' );*/
        });
    });
</script>
