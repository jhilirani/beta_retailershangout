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
                    <div class="col-md-12 col-sm-12">
                        <div class="gen_infmtn">
                            <h6>Hangout order ID <span class="label label-success"><?=$orderId?></span> </h6>
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
                                    <h5><strong>Hangout Members</strong></h5><?php foreach ($group->users as $ukey => $usr): ?>
                                        <p class="text-left"><?= $usr->firstName ?> <?= $usr->lastName ?></p>
                                    <?php endforeach;
                                endif;
                                ?>
                            </div>
                            </div>

                            <div class="clearfix"></div>
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

                        <button type="button" class="btn btn-primary pull-right js-group-order-process">Process the Order</button>
                        <div class="clearfix"></div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<?php echo $footer;?>

<script type="text/javascript">  
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
          
        
        jQuery("body").delegate('button.js-group-order-process', "click", function(e){
            var obj = $('input[id="js-order-info"]'); 
            if(!obj.attr('data-groupid')){
                $('div.js-message').html('Please add a Hangout!');
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
</script>