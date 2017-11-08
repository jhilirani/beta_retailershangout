<?php echo $html_heading; echo $header;?>
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
            <div class="col-xs-12 col-sm-12 col-md-9 wht_bg">
                    <!-- Tab panes -->
                    <div class="tab_dashbord">
                    	<div class="active row">
                            <div class="col-md-12 col-sm-12" style="height: 100px;">
                                <form name="mpesaSubmitForm" id="mpesaSubmitForm" action="<?php echo $checkOutURL;?>" method="post">
                                    <input type="hidden" name="gatewayparam" id="gatewayparam" value='<PaymentGatewayRequest><MCODE><?php echo $marchantCode;?></MCODE><TXNDATE><?php echo date('dmY');?></TXNDATE><TRANSREFNO><?php echo $orderIdStr;?></TRANSREFNO><TXNTYPE>P</TXNTYPE><AMT>1.00</AMT><NARRATION>Test payment</NARRATION><RETURNURL><?php echo $returnURL; ?></RETURNURL><SURCHARGE>0</SURCHARGE><FILLER1></FILLER1><FILLER2></FILLER2><FILLER3></FILLER3><FILLER4></FILLER4><FILLER5></FILLER5></PaymentGatewayRequest>'/>
                                    <input type="hidden" name="checksum" id="checksum" value="<?php echo hash_hmac('sha256', '<PaymentGatewayRequest><MCODE>'.$marchantCode.'</MCODE><TXNDATE>'.date('dmY').'</TXNDATE><TRANSREFNO>'.$orderIdStr.'</TRANSREFNO><TXNTYPE>P</TXNTYPE><AMT>1.00</AMT><NARRATION>Test payment</NARRATION><RETURNURL>'.$returnURL.'</RETURNURL><SURCHARGE>0</SURCHARGE><FILLER1></FILLER1><FILLER2></FILLER2><FILLER3></FILLER3><FILLER4></FILLER4><FILLER5></FILLER5></PaymentGatewayRequest>', 'sk2vmglp9f5s');?>"/>
                                </form>
                                <script type="text/javascript">
                                jQuery(document).ready(function(){
                                    myJsMain.commonFunction.showPleaseWait();
                                    //jQuery('#mpesaSubmitForm').submit();
                                    document.mpesaSubmitForm.submit();
                                });
                                </script>
                            </div>                            
                        </div>
                    </div>
                </div>
        </div>
    </div>
</div>    
<?php echo $footer;?>