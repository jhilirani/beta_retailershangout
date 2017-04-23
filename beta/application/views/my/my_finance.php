<?php echo $html_heading; echo $header; //pre($financeDataArr);
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
                <form action="" name="my_finance" id="my_finance"> <!-- form -->
                    <div class="panel panel-body"> <!-- panel -->
                        <h4 class="h4">Finance Information</h4>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group"> <!-- name -->
                                    <label>m-Pesa Account Mobile Number</label>
                                    <input type="text" class="form-control" name="mPesaMobileNumber" id="mPesaMobileNumber" class="form-control" required="required" value="<?php echo $financeDataArr[0]->mPesaMobileNumber;?>">
                                </div> <!-- /.name -->
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group"> <!-- name -->
                                    <label>m-Pesa Account Number mPIN</label>
                                    <input type="text" class="form-control" name="mPIN" id="mPIN" class="form-control" required="required" value="<?php echo $financeDataArr[0]->mPIN;?>">
                                </div> <!-- /.name -->
                            </div>
                        </div>
                    </div> <!-- /.panel -->
                    <div class="form-group clearfix mrg-lt"> <!-- save -->
                        <button type="submit" class="btn btn-default">Cancel</button>
                        <button type="submit" class="btn btn-primary pull-right">Update Info</button>
                    </div> <!-- /.save -->
                </form> <!-- /.form -->
            </div>
        </div>
    </div>
</div>