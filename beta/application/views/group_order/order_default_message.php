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
                    <h6>Retailershangout Information for you</h6>
                    <div class="active row grouporder_id">

                        <?php if($this->session->flashdata('error')): ?>
                        <div class="alert alert-danger" role="alert"><i class="fa fa-exclamation-triangle"></i> <?=$this->session->flashdata('error')?></div>
                        <?php elseif($this->session->flashdata('msg')):?>
                        <div class="alert alert-success" role="alert"><i class="fa fa-check"></i> <?=$this->session->flashdata('msg')?></div>
                        <?php endif;?>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php echo $footer;?>