<?php echo $html_heading; echo $header; //pre($userDataArr);?>
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
                <form action=""  method="post" name="my_shipping_address" id="my_shipping_address"> <!-- form -->
                    <div class="panel panel-body"> <!-- panel -->
                        <h4 class="h4">Shipping Address</h4>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group"> <!-- name -->
                                    <label>First Name</label>
                                    <input type="text" name="firstName" id="firstName" class="form-control" value="<?php echo $userShippingDataDetails[0]->firstName;?>" required>
                                </div> <!-- /.name -->
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group"> <!-- name -->
                                    <label>Last Name</label>
                                    <input type="text" name="lastName" id="lastName" class="form-control" value="<?php echo $userShippingDataDetails[0]->lastName;?>" required>
                                </div> <!-- /.name -->
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group"> <!-- name -->
                                    <label>Phone Number</label>
                                    <input type="phone" name="phone" id="phone" class="form-control" value="<?php echo $userShippingDataDetails[0]->contactNo;?>" required maxlength="12">
                                </div> <!-- /.name -->
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group"> <!-- name -->
                                    <label>Address</label>
                                    <input type="text" name="address" class="form-control" value="<?php echo $userShippingDataDetails[0]->address;?>" required>
                                </div> <!-- /.name -->
                            </div>
                            <input type="hidden" name="countryId" value="99">
                            <div class="col-sm-4">
                                <div class="form-group"> <!-- name -->
                                    <label>City</label>
                                    <p style="position:relative;" class="cityElementPara">
                                        <?php if($userShippingDataDetails[0]->cityId==""){?>
                                        <select class="form-control nova heght_cntrl" name="cityId" id="cityId" value=""  tabindex="1">
                                            <option value="">Select</option>
                                            <?php foreach($cityDataArr As $k){?>
                                            <option value="<?php echo $k->cityId;?>"><?php echo $k->city;?></option>
                                            <?php }?> 
                                        </select>
                                        <?php }else{?> 
                                        <select class="form-control nova heght_cntrl" name="cityId" id="cityId" value=""  tabindex="1">
                                            <option value="">Select</option>
                                            <?php foreach($cityDataArr As $k){?>
                                            <option value="<?php echo $k->cityId;?>" <?php if($k->cityId==$userShippingDataDetails[0]->cityId){?>selected<?php }?>><?php echo $k->city;?></option>
                                            <?php }?> 
                                        </select>
                                        <?php }?>
                                    </p>
                                </div> <!-- /.name -->
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group"> <!-- name -->
                                    <label>Zip</label>
                                    <p style="position:relative;" class="zipElementPara">
                                        <?php if($userShippingDataDetails[0]->zipId==""){?>
                                        <select class="form-control nova heght_cntrl" name="zipId" id="zipId" value=""  tabindex="1">
                                            <option value="">Select</option>
                                        </select>
                                        <?php }else{ ?>
                                        <select class="form-control nova heght_cntrl" name="zipId" id="zipId" value=""  tabindex="1">
                                            <option value="">Select</option>
                                            <?php foreach($zipDataArr AS $k){?>
                                            <option value="<?php echo $k->zipId;?>" <?php if($k->zipId==$userShippingDataDetails[0]->zipId){?>selected<?php }?>><?php echo $k->zip; ?></option>
                                            <?php }?>
                                        </select>
                                        <?php }?>
                                    </p>
                                </div> <!-- /.name -->
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group"> <!-- name -->
                                    <label>Locality</label>
                                    <p style="position:relative;" class="localityElementPara">
                                        <?php if($userShippingDataDetails[0]->localityId==""){?>
                                        <select class="form-control nova heght_cntrl" name="localityId" id="localityId" value=""  tabindex="1">
                                            <option value="">Select</option>
                                        </select>
                                        <?php }else{?>
                                        <select class="form-control nova heght_cntrl" name="localityId" id="localityId" value=""  tabindex="1">
                                            <option value="">Select</option>
                                            <?php foreach($localityDataArr AS $k){?>
                                            <option value="<?php echo $k->localityId;?>" <?php if($k->localityId==$userShippingDataDetails[0]->localityId){?>selected<?php }?>><?php echo $k->locality;?></option>
                                            <?php }?>
                                        </select>
                                        <?php }?>
                                    </p>
                                </div> <!-- /.name -->
                            </div>
                            <div class="col-md-12 rootShowInerCategoryData">
                                <label id="productTypeId[]-error" class="error" for="productTypeId[]" style="display: none;"></label>
                                <?php 
                                if(empty($userProductTypeArr)):
                                    foreach($topCategoryDataArr AS $k):?>
                                <div class="col-md-12">
                                    <a class="showInerCategoryData" href="javascript://" data-catdivid="<?php echo $k->categoryId;?>" data-isRoot="yes"><h4><?php echo $k->categoryName;?></h4></a>
                                </div>
                                <div class="col-md-12" style="height: 10px;"></div>
                                <?php endforeach;
                                else :
                                echo $billingAddressProductTypeHtml;    
                                endif;?>
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
<?php echo $footer;?>
<script type="text/javascript">
    var zipDynEle='<select class="form-control nova heght_cntrl" name="zipId" id="zipId" value=""  tabindex="1"><option value="">Select Zip</option></select>';
    var localityDynEle='<select class="form-control nova heght_cntrl" name="localityId" id="localityId" value=""  tabindex="1"><option value="">Select Locality</option></select>';
    var cityDynEle='<select class="form-control nova heght_cntrl" name="cityId" id="cityId" value=""  tabindex="1"><option value="">Select City</option></select>';
    myJsMain.my_shipping_address();
    jQuery(document).ready(function(){
        //jQuery('.countryElementPara').on('change','#countryId',function(){
        jQuery('#countryId').on('change',function(){
            jQuery('.zipElementPara').html(zipDynEle);
            jQuery('.localityElementPara').html(localityDynEle);
            jQuery('.cityElementPara').html(cityDynEle);
           if(jQuery(this).val()==""){
               return false;
           }else{
               jQuery.ajax({
                   type:"POST",
                   url:myJsMain.baseURL+'ajax/show_city_by_country/',
                   data:'countryId='+jQuery(this).val(),
                   success:function(msg){
                       if(msg!=""){
                           jQuery('.cityElementPara').html(msg);
                            jQuery('.zipElementPara').html(zipDynEle);
                            jQuery('.localityElementPara').html(localityDynEle);
                       }
                   }
               });
           }
        });
        
        jQuery('.cityElementPara').on('change','#cityId',function(){
        //jQuery('#cityId').on('change',function(){ alert('rr');
           if(jQuery(this).val()==""){
               return false;
           }else{
               jQuery.ajax({
                   type:"POST",
                   url:myJsMain.baseURL+'ajax/show_zip_by_city/',
                   data:'cityId='+jQuery(this).val(),
                   success:function(msg){
                       if(msg!=""){
                           jQuery('.zipElementPara').html(msg);
                           jQuery('.localityElementPara').html(localityDynEle);
                       }
                   }
               });
           }
        });
        
        jQuery('.zipElementPara').on('change','#zipId',function(){
        //jQuery('#cityId').on('change',function(){ alert('rr');
           if(jQuery(this).val()==""){
               return false;
           }else{
               jQuery.ajax({
                   type:"POST",
                   url:myJsMain.baseURL+'ajax/show_locality_by_zip/',
                   data:'zipId='+jQuery(this).val(),
                   success:function(msg){
                       if(msg!=""){
                           jQuery('.localityElementPara').html(msg);
                       }
                   }
               });
           }
        });
        
        jQuery("body").delegate('a.showInerCategoryData', "click", function(e){
            e.preventDefault();
            var oldHtmlContent=$(this).html();
            //return false;
            var catId = $(this).data('catdivid');
            var isRoot = $(this).data('isroot');
            var jqout = $(this);
            if($(this).parent().children().length>1 && isRoot=='yes'){
                return false;
            }
            if($(this).parent().children().length>2){
                return false;
            }
            $(this).prev().attr('checked', false); 
            $.post( myJsMain.baseURL+'ajax/get_subcategory_for_user_product_type/', {
                categoryId: catId
            },
            function(data){
                //jqout.parent('div').empty();
                //jqout.parent('div').html(oldHtmlContent);
                jqout.parent('div').append(data.content);
            }, 'json' );
        });
        
        jQuery("body").delegate('.productTypeCategorySelection', "click", function(e){
            $(this).parent().children().each(function(idx,ele){
                //if(ele.attr('type'))
                if(idx>1){
                    ele.remove();
                }
            });
        });
    });
</script>