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
                <form action="#" method="post" name="start_groups_order" id="start_groups_order"> 
                <input type="hidden" id="js-order-info" name="orderId" value="<?=$orderId?>" data-groupid="<?=$groupId?>" data-userid="<?=$user->userId?>" >
                <div class="panel panel-body"> <!-- panel -->
                    <div class="gen_infmtn">
                        <h4>Hangout order ID <span class="label label-success"><?=$orderId?></span> </h4>
                    </div>
                    <div class="group-selection js-display-selected-group">
                        <?php if($group):?>
                        <div class="container-fluid">
                            <div class="col-md-3 col-sm-3 grp_dashboard" style="margin:0;">
                            <div class="<?= $group->groupColor ?>">
                                <span><i class="fa  fa-group fa-5x"></i></span>
                            </div>
                            <div class="grp_title"><?= $group->groupTitle ?></div>
                        </div>        
                        <div class="col-md-6">
                            <h5><strong>Hangout Leader</strong></h5>
                            <p class="text-left"><?= $group->admin->firstName ?> <?= $group->admin->lastName ?></p>
                            <?php if ($group->users): ?>
                                <h5><strong>Hangout Users</strong></h5><?php foreach ($group->users as $ukey => $usr): ?>
                                    <p class="text-left"><?= $usr->firstName ?> <?= $usr->lastName ?></p>
                                <?php endforeach;
                            endif;
                            ?>
                        </div>
                        </div>

                        <div class="clearfix"></div>
                        <label class="input-group">
                            <span class="input-group-addon">
                                <input type="radio"  name="selectgroup" id="optionsRadios1" class="js-order-group" value="exists">
                            </span>
                            <span class="group-label">Want to change above Hangout from your existing Hangout.</span>
                        </label><!-- /input-group -->


                        <label class="input-group">
                            <span class="input-group-addon">
                                <input type="radio"  name="selectgroup" id="optionsRadios2" class="js-order-group" value="new">
                            </span>
                            <span class="group-label">Want to create a new Hangout.
                            </span>
                        </label><!-- /input-group -->
                        <?php else: ?>
                        <label class="input-group">
                            <span class="input-group-addon">
                                <input type="radio"  name="selectgroup" id="optionsRadios1" class="js-order-group" value="exists">
                            </span>
                            <span class="group-label">Please select a Hangout from your existing Hangout.</span>
                        </label><!-- /input-group -->


                        <label class="input-group">
                            <span class="input-group-addon">
                                <input type="radio"  name="selectgroup" id="optionsRadios2" class="js-order-group" value="new">
                            </span>
                            <span class="group-label">Please create a new Hangout.
                            </span>
                        </label><!-- /input-group -->
                        <?php endif;?>
                    </div>
                    <div class="clearfix"></div>
                    <div class="panel js-display-exisit-group"></div>
                    <div class="panel panel-default">
                        <div class="panel-body">

                            <div class="form-horizontal">
                                <label for="input3" class="col-sm-7 control-label">Please enter your no of Quantity of this Order<br>Available Qty : ( <?=$availQty?> ). Total Qty : ( <?=$totalQty?>) </label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" id="js-estd-qty" placeholder="<?=$dftQty?>" value="">
                                    <input type="hidden" class="form-control" id="js-avail-qty" value="<?=$availQty?>">
                                </div>


                            </div>
                        </div>
                    </div>
                    <div class="alert alert-danger js-message" role="alert" style="display: none;"></div>

                    <div class="clearfix"></div>

                    <button type="button" class="btn btn-primary pull-right js-group-order-process">Invite Hangout User to Process the Order</button>
                    <div class="clearfix"></div>
                </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- hangout modal -->
<div class="modal fade" id="createGroupModalLogin">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Create New Hangout</h4><hr class="hr-primary hr">
            </div>
            <form action="#" method="post" name="add_groups_for_order" class="form-horizontal" id="add_groups_for_order"> 
            <div class="modal-body">
                <div id="login">
                    <div class="js-message" style="display:none;"></div>
                    <input type="hidden" name="groupAdminId" value="<?=$user->userId?>">
                    <div class="form-group">
                        <label>Hangout Name</label>
                        <input type="text" class="form-control" id="groupTitle" name="groupTitle" placeholder="Enter hangout name" required>
                    </div><hr>
                    <input type="hidden" name="countryId" id="countryId" value="99" />
                    <h4 class="h4">Search Hangout Member</h4>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label>Select City</label>
                                <div class="cityElementPara col-sm-7">
                                    <select name="cityId" class="form-control nova heght_cntrl" id="cityId">
                                        <option value="">Select City</option>
                                        <?php foreach ($cityDataArr As $k) { ?>
                                        <option value="<?php echo $k->cityId; ?>"><?php echo $k->city; ?></option>
                                        <?php } ?> 
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label>Select Zip</label>
                                <div class="zipElementPara col-sm-7">
                                    <select name="zipId" class="form-control nova heght_cntrl" id="zipId">
                                        <option>Select Zip</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label>Select Locality</label>
                                <div class="localityElementPara col-sm-7">
                                    <select name="localityId" class="form-control nova heght_cntrl" id="localityId">
                                        <option>Select Locality</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label>Select Product Category</label>
                                <select name="productType" class="form-control nova heght_cntrl" id="productType">
                                    <option value="">Select</option>
                                    <?php foreach ($CatArr AS $categoryId=>$categoryName): ?>
                                        <option value="<?= $categoryId ?>"><?= $categoryName ?></option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                        </div>
                    </div><hr>
                    <div class="form-group js-show-group-locality-users">
                    </div>
                    <div class="js-show-group-users-tags">
                        <div class="form-group"><label class="col-sm-3 control-label">Selected Club Member :</label></div>
                    </div>
                </div>
            </div>
            
            <div class="modal-footer">
                <input type="submit"  class="grpButton" name="creatGrp" id="grpButton" value="Create New Buyer Club" />
            </div>
            </form>
        </div>
    </div>
