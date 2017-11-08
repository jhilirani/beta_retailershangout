<?php echo $html_heading; echo $header; $currencySymbol='<i class="fa fa-rupee"></i>';//($this->session->userdata('FE_SESSION_USER_LOCATION_VAR')=="IN") ? '<i class="fa fa-rupee"></i>' :'KSh';
?>
<script src="<?php echo SiteJSURL;?>user-all-my-js.js" type="text/javascript"></script>
<div class="breadcrumb">
    <div class="container">
        <ul class="filters visible-xs visible-sm pull-left">
            <li class="filterBtn"><span><i class="fa fa-bars"></i> Menu</span></li>
        </ul>
    </div><!-- /.container -->
</div><!-- /.breadcrumb -->
<div class="bodyContent">
    <div class='container'>
        <div class='row'>
            <div class="col-xs-12 col-sm-12 col-md-3 sidebar filters">
                <span class="cross visible-xs visible-sm">&times;</span>
                <div class="side-menu animateDropdown">
                    <nav class="yamm megamenu-horizontal" role="navigation">
                        <?php echo $userMenu;?>
                    </nav>
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-9">
                <div class="list-group gen_infmtn">
                    <h6>Request Cancellation</h6>
                    <div class="active row grouporder_id">
                        <div class="col-md-12">
                            <div class="panel panel-info">
                               <div class="panel-heading">
                                 <h3 class="panel-title">RH-OD-<?=$order->orderId?></h3>
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-md-2">
                                            <a href="<?php echo BASE_URL.'product/details/'.base64_encode($order->productId);?>" class="" target="_blank"><img src="<?=PRODUCT_DEAILS_SMALL.$orderinfo['pimage']->image?>" alt="..." class="img-thumbnail img-responsive"/></a>
                                        </div>
                                        <div class="col-md-10">
                                            <h3><a href="<?php echo BASE_URL.'product/details/'.base64_encode($order->productId);?>" class="" target="_blank"><?=isset($orderinfo['pdetail']->title)?$orderinfo['pdetail']->title:''?></a></h3>
                                            <h5>Qty: <small><?=isset($order->productQty)?$order->productQty:'0'?></small></h5>
                                            <h5>Subtotal: <small><?php echo $currencySymbol;?> <?=isset($order->subTotalAmount)?$order->subTotalAmount:''?></small></h5>
                                        </div>
                                    </div>
                                </div>
                            </div> 

                            <form action="<?php echo BASE_URL.'order/cancel_processing/';?>" name="cancel-form" class="cancel-form well" id="wtil-cms-form" method="post">
                                <input type="hidden" name="redirect" value="<?=BASE_URL?>order/details/<?=base64_encode($order->orderId*226201);?>" />
                                <input type="hidden" name="orderId" value="<?=base64_encode($order->orderId*226201);?>" />
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Reason for cancellation [* Required]</label>
                                  <select name="reason">
                                      <option value="">Select</option>
                                      <option value="Not interested anymore">Not interested anymore</option>
                                      <option value="Order delivery delayed">Order delivery delayed</option>
                                      <option value="Order duplicate items by mistake">Order duplicate items by mistake</option>
                                      <option value="Purchased wrong item">Purchased wrong item</option>
                                      <option value="Other Reasons">Other Reasons</option>
                                  </select>
                                </div>
                                <div class="form-group">
                                  <label for="exampleInputPassword1">Your Comments [Optional]</label>
                                  <textarea class="form-control" name="comments" rows="3"></textarea>
                                </div>
                                <small>Note: There will be no refund as the order is placed as Settlement On Delivery.</small>
                                    <input type="submit" class="btn btn-info" name="wtil-post-submit" value="Submit">
                                    <div class="et-ajax-loader-global cms-module-loader"><span>Processing...</span></div>
                                    <div class="cms-ajax-feedback"></div>
                            </form>

                            <div class="row">
                                <div class="col-md-6 col-md-offset-3">
                                    <a class="btn btn-warning btn-xs btn-block" href="<?=BASE_URL?>"><i class="fa fa-home"></i> Keep shopping</a>
                                    <a class="btn btn-info btn-xs btn-block" href="<?=BASE_URL?>my-orders" ><i class="fa fa-bars"></i> View all orders</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>    