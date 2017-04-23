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
                <form action="#" method="post" name="my_profile" id="my_profile">
                    <div class="panel panel-body"> <!-- panel -->
                        <h4 class="h4">Update Info</h4>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group"> <!-- name -->
                                    <label>First Name</label>
                                    <input type="text" name="firstName" id="firstName" class="form-control" value="<?php echo $userDataArr[0]->firstName;?>">
                                </div> <!-- /.name -->
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group"> <!-- name -->
                                    <label>Last Name</label>
                                    <input type="text" name="lastName" id="lastName" class="form-control" value="<?php echo $userDataArr[0]->lastName;?>">
                                </div> <!-- /.name -->
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group"> <!-- name -->
                                    <label>Phone Number</label>
                                    <input type="text" name="contactNo" id="contactNo" class="form-control" value="<?php echo $userDataArr[0]->contactNo;?>">
                                </div> <!-- /.name -->
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group"> <!-- name -->
                                    <label>Email</label>
                                    <input type="email" id="email" name="email" class="form-control" value="<?php echo $userDataArr[0]->email;?>">
                                </div> <!-- /.name -->
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group"> <!-- name -->
                                    <label>Mobile</label>
                                    <input type="number" name="mobile" id="mobile" class="form-control" value="<?php echo $userDataArr[0]->mobile;?>">
                                </div> <!-- /.name -->
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group"> <!-- name -->
                                    <label>Fax</label>
                                    <input type="number" name="fax" id="fax" class="form-control" value="<?php echo $userDataArr[0]->fax;?>">
                                </div> <!-- /.name -->
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group"> <!-- name -->
                                    <label>Date of Birth <sup class="primary">*</sup></label>
                                    <input type="date" class="form-control datepicker" value="<?php echo ($userDataArr[0]->DOB!="") ? date('d-m-Y',strtotime($userDataArr[0]->DOB)) :"";?>" id="DOB" name="DOB">
                                </div> <!-- /.name -->
                            </div>
                        </div>

                        <div class="form-group"> <!-- address -->
                            <label>About Me <sup class="primary">*</sup></label>
                            <textarea name="aboutMe" id="aboutMe" rows="4" class="form-control" placeholder="#no, house name, street name, colony, city - 123 456"><?php echo $userDataArr[0]->aboutMe;?></textarea>
                        </div> <!-- /.address -->
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
    myJsMain.my_profile();
    jQuery(document).ready(function(){
        jQuery('#DOB').datepicker({changeMonth: true,changeYear: true,dateFormat:"dd-mm-yy",dateFormat: "dd/mm/yy",maxDate: '0'});
    });
</script>