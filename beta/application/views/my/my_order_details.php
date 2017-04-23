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
                <div class="bodyContent" id="checkoutPage">
                    <div class="container checkout"> <!-- container -->
                        <div class="checkout">
                            <div class="panel panel-default" id="printable">
                                <div class="panel-heading">
                                    <div class="col-md-12">
                                        <div class="col-md-4 col-sm-12"><h4 class="pageTitle">Order: #RH-OD-<?=$order->orderId?></h4></div>
                                        <div class="col-md-4 col-sm-12"><?php if($order->orderType == 'SINGLE' && $order->status < 4):?><a class="btn btn-danger btn-xs pull-right" href="<?=BASE_URL?>order/cancellation/<?=base64_encode($order->orderId*226201);?>" data-oid="<?=base64_encode($order->orderId*226201);?>"><i class="fa fa-times"></i> Cancel Order</a><?php endif;?></div>
                                        <div class="col-md-4 col-sm-12"><?php if($order->status == 5):?><a class="btn btn-info btn-xs pull-right no-print" data-oid="<?=base64_encode($order->orderId*226201);?>"><i class="fa fa-file-text-o"></i> View Invoice</a><?php endif;?></div>
                                    </div>
                                    
                                </div>
                                <div class="panel-body">
                                    <h4 class="pointer h4" data-toggle="collapse" data-target="#orderDetails">Order Details <span class="caret"></span></h4>
                                    <hr class="hr hr-primary">
                                    <br class="hide">
                                    <div class="collapse in" id="orderDetails">
                                        <div class="table-responsive">
                                            <table class="table table-bordered" style="width: 100%;"> <!-- table -->
                                                <tr> <!-- row -->
                                                    <td><h4 class="h4">Order Id</h4></td>
                                                    <td class="text-center"><h4 class="h4">Member</h4></td>
                                                    <td class="text-center"><h4 class="h4">Total Amount</h4></td>
                                                    <td class="text-center"><h4 class="h4">Payment Status</h4></td>
                                                    <td class="text-center"><h4 class="h4">Order Status</h4></td>
                                                    <td class="text-center"><h4 class="h4">Order Placed</h4></td>
                                                </tr> <!-- /.row -->
                                                <tr> <!-- row -->
                                                    <td>Order #RH-OD-<?=$order->orderId?></td>
                                                    <td class="text-center"><?=$order->orderType=='GROUP'?'Hangout':'Self'?></td>
                                                    <td class="text-center"><?php echo $currencySymbol;?><?=$order->subTotalAmount?></td>
                                                    <td class="text-center text-success"><?php echo ($order->paymentType=='settlementOnDelivery')?'Settlement On Delivery':'Paid';?></td>
                                                    <td class="text-center h4"><span class="label label-primary"><?=$status[$order->status];?></span></td>
                                                    <td class="text-center"><?=$order->orderDate;?></td>
                                                </tr> <!-- /.row -->
                                            </table> <!-- /.table -->
                                            <br class="hide">
                                            <hr class="hide">
                                            <br class="hide">
                                            <table class="table table-bordered" style="width: 100%;"> <!-- table -->
                                                <tr> <!-- row -->
                                                    <td><h4 class="h4">User Name</h4></td>
                                                    <td class="text-left"><h4 class="h4">Shipping Address</h4></td>
                                                    <td class="text-center"><h4 class="h4">Phone No.</h4></td>
                                                    <td class="text-center"><h4 class="h4">Email</h4></td>
                                                </tr> <!-- /.row -->
                                                <tr> <!-- row -->
                                                    <td><?=isset($orderinfo['shipping']->firstName)?$orderinfo['shipping']->firstName:''?> <?=isset($orderinfo['shipping']->lastName)?$orderinfo['shipping']->lastName:''?></td>
                                                    <td class="text-left">?=isset($orderinfo['shipping']->address)?$orderinfo['shipping']->address:''?><br>
                                                            <?=isset($orderinfo['shipping']->locality)?$orderinfo['shipping']->locality:''?><br>
                                                        City: <?=isset($orderinfo['shipping']->city)?$orderinfo['shipping']->city:''?><br>
                                                        State :<?=isset($orderinfo['shipping']->stateName)?$orderinfo['shipping']->stateName:''?><br>
                                                        PIN :<?=isset($orderinfo['shipping']->zip)?$orderinfo['shipping']->zip:''?><br>
                                                        Country :<?=isset($orderinfo['shipping']->countryName)?$orderinfo['shipping']->countryName:''?><br>
                                                        <b>Landmark</b> :<?=isset($orderinfo['shipping']->landmark)?$orderinfo['shipping']->landmark:''?></td>
                                                    <td class="text-center"><?=isset($orderinfo['shipping']->contactNo)?$orderinfo['shipping']->contactNo:''?></td>
                                                    <td class="text-center"><?=isset($orderinfo['billing']->email)?$orderinfo['billing']->email:''?></td>
                                                </tr> <!-- /.row -->
                                            </table> <!-- /.table -->
                                            <br class="hide">
                                            <br class="hide">
                                        </div>
                                    </div>
                                    <h4 class="pointer h4" data-toggle="collapse" data-target="#productDetails">Product Details <span class="caret"></span></h4>
                                    <hr class="hr hr-primary">
                                    <br class="hide">
                                    <div class="collapse in" id="productDetails">
                                        <div class="table-responsive">
                                            <table class="table table-striped" style="width: 100%;"> <!-- table -->
                                                <tr> <!-- row -->
                                                    <td class="text-left" style="width:17%;"><h4 class="h4">Product</h4></td>
                                                    <td class="text-center" style="width:17%;"><h4 class="h4">Model</h4></td>
                                                    <td class="text-center" style="width:17%;"><h4 class="h4">Brand</h4></td>
                                                    <td class="text-center" style="width:17%;"><h4 class="h4">Price</h4></td>
                                                    <td class="text-center" style="width:17%;"><h4 class="h4">Quantity</h4></td>
                                                    <td class="text-right" style="width:17%;"><h4 class="h4">Total Price</h4></td>
                                                </tr> <!-- /.row -->
                                                <tr> <!-- row -->
                                                    <td class="name">
                                                         <?php if(isset($orderinfo['pimage']->image)):?>
                                                        <a class="pull-left" href="<?php echo BASE_URL.'product/details/'.base64_encode($order->productId);?>" arget="_blank">
                                                            <img class="media-object" src="<?=PRODUCT_DEAILS_SMALL.$orderinfo['pimage']->image?>" alt="Image" height="80">
                                                        </a>
                                                        <?php endif;?>
                                                        <br/>
                                                        <a href="<?php echo BASE_URL.'product/details/'.base64_encode($order->productId);?>" class="" target="_blank"><?=isset($orderinfo['pdetail']->title)?$orderinfo['pdetail']->title:''?></a><br>
                                                          <a class="btn btn-info btn-xs pull-left no-print" data-oid="<?=base64_encode($order->orderId*226201);?>"><i class="fa fa-thumbs-up"></i> Review Product</a>
                                                    </td>
                                                    <td class="name text-center"><h4 class="h4"><?=isset($orderinfo['pdetail']->model)?$orderinfo['pdetail']->model:''?><</h4></td>
                                                    <td class="name text-center"><h4 class="h4"><?=isset($orderinfo['pdetail']->brandTitle)?$orderinfo['pdetail']->brandTitle:''?></h4></td>
                                                    <td class="ps-cell text-center price">
                                                        <span class="selling"><?=isset($order->orderAmount)?$order->orderAmount/$order->productQty:'0.00'?></span>
                                                    </td>
                                                    <td class="ps-cell qty"><div class="h4"><?=isset($order->productQty)?$order->productQty:'0'?></div></td>
                                                    <td class="ps-cell total"><?php echo $currencySymbol;?><?=isset($order->subTotalAmount)?$order->subTotalAmount:''?></td>
                                                </tr> <!-- /.row -->
                                                <tr> <!-- row -->
                                                    <td colspan="5" class="sub-total">Sub Total</td>
                                                    <td class="sub-total"><?php echo $currencySymbol;?><?=isset($order->subTotalAmount)?$order->subTotalAmount:''?></td>
                                                </tr> <!-- /.row -->
                                                <tr> <!-- row -->
                                                    <td colspan="5" class="sub-total">Dsicount</td>
                                                    <td class="sub-total"><?php echo $currencySymbol;?><?=isset($order->discountAmount)?$order->discountAmount:''?></td>
                                                </tr> <!-- /.row -->
                                                <tr> <!-- row -->
                                                    <td colspan="5" class="sub-total">Service Tax (<!--15%-->)</td>
                                                    <td class="sub-total"><?php echo $currencySymbol;?><?=isset($order->taxAmount)?$order->taxAmount:'0.00'?></td>
                                                </tr> <!-- /.row -->

                                                <tr> <!-- row -->
                                                    <td colspan="5" class="sub-total">Total</td>
                                                    <td class="sub-total"><?php echo $currencySymbol;?><?=isset($order->orderAmount)?$order->orderAmount:''?></td>
                                                </tr> <!-- /.row -->
                                                <tr> <!-- row -->
                                                    <td colspan="5" class="sub-total">Paid</td>
                                                    <td class="sub-total"><?php echo $currencySymbol;?><?=isset($order->orderAmount)?$order->orderAmount:''?></td>
                                                </tr> <!-- /.row -->
                                            </table> <!-- /.table -->
                                            <br class="hide">
                                            <br class="hide">
                                            <table class="table table-striped text-center mrg-z"  style="width: 100%;">
                                                <tr>
                                                    <td align='middle'>
                                                            <span id='btnPrint' style='cursor: pointer;' data-text="Retailershangout.com - Order Information - RH-OD-<?=$order->orderId;?>"><i class="fa fa-print"></i><br>
                                                                PRINT ORDER</span>
                                                        </td>
                                                        <td align='middle'><?php if($order->status == 5):?><a data-oid="<?=base64_encode($order->orderId*226201);?>"><i class="fa fa-envelope"></i><br>EMAIL INVOICE</a><?php endif;?></td>
                                                        <td align='middle'><span><a href="<?=BASE_URL?>contact-us"><i class="fa fa-phone-square"></i><br>
                                                                    CONTACT US</a></span></td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="text-right">
                                <!--<button type="button" class="btn btn-primary" onclick="printInfo('print')"><i class="fa fa-print"></i> Print Details</button>-->
                                <a href="<?=BASE_URL?>my-orders"><button class="btn btn-warning"><i class="fa fa-arrow-left"></i> Back</button> </a>
                                        <?php if($order->status == 5):?><a class="btn btn-info btn-xs pull-right" data-oid="<?=base64_encode($order->orderId*226201);?>"><i class="fa fa-file-text-o"></i> View Invoice</a><?php endif;?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php echo $footer;?>
<div id="print"></div>
<script>
    function printInfo(areaID) {
        var printContent = document.getElementById(areaID);
        var WinPrint = window.open('', '', 'width=900,height=650');
        WinPrint.document.write(printContent.innerHTML);
        WinPrint.document.close();
        WinPrint.focus();
        WinPrint.print();
        WinPrint.close();
    }
    var cloneDiv = $('#printable').clone();
    document.getElementById('print').innerHTML = cloneDiv[0].innerHTML;
</script>