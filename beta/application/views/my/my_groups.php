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
                <div class="panel panel-body"> <!-- panel -->
                    <h4 class="h4">My Hangout</h4>
                    <div class="text-right form-group">
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#hangoutModal">Create New Hangout</button>
                    </div>
                    <div class="row m-t-20">
                        <?php if(!empty($myGroups)):
                        foreach($myGroups as $gkey => $group):?>
                        <div class="col-md-3 col-sm-3 js-group-popover"  title="<i class='fa fa-group'></i> Hangout : <?=$group->groupTitle?>"  data-container="body" data-toggle="popover" data-placement="top" data-color="<?=$group->groupColor?>" id="group-id-<?=$group->groupId?>" data-content='<div class="row">
                             <div class="col-md-12">
                                        <h5><strong>Hangout Leader</strong></h5>
                                        <p class="text-left"><?=$group->admin->firstName?> <?=$group->admin->lastName?></p>
                                        <?php if($group->users):?>
                                    <h5><strong>Hangout Member</strong></h5><?php
                                       foreach($group->users as $ukey => $usr):?>
                                    <p class="text-left"><?=$usr->firstName?> <?=$usr->lastName?></p>
                                    <?php endforeach; 
                                    endif;?>
                                     <?php if(!$group->hide):?>
                                    <a class="btn btn-primary js-group-edit" href="<?=BASE_URL?>edit_groups/<?=base64_encode($group->groupId*987654321)?>" data-id="<?=$group->groupId?>">Modify</a>
                                    <button type="button" class="btn btn-danger pull-right js-group-delete" data-id="<?=$group->groupId?>">Delete</button>
                                     <?php endif;?>
                                    </div></div>'><div class="<?=$group->groupColor?>">
                                               <span><i class="fa  fa-group fa-5x"></i></span>
                                   </div>
                                   <div class="grp_title"><?=$group->groupTitle?></div>
                               </div>
                        <?php endforeach;
                        endif;?>
                    </div>
                </div>    
            </div>
        </div>
    </div>
</div>    
<?php echo $footer;?>
<!-- hangout modal -->
<div class="modal fade" id="hangoutModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Create New Hangout</h4><hr class="hr-primary hr">
            </div>
            <form action="#" method="post" name="add_groups" class="form-horizontal" id="add_groups">
                <div class="modal-body">
                    <div id="login">

                            <input type="hidden" name="groupAdminId" value="<?=$user->userId?>">
                            <div class="form-group">
                                <label>Hangout Name</label>
                                <input type="text" class="form-control" id="groupTitle" name="groupTitle" placeholder="Jane Doe" required>
                            </div><hr>
                            <h4 class="h4">Search Hangout Member</h4>
                            <input type="hidden" name="countryId" id="countryId" value="99" />
                            <div class="row">
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
                            <div class="form-group js-show-group-locality-users">
                            </div>
                            <div class="js-show-group-users-tags">
                                <div class="form-group"><label class="col-sm-3 control-label">Selected Users :</label></div>
                            </div>

                            <div class="js-message" style="display:none;"></div>

                    </div>
                </div>
                <div class="modal-footer">
                    <input type="submit"  class="grpButton" name="creatGrp" id="grpButton" value="Create New Hangout" />
                </div>
            </form>
        </div>
    </div>
</div> <!-- /.hangout modal -->
<!-- /.modal -->
<script type="text/javascript">
    var zipDynEle='<select class="form-control nova heght_cntrl" name="zipId" id="zipId" value=""  tabindex="1"><option value="">Select Zip</option></select>';
    var localityDynEle='<select class="form-control nova heght_cntrl" name="localityId" id="localityId" value=""  tabindex="1"><option value="">Select Locality</option></select>';
    var cityDynEle='<select class="form-control nova heght_cntrl" name="cityId" id="cityId" value=""  tabindex="1"><option value="">Select City</option></select>';
    var selected_user_tag_div_content='<div class="form-group"><label class="col-sm-3 control-label">Selected Users :</label></div>';
    //myJsMain.my_billing_address();
    myJsMain.my_create_groups();
    
    $('.js-group-popover').on('shown.bs.popover', function () {
        // do something…
      });
</script>