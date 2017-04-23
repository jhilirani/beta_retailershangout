<?php echo $html_heading; echo $header; //pre($userDataArr);
$CI =& get_instance();
$CI->load->model('Product_model');
$CI->load->model('Order_model');
$currencySymbol= '<i class="fa fa-rupee"></i>';
?>
<script src="<?php echo SiteJSURL;?>user-all-my-js.js" type="text/javascript"></script>
<div class="breadcrumb">
    <div class="container">
        <ul class="filters visible-xs visible-sm pull-left">
            <li class="filterBtn"><span><i class="fa fa-bars"></i> Menu</span></li>
        </ul>
    </div><!-- /.container -->
</div><!-- /.breadcrumb -->

<div class="bodyContent" id="profilePage">
    <div class='container'>
        <div class='row'>
            <div class="col-xs-12 col-sm-12 col-md-3 sidebar filters">
                <span class="cross visible-xs visible-sm">&times;</span>
                <div class="side-menu animateDropdown">
                    <nav class="yamm megamenu-horizontal" role="navigation">
                        <?php echo $userMenu;?>
                    </nav><!-- /.megamenu-horizontal -->
                </div> <!-- /.sidemenu-holder -->
            </div> <!-- /.sidebar -->
            <div class="col-xs-12 col-sm-12 col-md-9">
                <form action=""> <!-- form -->
                    <div class="panel panel-body"> <!-- panel -->
                        <h4 class="h4">My Orders</h4>
                        <div class="checkout"> <!-- tab-pane -->
                            <?php if($orders):?>
                            <form action="">
                                <div class="table-responsive">
                                    <table class="table table-striped"> <!-- table -->
                                        <thead>
                                        <tr> <!-- row -->
                                            <td><h4 class="h4">Order ID</h4></td>
                                            <td class="text-center"><h4 class="h4">Description</h4></td>
                                            <td class="text-center"><h4 class="h4">Price</h4></td>
                                            <td class="text-center"><h4 class="h4">Order Date</h4></td>
                                            <td class="text-center"><h4 class="h4">Status</h4></td>
                                            <td class="text-center"><h4 class="h4">&nbsp;</h4></td>
                                        </tr> <!-- /.row -->
                                        </thead>
                                        <tbody>
                                    <?php foreach($orders as $key => $order):
                                       $info =  unserialize(base64_decode($order->orderInfo));
                                       if(!$info):
                                           $ptitle = $order->title;
                                           $pimage = $order->image;
                                       else:
                                           $ptitle = $info['pdetail']->title?$info['pdetail']->title:$order->title;
                                           $pimage = $info['pimage']->image?$info['pimage']->image:$order->image;
                                       endif;
                                       $porder = $this->Order_model->get_parent_order($order->orderId);
                                       ?>
                                        <tr id="not-<?=base64_encode($order->orderId*226201);?>"> <!-- row -->
                                            <td><span class="label label-success">RH-OD-<?=$order->orderId?></span></td>
                                                
                                            <td class="name">
                                                <div class="media">
                                                    <a class="pull-left" href="<?php echo BASE_URL.'product/details/'.base64_encode($order->productId);?>"  target="_blank">
                                                        <img class="media-object img-thumbnail img-responsive" src="<?=PRODUCT_DEAILS_SMALL.$pimage?>" alt="<?=$ptitle;?>" height="80">
                                                    </a>
                                                    <div class="media-body">
                                                        <h4 class="media-heading"><?=$ptitle;?></h4>
                                                        <span class="text-mute">Sub Heading</span>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="ps-cell text-center price">
                                                <span class="selling"><?php echo $currencySymbol;?> <?=$order->orderAmount;?></span>
                                            </td>
                                            <td><i class="fa fa-clock-o"></i><?=date('F j, Y, g:i a' , strtotime($order->orderDate));?></td>
                                            <td><span class="label label-info"><?php echo ($order->orderType=='GROUP') ? 'Hangout' :'Single';?> - <?=$status[$order->status];?></span></td>
                                            <td class="ps-cell qty">
                                                <?php if($porder):?>
                                                        <a class="btn btn-warning btn-xs" href="<?=BASE_URL?>my-orders/parent/<?=base64_encode($order->orderId*226201);?>"><i class="fa fa-eye"></i> Parent Order</a>
                                                    <?php endif;?>
                                                    <?php if($order->orderType == 'SINGLE' && $order->status < 4):?>
                                                        <a class="btn btn-danger btn-xs" href="<?=BASE_URL?>order/cancellation/<?=base64_encode($order->orderId*226201);?>"><i class="fa fa-times"></i> Cancel Order</a>
                                                    <?php endif;?>
                                                    <?php if($order->isPaid==0):?>
                                                        <a class="btn btn-success btn-xs js-sod-payment-order" href="javascript:void(0);" data-payamount="<?=$order->orderAmount;?>" data-paymentid="<?php echo base64_encode($order->orderId*226201);?>"><i class="fa fa-credit-card"></i> Pay Now</a>
                                                    <?php endif;?>    
                                                    <a class="btn btn-success btn-xs js-view-order" href="<?php echo BASE_URL.'order/details/'.base64_encode($order->orderId*226201);?>"><i class="fa fa-eye"></i> Order</a>
                                            </td>
                                            
                                        </tr> <!-- /.row -->
                                        <?php endforeach;?>
                                        </tbody>
                                    </table> <!-- /.table -->
                                </div>
                            </form>
                            <?php else:?>
                            <div class="list-group-item list-group-item-info">
                                <div class="alert alert-info" role="alert">You don't have any order!</div>
                            </div> 
                            <?php endif;?>
                        </div> <!-- /.tab-pane -->
                    </div> <!-- /.panel -->
                </form> <!-- /.form -->
            </div>
        </div>
    </div>
</div>
<div id="sod_payment_final_input_view"></div>
<?php echo $footer;?>
<script type="text/javascript">
    jQuery(document).ready(function(){
        jQuery('.js-sod-payment-order').on('click',function(){
            var jqout = $(this);
            jQuery.post( myJsMain.baseURL+'ajax/sod_payment_final_input_view/', {
                paymentid: $(this).data('paymentid'),orderGenId:'<?php time();?>',payAmount:$(this).data('payamount')
            },
            function(data){
                if(data.result=='good'){
                    jQuery('#sod_payment_final_input_view').html(data.content);
                }
            }, 'json' );
        });
        
    });
</script>    