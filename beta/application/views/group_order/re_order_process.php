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
                    <h6>Hangout Re-order Process [RH-OD-<?=$order->orderId?>]</h6>
                    <div class="active row grouporder_id">
                        <h4> You can choose one of the below operation for this order.</h4>
                        <div class="col-xs-6 col-md-3"></div>
                        <div class="col-xs-6 col-md-6">

                            <a href="<?=BASE_URL."shopping/group-re-order-accept-process/".base64_encode($order->orderId*226201)."/".base64_encode(100)?>" class="btn btn-info btn-lg  btn-block">Re-order by me</a>
                            <a href="<?=BASE_URL."edit_groups_re_order/".base64_encode($group->groupId*987654321)."/".base64_encode($order->orderId)?>" class="btn btn-success btn-lg btn-block">Send Buyer Club member for Re-order</a>
                        </div>
                        <div class="col-xs-6 col-md-3"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php echo $footer;?>