</div> <!-- /.hangout modal -->
<?php echo $footer;?>
<script type="text/javascript">
    var zipDynEle='<select class="form-control nova heght_cntrl" name="zipId" id="zipId" value=""  tabindex="1"><option value="">Select Zip</option></select>';
    var localityDynEle='<select class="form-control nova heght_cntrl" name="localityId" id="localityId" value=""  tabindex="1"><option value="">Select Locality</option></select>';
    var cityDynEle='<select class="form-control nova heght_cntrl" name="cityId" id="cityId" value=""  tabindex="1"><option value="">Select City</option></select>';
    var selected_user_tag_div_content='<div class="form-group"><label class="col-sm-3 control-label">Selected Users :</label></div>';
    //myJsMain.my_billing_address();
    myJsMain.my_create_groups();
    function test1(str) {
        return /^ *[0-9]+ *$/.test(str);
    }
    jQuery(document).ready(function(){
        <?php if($this->session->flashdata('error')): ?>
                $('div.js-message').html('<?=$this->session->flashdata('error')?>');
                $('div.js-message').fadeIn(300,function() { setTimeout( '$("div.js-message").fadeOut(300)', 15000 ); });                         
        <?php endif;?>
    });
    jQuery(document).ready( function() {
        $('.js-group-popover').popover({html:true,container: 'body'});
        
        jQuery("body").delegate('.js-order-group', "click", function(e){
            e.preventDefault();
            var grp = jQuery(this).val();
            var obj = jQuery(this);
            jQuery(".js-order-group").prop('checked', false);
            if(grp == 'new'){
                jQuery('div.js-display-exisit-group').empty();
                jQuery('#createGroupModalLogin').modal('show');
            } else if( grp == 'exists'){
                myJsMain.commonFunction.showPleaseWait();
                var userId = jQuery('input[id="js-order-info"]').data('userid');
                jQuery.post( myJsMain.baseURL+'ajax/get_my_groups/', {
                    userId: userId
                },
                function(data){ 
                    myJsMain.commonFunction.hidePleaseWait();
                    if(data.contents){
                        jQuery('div.js-display-exisit-group').html(data.contents);                        
                        obj.prop('checked', true);
                    }
                }, 'json' );
            }
        }); 
        
        jQuery("body").delegate('input[id="js-order-info"]', "click", function(e){
            myJsMain.commonFunction.showPleaseWait();
            e.preventDefault();//console.log($(this).data('groupid'));
            var groupId = $(this).attr('data-groupid');
            var jqout = $(this);
            $.post( myJsMain.baseURL+'ajax/get_single_group/', {
                groupId: groupId,
                orderId: $(this).val()
            },
            function(data){ 
                myJsMain.commonFunction.hidePleaseWait();
                if(data.contents){
                    $('div.js-display-exisit-group').empty();
                    $('div.js-display-selected-group').html(data.contents);
                }
            }, 'json' );
        }); 
        
        jQuery("body").delegate('input[class="js-select-group"]', "click", function(e){
            var gid = $(this).val();alert(gid); 
            $('input[id="js-order-info"]').attr('data-groupid', gid);
            $('input[id="js-order-info"]').trigger( "click" );            
        });   
        
        jQuery("body").delegate('button.js-group-order-process', "click", function(e){
            var obj = $('input[id="js-order-info"]'); 
            if(!obj.attr('data-groupid')){
                $('div.js-message').html('Please add a Hangout.');
                //$('div.js-message').show();
                $('div.js-message').fadeIn(300,function() { setTimeout( '$("div.js-message").fadeOut(300)', 15000 ); });
                return;
            }
            
            if(!$('#js-estd-qty').val()){
                $('div.js-message').html('Please enter your quantity!');
                //$('div.js-message').show();
                $('div.js-message').fadeIn(300,function() { setTimeout( '$("div.js-message").fadeOut(300)', 15000 ); });
                return;
            }
            //console.log($('#js-estd-qty').val()+'==='+$('#js-avail-qty').val());
            var estd = $('#js-estd-qty').val();
            var avail = $('#js-avail-qty').val();
            
            
            if(parseInt(estd) > parseInt(avail) || parseInt(estd) == 0 || !test1(estd)){
                $('div.js-message').html("Please enter valid quantity!");
                //$('div.js-message').show();
                $('div.js-message').fadeIn(300,function() { setTimeout( '$("div.js-message").fadeOut(300)', 15000 ); });
                  
                return;
            }
            
            
            
            $.post( myJsMain.baseURL+'shopping/ajax_update_group_order/', {
                orderId: obj.val(),
                qty: estd
            },
            function(data){ 
                if(data.contents){
                    window.location.href = data.contents;
                }
            }, 'json' );
            
            
        });
    });
    function isInteger(n) {
        return (typeof n == 'number' && /^[0-9]+$/.test());
    }
</script>

