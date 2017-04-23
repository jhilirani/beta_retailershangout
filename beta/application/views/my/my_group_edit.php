<?php echo $html_heading; echo $header; //pre($userDataArr);?>
<style type="text/css">
    .popover{
        width: 100%;
    }
</style>
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
                <div class="row"><i class='fa fa-group'></i> Edit Hangout : <?= $group->groupTitle ?></div>
                <div class="row"></div>
                <form action="#" method="post" name="update_groups" class="form-inline" id="update_groups">
                    <input type="hidden" name="reorder" value="<?=$reorder?>">
                    <input type="hidden" name="groupId" value="<?=$group->groupId?>">
                    <input type="hidden" name="orderId" value="<?=$orderId?>">
                    <input type="hidden" name="countryId" id="countryId" value="99" />
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label>Hangout Title </label>
                                <input type="text" class="form-control" id="groupTitle" name="groupTitle" placeholder="Jane Doe" value='<?= $group->groupTitle ?>' required="required">
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label>Select City</label>
                                <div class="cityElementPara col-sm-7">
                                    <select name="cityId" class="form-control nova heght_cntrl" id="cityId">
                                        <option>Select City</option>
                                        <?php foreach ($cityDataArr AS $k): ?>
                                            <option value="<?= $k->cityId ?>"><?= $k->city ?></option>
                                        <?php endforeach; ?>
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
                                    <?php //foreach ($CatArr AS $cat): ?>
                                    <?php foreach ($CatArr AS $categoryId=>$categoryName): ?>
                                        <option value="<?= $categoryId ?>"><?= $categoryName ?></option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                        </div>
                    </div><hr>
                    <div class="row" style="margin-top:10px;">
                        <div class="col-xs-12 col-sm-6 col-md-8 js-show-group-locality-users">
                        </div>
                    </div>

                    <div class="row" style="margin-top:10px;">
                        <div class="col-xs-12 col-sm-6 col-md-10 js-show-group-users-tags">
                            <div class="form-group"><label>Selected Users :</label></div>
                            <?php foreach ($group->users as $ukey => $usr): ?>
                                <input type="hidden" name="groupUsers[]" value="<?= $usr->userId ?>" class="checkbox-close-<?= $usr->userId ?>">
                                <button type="button" class="btn btn-info btn-xs checkbox-close-<?= $usr->userId ?>"><i class="fa fa-user"></i><?= $usr->firstName ?> <?= $usr->lastName ?></button> <button type="button" class="btn btn-danger btn-xs checkbox-close checkbox-close-<?= $usr->userId ?>" data-id="<?= $usr->userId ?>"><i class="fa fa-times-circle"></i></button>
                            <?php endforeach; ?>
                        </div>
                    </div>

                    <div class="js-message" style="display:none;"></div>
                    <div class="col-sm-6">
                        <input type="submit"  class="grpButton" name="creatGrp" id="grpButton" value="Modify Group" />
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<?php echo $footer;?>
<script type="text/javascript">
    var zipDynEle='<select class="form-control nova heght_cntrl" name="zipId" id="zipId" value=""  tabindex="1"><option value="">Select</option></select>';
    var localityDynEle='<select class="form-control nova heght_cntrl" name="localityId" id="localityId" value=""  tabindex="1"><option value="">Select</option></select>';
    var cityDynEle='<select class="form-control nova heght_cntrl" name="cityId" id="cityId" value=""  tabindex="1"><option value="">Select</option></select>';
    myJsMain.my_billing_address();
    myJsMain.my_create_groups();
    jQuery(document).ready(function(){
        jQuery('#countryId').on('change',function(){
           if(jQuery(this).val()==""){
               return false;
           }else{
               jQuery.ajax({
                   type:"POST",
                   url:'<?php echo BASE_URL.'ajax/show_city_by_country/'?>',
                   data:'countryId='+jQuery(this).val(),
                   success:function(msg){
                       if(msg!=""){
                            jQuery('.js-show-group-locality-users').empty();
                            jQuery('.cityElementPara').html(msg);
                            jQuery('.zipElementPara').html(zipDynEle);
                            jQuery('.localityElementPara').html(localityDynEle);
                       }
                   }
               });
           }
        });
        
        jQuery('.cityElementPara').on('change','#cityId',function(){
           if(jQuery(this).val()==""){
               return false;
           }else{
               jQuery.ajax({
                   type:"POST",
                   url:'<?php echo BASE_URL.'ajax/show_zip_by_city/'?>',
                   data:'cityId='+jQuery(this).val(),
                   success:function(msg){
                       if(msg!=""){
                           jQuery('.js-show-group-locality-users').empty();
                           jQuery('.zipElementPara').html(msg);
                           jQuery('.localityElementPara').html(localityDynEle);
                       }
                   }
               });
           }
        });
        
        jQuery('.zipElementPara').on('change','#zipId',function(){
           if(jQuery(this).val()==""){
               return false;
           }else{
               jQuery.ajax({
                   type:"POST",
                   url:'<?php echo BASE_URL.'ajax/show_locality_by_zip/'?>',
                   data:'zipId='+jQuery(this).val(),
                   success:function(msg){
                       if(msg!=""){
                           jQuery('.js-show-group-locality-users').empty();
                           jQuery('.localityElementPara').html(msg);
                       }
                   }
               });
           }
        });
        
        jQuery('.localityElementPara').on('change','#localityId',function(){
           if(jQuery(this).val()==""){
               return false;
           }else{
               jQuery('.js-show-group-locality-users').empty();
               jQuery.ajax({
                   type:"POST",
                   url:'<?php echo BASE_URL.'ajax/show_locality_all_users/'?>',
                   data:'localityId='+jQuery(this).val(),
                   success:function(msg){
                       if(msg!=""){
                           jQuery('.js-show-group-locality-users').html(msg);
                       }
                   }
               });
           }
        });
        //jQuery('div.grp_dashboard').on('click','button.js-group-delete',function(){
        jQuery("body").delegate('button.js-group-delete', "click", function(e){
		e.preventDefault();
            if ( confirm( 'Are you sure you want to delete this group?' ) ) { 
                var gid = jQuery(this).data('id');
                jQuery.ajax({
                   type:"POST",
                   url:'<?php echo BASE_URL.'ajax/delete_group/'?>',
                   data:'groupId='+jQuery(this).data('id'),
                   success:function(msg){
                       if(msg!=""){
                           jQuery('.js-group-popover').popover('hide');
                           jQuery('div#group-id-'+gid).remove();
                       }
                   }
               });
           }
        });
        
        
       jQuery("body").delegate('.tags-group', "click", function(e){
		e.preventDefault();
                var gname = jQuery(this).data('name');
                var gid = jQuery(this).val();
                var existGid = false;
                jQuery( ".js-show-group-users-tags input" ).each(function() {
                    var dGid = jQuery(this).val();
                    if(dGid == gid){
                        existGid = true;
                    }
                });
                
                if(!existGid){
                var html = "<input type=\"hidden\" name=\"groupUsers[]\" value=\""+gid+"\" class=\"checkbox-close-"+gid+"\">  <button type=\"button\" class=\"btn btn-info btn-xs checkbox-close-"+gid+"\"><i class=\"fa fa-user\"></i>"+gname+"</button><button type=\"button\" class=\"btn btn-danger btn-xs checkbox-close checkbox-close-"+gid+"\" data-id=\""+gid+"\"><i class=\"fa fa-times-circle\"></i></button>";
                jQuery('.js-show-group-users-tags').append(html);
                jQuery('.checkbox-'+gid).hide();
            } else {
                jQuery('.checkbox-'+gid).hide();
            }
                
        }); 
        
        
        jQuery("body").delegate('button.checkbox-close', "click", function(e){
		e.preventDefault();
                var gid = jQuery(this).data('id');
                jQuery('.checkbox-close-'+gid).remove();
                jQuery('.checkbox-'+gid).show();
        }); 
        
    });
    jQuery(function () {
        jQuery('.js-group-popover').popover({html:true,container: 'body'});
    });
</script>