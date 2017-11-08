
<?php echo $html_heading; echo $header; $currencySymbol='<i class="fa fa-rupee"></i>';  //($this->session->userdata('FE_SESSION_USER_LOCATION_VAR')=="IN") ? '<i class="fa fa-rupee"></i>' :'KSh';?>
<div class="breadcrumb">
    <div class="container">
        <ul class="filters visible-xs visible-sm pull-left">
            <li class="filterBtn"><span><i class="fa fa-filter"></i> <span class="smallest">Click <span class="hidden-xxs">here</span> to</span> Filter</span></li>
        </ul>
        <!--<div class="breadcrumb-inner">
            <ul class="list-inline list-unstyled">
                <li><a href="#">Home</a></li>
                <li class='active'>Smart Phone</li>
            </ul>
        </div><!-- /.breadcrumb-inner -->
    </div><!-- /.container -->
</div><!-- /.breadcrumb -->

<div class="bodyContent">
    <div class='container'>
        <div class='row'>
            <div class="col-xs-12 col-sm-12 col-md-3 sidebar filters">
                <span class="cross visible-xs visible-sm">&times;</span>
                <div class="side-menu animateDropdown">
                    <?php echo $main_category_menu; ?>
                    <div class="sidebar-module-container">
                        <div class="sidebar-filter">
                            <div class="sidebar-widget">
                                <h3 class="section-title">Price Range</h3>
                                <div class="sidebar-widget-body m-t-20">
                                    <div class="price-range-holder">
                                        <span class="min-max">
                                            <span class="pull-left"><i class="fa fa-inr"></i> 10,000.00</span>
                                            <span class="pull-right"><i class="fa fa-inr"></i> 99,000.00</span>
                                        </span>
                                        <input type="text" id="amount" style="border:0; color:#666666; font-weight:bold;text-align:center;">
                                        <div class="slider slider-horizontal" id=""><div class="slider-track"><div class="slider-track-low" style="left: 0px; width: 0%;"></div><div class="slider-selection" style="left: 0%; width: 100%;"></div><div class="slider-track-high" style="right: 0px; width: 0%;"></div></div><div class="tooltip tooltip-main top" role="presentation" style="left: 50%; margin-left: -47.5px;"><div class="tooltip-arrow"></div><div class="tooltip-inner">10000 : 99000</div></div><div class="tooltip tooltip-min top" role="presentation" style="left: 0%; margin-left: -25.5px;"><div class="tooltip-arrow"></div><div class="tooltip-inner">10000</div></div><div class="tooltip tooltip-max top" role="presentation" style="left: 100%; margin-left: -25.5px;"><div class="tooltip-arrow"></div><div class="tooltip-inner">99000</div></div><div class="slider-handle min-slider-handle" role="slider" aria-valuemin="10000" aria-valuemax="99000" aria-valuenow="10000" style="left: 0%;" tabindex="0"></div><div class="slider-handle max-slider-handle" role="slider" aria-valuemin="10000" aria-valuemax="99000" aria-valuenow="99000" style="left: 100%;" tabindex="0"></div></div><input type="text" class="price-slider" value="10000,99000" style="display: none;" data-value="10000,99000">
                                    </div>
                                    <!-- /.price-range-holder -->
                                </div>
                                <!-- /.sidebar-widget-body -->
                            </div>
                            <div class="sidebar-widget">
                                <h3 class="section-title">Brands</h3>
                                <div class="sidebar-widget-body m-t-10">
                                    <ul class="list-inline">
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> Apple</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> Samsung</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> Micromax</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> Nokia</label></div></li>
                                    </ul>
                                </div>
                                <!-- /.sidebar-widget-body -->
                            </div>
                            <div class="sidebar-widget">
                                <h3 class="section-title">Box Content</h3>
                                <div class="sidebar-widget-body m-t-10">
                                    <ul class="list-inline">
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> Headset</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> Charger</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> Warranty Card</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> USB Cable</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> User Manual</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> Ear Phones</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 3Juice Jar</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> Plastic Spoon</label></div></li>
                                    </ul>
                                    <!--<a href="#" class="lnk btn btn-primary">Show Now</a>-->
                                </div>
                                <!-- /.sidebar-widget-body -->
                            </div>
                            <div class="sidebar-widget">
                                <h3 class="section-title">No. of Sims</h3>
                                <div class="sidebar-widget-body m-t-10">
                                    <ul class="list-inline">
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 1</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 2</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 3</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 4</label></div></li>
                                    </ul>
                                </div>
                                <!-- /.sidebar-widget-body -->
                            </div>
                            <div class="sidebar-widget">
                                <h3 class="section-title">Colors</h3>
                                <div class="sidebar-widget-body m-t-10">
                                    <ul class="list-inline">
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> Red</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> Blue</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> Gray</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> Orange</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> Black</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> White</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> Silver</label></div></li>
                                    </ul>
                                </div>
                                <!-- /.sidebar-widget-body -->
                            </div>
                            <div class="sidebar-widget">
                                <h3 class="section-title">Operating System</h3>
                                <div class="sidebar-widget-body m-t-10">
                                    <ul class="list-inline">
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> Android</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> iPhone</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> Blackberry</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> Windows</label></div></li>
                                    </ul>
                                </div>
                                <!-- /.sidebar-widget-body -->
                            </div>
                            <div class="sidebar-widget">
                                <h3 class="section-title">Multi-Language Support</h3>
                                <div class="sidebar-widget-body m-t-10">
                                    <ul class="list-inline">
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> Yes</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> No</label></div></li>
                                    </ul>
                                </div>
                                <!-- /.sidebar-widget-body -->
                            </div>
                            <div class="sidebar-widget">
                                <h3 class="section-title">Rear Camera</h3>
                                <div class="sidebar-widget-body m-t-10">
                                    <ul class="list-inline">
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 1.3MP</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 2MP</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 3MP</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 4MP</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 5MP</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 8MP</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 10MP</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 12MP</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 13MP</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 14MP</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 15MP</label></div></li>
                                    </ul>
                                </div>
                                <!-- /.sidebar-widget-body -->
                            </div>
                            <div class="sidebar-widget">
                                <h3 class="section-title">Front Camera</h3>
                                <div class="sidebar-widget-body m-t-10">
                                    <ul class="list-inline">
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 1.3MP</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 2MP</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 3MP</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 4MP</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 5MP</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 8MP</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 10MP</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 12MP</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 13MP</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 14MP</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 15MP</label></div></li>
                                    </ul>
                                </div>
                                <!-- /.sidebar-widget-body -->
                            </div>
                            <div class="sidebar-widget">
                                <h3 class="section-title">Flash</h3>
                                <div class="sidebar-widget-body m-t-10">
                                    <ul class="list-inline">
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> Yes</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> No</label></div></li>
                                    </ul>
                                </div>
                                <!-- /.sidebar-widget-body -->
                            </div>
                            <div class="sidebar-widget">
                                <h3 class="section-title">Connectivity</h3>
                                <div class="sidebar-widget-body m-t-10">
                                    <ul class="list-inline">
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> GSM</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> CDMA</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 3G/WCDMA</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 4G/LTE</label></div></li>
                                    </ul>
                                </div>
                                <!-- /.sidebar-widget-body -->
                            </div>
                            <div class="sidebar-widget">
                                <h3 class="section-title">Processor Cores</h3>
                                <div class="sidebar-widget-body m-t-10">
                                    <ul class="list-inline">
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> Duo Core</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> Celeron</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> Xeon</label></div></li>
                                    </ul>
                                </div>
                                <!-- /.sidebar-widget-body -->
                            </div>
                            <div class="sidebar-widget">
                                <h3 class="section-title">Processor Brand</h3>
                                <div class="sidebar-widget-body m-t-10">
                                    <ul class="list-inline">
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> Asus</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> Intel</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> AMD</label></div></li>
                                    </ul>
                                </div>
                                <!-- /.sidebar-widget-body -->
                            </div>
                            <div class="sidebar-widget">
                                <h3 class="section-title">RAM</h3>
                                <div class="sidebar-widget-body m-t-10">
                                    <ul class="list-inline">
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 256 MB</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 512 MB</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 1 GB</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 2 GB</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 4 GB</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 8 GB</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 10 GB</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 12 GB</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 16 GB</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 32 GB</label></div></li>
                                    </ul>
                                </div>
                                <!-- /.sidebar-widget-body -->
                            </div>
                            <div class="sidebar-widget">
                                <h3 class="section-title">Internal Memory</h3>
                                <div class="sidebar-widget-body m-t-10">
                                    <ul class="list-inline">
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 2 GB</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 4 GB</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 8 GB</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 16 GB</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 32 GB</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 64 GB</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 128 GB</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 250 GB</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 512 GB</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 1 TB</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 2 TB</label></div></li>
                                    </ul>
                                </div>
                                <!-- /.sidebar-widget-body -->
                            </div>
                            <div class="sidebar-widget">
                                <h3 class="section-title">Expandable Memory</h3>
                                <div class="sidebar-widget-body m-t-10">
                                    <ul class="list-inline">
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 4 GB</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 8 GB</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 16 GB</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 32 GB</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 64 GB</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 128 GB</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 250 GB</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 512 GB</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 1 TB</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 2 TB</label></div></li>
                                    </ul>
                                </div>
                                <!-- /.sidebar-widget-body -->
                            </div>
                            <div class="sidebar-widget">
                                <h3 class="section-title">Battery Type</h3>
                                <div class="sidebar-widget-body m-t-10">
                                    <ul class="list-inline">
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> Intex</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> Micromax</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> Samsung</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> LG</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> Karbon</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> Gionee</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> Lenovo</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> BackBerry</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> Huawei</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> Sagetel</label></div></li>
                                    </ul>
                                </div>
                                <!-- /.sidebar-widget-body -->
                            </div>
                            <div class="sidebar-widget">
                                <h3 class="section-title">Warranty Duration</h3>
                                <div class="sidebar-widget-body m-t-10">
                                    <ul class="list-inline">
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 6 Months</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 12 Months</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 18 Months</label></div></li>
                                        <li><div class="checkbox"><label><input type="checkbox" name="" id=""> 24 Months</label></div></li>
                                    </ul>
                                </div>
                                <!-- /.sidebar-widget-body -->
                            </div>
                        </div>
                    </div>
                </div>
            </div> <!-- /.sidebar -->
            <div class="col-xs-12 col-sm-12 col-md-9">
                <div id="category" class="category-carousel hidden-xs">
                    <div class="item">
                        <div class="image">
                            <img src="_/images/banners/cat-banner-1.jpg" alt="" class="img-responsive">
                        </div>
                    </div>
                </div>
                <div class="clearfix filters-container m-t-10">
                    <div class="row">
                        <div class="col col-sm-12 col-md-8 col-xs-">
                            <div class="col col-sm-6 col-md-3 hidden-xs">
                                <div class="filter-tabs">
                                    <ul id="filter-tabs" class="nav nav-tabs nav-tab-box nav-tab-fa-icon">
                                        <li class="active"><a data-toggle="tab" href="#grid-container"><i class="icon fa fa-th-large"></i>Grid</a> </li>
                                        <li><a data-toggle="tab" href="#list-container"><i class="icon fa fa-th-list"></i>List</a></li>
                                    </ul>
                                </div> <!-- /.filter-tabs --> 
                            </div>
                            <div class="col col-sm-6 col-md-6 no-padding">
                                <div class="lbl-cnt">
                                    <span class="lbl">Sort by</span>
                                    <div class="fld inline">
                                        <div class="dropdown dropdown-small dropdown-med dropdown-white inline">
                                            <button data-toggle="dropdown" type="button" class="btn dropdown-toggle">
                                            Position <span class="caret"></span>
                                            </button>
                                            <ul role="menu" class="dropdown-menu">
                                                <li role="presentation"><a href="#">position</a></li>
                                                <li role="presentation"><a href="#">Price:Lowest first</a></li>
                                                <li role="presentation"><a href="#">Price:HIghest first</a></li>
                                                <li role="presentation"><a href="#">Product Name:A to Z</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- /.fld -->
                                </div>
                                <!-- /.lbl-cnt -->
                            </div>
                            <!-- /.col -->
                        </div>
                        <!-- /.col -->
                        <div class="col col-sm-3 col-md-4 col-xs-6 text-right hidden-xs">
                            <div class="pagination-container">
                                <ul class="list-inline list-unstyled">
                                    <li class="prev"><a href="#"><i class="fa fa-angle-left"></i></a></li>
                                    <li><a href="#">1</a></li>
                                    <li class="active"><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li class="next"><a href="#"><i class="fa fa-angle-right"></i></a></li>
                                </ul>
                                <!-- /.list-inline -->
                            </div>
                            <!-- /.pagination-container --> 
                        </div>
                        <!-- /.col -->
                    </div> <!-- /.row -->
                </div>
                <div class="search-result-container">
                    <div class="tab-content">
                        <div class="tab-pane active" id="grid-container">
                            <div class="category-product">
                                <div class="row">
                                    <div class="col-sm-3 col-md-4 col-xs-6">
                                        <div class="products">
                                            <div class="product">
                                                <div class="product-image">
                                                    <div class="image">
                                                        <a href="singleProduct.php"><img src="_/images/blank.gif" data-echo="_/images/products/c1.jpg" alt="" class="img-responsive"></a>
                                                    </div>
                                                    <!-- /.image -->
                                                    <div class="tag new"><span>new</span></div>
                                                </div>
                                                <!-- /.product-image -->
                                                <div class="product-info text-left">
                                                    <h3 class="name"><a href="singleProduct.php">Sony Ericson Vaga</a></h3>
                                                    <div class="description"></div>
                                                    <div class="product-price">
                                                        <span class="price"><i class="fa fa-inr"></i> 10,000 - <i class="fa fa-inr"></i> 99000 </span>
                                                    </div>
                                                    <!-- /.product-price -->
                                                </div>
                                                <!-- /.product-info -->
                                                <div class="cart clearfix animate-effect">
                                                    <div class="action">
                                                        <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.action -->
                                                </div>
                                                <!-- /.cart -->
                                            </div>
                                            <!-- /.product -->
                                        </div>
                                        <!-- /.products -->
                                    </div>
                                    <!-- /.item -->
                                    <div class="col-sm-3 col-md-4 col-xs-6">
                                        <div class="products">
                                            <div class="product">
                                                <div class="product-image">
                                                    <div class="image">
                                                        <a href="singleProduct.php"><img src="_/images/blank.gif" data-echo="_/images/products/c5.jpg" alt="" class="img-responsive"></a>
                                                    </div>
                                                    <!-- /.image -->
                                                    <div class="tag sale"><span>sale</span></div>
                                                </div>
                                                <!-- /.product-image -->
                                                <div class="product-info text-left">
                                                    <h3 class="name"><a href="singleProduct.php">Nokia</a></h3>
                                                    <div class="description"></div>
                                                    <div class="product-price">
                                                        <span class="price"><i class="fa fa-inr"></i> 10,000 - <i class="fa fa-inr"></i> 99000 </span>
                                                    </div>
                                                    <!-- /.product-price -->
                                                </div>
                                                <!-- /.product-info -->
                                                <div class="cart clearfix animate-effect">
                                                    <div class="action">
                                                        <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.action -->
                                                </div>
                                                <!-- /.cart -->
                                            </div>
                                            <!-- /.product -->
                                        </div>
                                        <!-- /.products -->
                                    </div>
                                    <!-- /.item -->
                                    <div class="col-sm-3 col-md-4 col-xs-6">
                                        <div class="products">
                                            <div class="product">
                                                <div class="product-image">
                                                    <div class="image">
                                                        <a href="singleProduct.php"><img src="_/images/blank.gif" data-echo="_/images/products/c6.jpg" alt="" class="img-responsive"></a>
                                                    </div>
                                                    <!-- /.image -->
                                                    <div class="tag new"><span>new</span></div>
                                                </div>
                                                <!-- /.product-image -->
                                                <div class="product-info text-left">
                                                    <h3 class="name"><a href="singleProduct.php">Nokia</a></h3>
                                                    <div class="description"></div>
                                                    <div class="product-price">
                                                        <span class="price"><i class="fa fa-inr"></i> 10,000 - <i class="fa fa-inr"></i> 99000 </span>
                                                    </div>
                                                    <!-- /.product-price -->
                                                </div>
                                                <!-- /.product-info -->
                                                <div class="cart clearfix animate-effect">
                                                    <div class="action">
                                                        <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.action -->
                                                </div>
                                                <!-- /.cart -->
                                            </div>
                                            <!-- /.product -->
                                        </div>
                                        <!-- /.products -->
                                    </div>
                                    <!-- /.item -->
                                    <div class="col-sm-3 col-md-4 col-xs-6">
                                        <div class="products">
                                            <div class="product">
                                                <div class="product-image">
                                                    <div class="image">
                                                        <a href="singleProduct.php"><img src="_/images/blank.gif" data-echo="_/images/products/c4.jpg" alt="" class="img-responsive"></a>
                                                    </div>
                                                    <!-- /.image -->
                                                    <div class="tag new"><span>new</span></div>
                                                </div>
                                                <!-- /.product-image -->
                                                <div class="product-info text-left">
                                                    <h3 class="name"><a href="singleProduct.php">Sony Ericson Vaga</a></h3>
                                                    <div class="description"></div>
                                                    <div class="product-price">
                                                        <span class="price"><i class="fa fa-inr"></i> 10,000 - <i class="fa fa-inr"></i> 99000 </span>
                                                    </div>
                                                    <!-- /.product-price -->
                                                </div>
                                                <!-- /.product-info -->
                                                <div class="cart clearfix animate-effect">
                                                    <div class="action">
                                                        <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.action -->
                                                </div>
                                                <!-- /.cart -->
                                            </div>
                                            <!-- /.product -->
                                        </div>
                                        <!-- /.products -->
                                    </div>
                                    <!-- /.item -->
                                    <div class="col-sm-3 col-md-4 col-xs-6">
                                        <div class="products">
                                            <div class="product">
                                                <div class="product-image">
                                                    <div class="image">
                                                        <a href="singleProduct.php"><img src="_/images/blank.gif" data-echo="_/images/products/c2.jpg" alt="" class="img-responsive"></a>
                                                    </div>
                                                    <!-- /.image -->
                                                    <div class="tag sale"><span>sale</span></div>
                                                </div>
                                                <!-- /.product-image -->
                                                <div class="product-info text-left">
                                                    <h3 class="name"><a href="singleProduct.php">Samsung Galaxy S4</a></h3>
                                                    <div class="description"></div>
                                                    <div class="product-price">
                                                        <span class="price"><i class="fa fa-inr"></i> 10,000 - <i class="fa fa-inr"></i> 99000 </span>
                                                    </div>
                                                    <!-- /.product-price -->
                                                </div>
                                                <!-- /.product-info -->
                                                <div class="cart clearfix animate-effect">
                                                    <div class="action">
                                                        <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.action -->
                                                </div>
                                                <!-- /.cart -->
                                            </div>
                                            <!-- /.product -->
                                        </div>
                                        <!-- /.products -->
                                    </div>
                                    <!-- /.item -->
                                    <div class="col-sm-3 col-md-4 col-xs-6">
                                        <div class="products">
                                            <div class="product">
                                                <div class="product-image">
                                                    <div class="image">
                                                        <a href="singleProduct.php"><img src="_/images/blank.gif" data-echo="_/images/products/c1.jpg" alt="" class="img-responsive"></a>
                                                    </div>
                                                    <!-- /.image -->
                                                    <div class="tag hot"><span>hot</span></div>
                                                </div>
                                                <!-- /.product-image -->
                                                <div class="product-info text-left">
                                                    <h3 class="name"><a href="singleProduct.php">Samsung Galaxy S4</a></h3>
                                                    <div class="description"></div>
                                                    <div class="product-price">
                                                        <span class="price"><i class="fa fa-inr"></i> 10,000 - <i class="fa fa-inr"></i> 99000 </span>
                                                    </div>
                                                    <!-- /.product-price -->
                                                </div>
                                                <!-- /.product-info -->
                                                <div class="cart clearfix animate-effect">
                                                    <div class="action">
                                                        <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.action -->
                                                </div>
                                                <!-- /.cart -->
                                            </div>
                                            <!-- /.product -->
                                        </div>
                                        <!-- /.products -->
                                    </div>
                                    <!-- /.item -->
                                    <div class="col-sm-3 col-md-4 col-xs-6">
                                        <div class="products">
                                            <div class="product">
                                                <div class="product-image">
                                                    <div class="image">
                                                        <a href="singleProduct.php"><img src="_/images/blank.gif" data-echo="_/images/products/c6.jpg" alt="" class="img-responsive"></a>
                                                    </div>
                                                    <!-- /.image -->
                                                    <div class="tag new"><span>new</span></div>
                                                </div>
                                                <!-- /.product-image -->
                                                <div class="product-info text-left">
                                                    <h3 class="name"><a href="singleProduct.php">Sony Ericson Vaga</a></h3>
                                                    <div class="description"></div>
                                                    <div class="product-price">
                                                        <span class="price"><i class="fa fa-inr"></i> 10,000 - <i class="fa fa-inr"></i> 99000 </span>
                                                    </div>
                                                    <!-- /.product-price -->
                                                </div>
                                                <!-- /.product-info -->
                                                <div class="cart clearfix animate-effect">
                                                    <div class="action">
                                                        <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.action -->
                                                </div>
                                                <!-- /.cart -->
                                            </div>
                                            <!-- /.product -->
                                        </div>
                                        <!-- /.products -->
                                    </div>
                                    <!-- /.item -->
                                    <div class="col-sm-3 col-md-4 col-xs-6">
                                        <div class="products">
                                            <div class="product">
                                                <div class="product-image">
                                                    <div class="image">
                                                        <a href="singleProduct.php"><img src="_/images/blank.gif" data-echo="_/images/products/c5.jpg" alt="" class="img-responsive"></a>
                                                    </div>
                                                    <!-- /.image -->
                                                    <div class="tag sale"><span>sale</span></div>
                                                </div>
                                                <!-- /.product-image -->
                                                <div class="product-info text-left">
                                                    <h3 class="name"><a href="singleProduct.php">Samsung Galaxy S4</a></h3>
                                                    <div class="description"></div>
                                                    <div class="product-price">
                                                        <span class="price"><i class="fa fa-inr"></i> 10,000 - <i class="fa fa-inr"></i> 99000 </span>
                                                    </div>
                                                    <!-- /.product-price -->
                                                </div>
                                                <!-- /.product-info -->
                                                <div class="cart clearfix animate-effect">
                                                    <div class="action">
                                                        <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.action -->
                                                </div>
                                                <!-- /.cart -->
                                            </div>
                                            <!-- /.product -->
                                        </div>
                                        <!-- /.products -->
                                    </div>
                                    <!-- /.item -->
                                    <div class="col-sm-3 col-md-4 col-xs-6">
                                        <div class="products">
                                            <div class="product">
                                                <div class="product-image">
                                                    <div class="image">
                                                        <a href="singleProduct.php"><img src="_/images/blank.gif" data-echo="_/images/products/c3.jpg" alt="" class="img-responsive"></a>
                                                    </div>
                                                    <!-- /.image -->
                                                    <div class="tag hot"><span>hot</span></div>
                                                </div>
                                                <!-- /.product-image -->
                                                <div class="product-info text-left">
                                                    <h3 class="name"><a href="singleProduct.php">Samsung Galaxy S4</a></h3>
                                                    <div class="description"></div>
                                                    <div class="product-price">
                                                        <span class="price"><i class="fa fa-inr"></i> 10,000 - <i class="fa fa-inr"></i> 99000 </span>
                                                    </div>
                                                    <!-- /.product-price -->
                                                </div>
                                                <!-- /.product-info -->
                                                <div class="cart clearfix animate-effect">
                                                    <div class="action">
                                                        <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.action -->
                                                </div>
                                                <!-- /.cart -->
                                            </div>
                                            <!-- /.product -->
                                        </div>
                                        <!-- /.products -->
                                    </div>
                                    <!-- /.item -->
                                    <div class="col-sm-3 col-md-4 col-xs-6">
                                        <div class="products">
                                            <div class="product">
                                                <div class="product-image">
                                                    <div class="image">
                                                        <a href="singleProduct.php"><img src="_/images/blank.gif" data-echo="_/images/products/c1.jpg" alt="" class="img-responsive"></a>
                                                    </div>
                                                    <!-- /.image -->
                                                    <div class="tag new"><span>new</span></div>
                                                </div>
                                                <!-- /.product-image -->
                                                <div class="product-info text-left">
                                                    <h3 class="name"><a href="singleProduct.php">Sony Ericson Vaga</a></h3>
                                                    <div class="description"></div>
                                                    <div class="product-price">
                                                        <span class="price"><i class="fa fa-inr"></i> 10,000 - <i class="fa fa-inr"></i> 99000 </span>
                                                    </div>
                                                    <!-- /.product-price -->
                                                </div>
                                                <!-- /.product-info -->
                                                <div class="cart clearfix animate-effect">
                                                    <div class="action">
                                                        <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.action -->
                                                </div>
                                                <!-- /.cart -->
                                            </div>
                                            <!-- /.product -->
                                        </div>
                                        <!-- /.products -->
                                    </div>
                                    <!-- /.item -->
                                    <div class="col-sm-3 col-md-4 col-xs-6">
                                        <div class="products">
                                            <div class="product">
                                                <div class="product-image">
                                                    <div class="image">
                                                        <a href="singleProduct.php"><img src="_/images/blank.gif" data-echo="_/images/products/c2.jpg" alt="" class="img-responsive"></a>
                                                    </div>
                                                    <!-- /.image -->
                                                    <div class="tag sale"><span>sale</span></div>
                                                </div>
                                                <!-- /.product-image -->
                                                <div class="product-info text-left">
                                                    <h3 class="name"><a href="singleProduct.php">Samsung Galaxy S4</a></h3>
                                                    <div class="description"></div>
                                                    <div class="product-price">
                                                        <span class="price"><i class="fa fa-inr"></i> 10,000 - <i class="fa fa-inr"></i> 99000 </span>
                                                    </div>
                                                    <!-- /.product-price -->
                                                </div>
                                                <!-- /.product-info -->
                                                <div class="cart clearfix animate-effect">
                                                    <div class="action">
                                                        <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.action -->
                                                </div>
                                                <!-- /.cart -->
                                            </div>
                                            <!-- /.product -->
                                        </div>
                                        <!-- /.products -->
                                    </div>
                                    <!-- /.item -->
                                    <div class="col-sm-3 col-md-4 col-xs-6">
                                        <div class="products">
                                            <div class="product">
                                                <div class="product-image">
                                                    <div class="image">
                                                        <a href="singleProduct.php"><img src="_/images/blank.gif" data-echo="_/images/products/c3.jpg" alt="" class="img-responsive"></a>
                                                    </div>
                                                    <!-- /.image -->
                                                    <div class="tag hot"><span>hot</span></div>
                                                </div>
                                                <!-- /.product-image -->
                                                <div class="product-info text-left">
                                                    <h3 class="name"><a href="singleProduct.php">Samsung Galaxy S4</a></h3>
                                                    <div class="description"></div>
                                                    <div class="product-price">
                                                        <span class="price"><i class="fa fa-inr"></i> 10,000 - <i class="fa fa-inr"></i> 99000 </span>
                                                    </div>
                                                    <!-- /.product-price -->
                                                </div>
                                                <!-- /.product-info -->
                                                <div class="cart clearfix animate-effect">
                                                    <div class="action">
                                                        <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.action -->
                                                </div>
                                                <!-- /.cart -->
                                            </div>
                                            <!-- /.product -->
                                        </div>
                                        <!-- /.products -->
                                    </div>
                                    <!-- /.item -->
                                    <div class="col-sm-3 col-md-4 col-xs-6">
                                        <div class="products">
                                            <div class="product">
                                                <div class="product-image">
                                                    <div class="image">
                                                        <a href="singleProduct.php"><img src="_/images/blank.gif" data-echo="_/images/products/c4.jpg" alt="" class="img-responsive"></a>
                                                    </div>
                                                    <!-- /.image -->
                                                    <div class="tag hot"><span>hot</span></div>
                                                </div>
                                                <!-- /.product-image -->
                                                <div class="product-info text-left">
                                                    <h3 class="name"><a href="singleProduct.php">Apple Iphone 5s 32GB</a></h3>
                                                    <div class="description"></div>
                                                    <div class="product-price">
                                                        <span class="price"><i class="fa fa-inr"></i> 10,000 - <i class="fa fa-inr"></i> 99000 </span>
                                                    </div>
                                                    <!-- /.product-price -->
                                                </div>
                                                <!-- /.product-info -->
                                                <div class="cart clearfix animate-effect">
                                                    <div class="action">
                                                        <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.action -->
                                                </div>
                                                <!-- /.cart -->
                                            </div>
                                            <!-- /.product -->
                                        </div>
                                        <!-- /.products -->
                                    </div>
                                    <!-- /.item -->
                                    <div class="col-sm-3 col-md-4 col-xs-6">
                                        <div class="products">
                                            <div class="product">
                                                <div class="product-image">
                                                    <div class="image">
                                                        <a href="singleProduct.php"><img src="_/images/blank.gif" data-echo="_/images/products/c5.jpg" alt="" class="img-responsive"></a>
                                                    </div>
                                                    <!-- /.image -->
                                                    <div class="tag sale"><span>sale</span></div>
                                                </div>
                                                <!-- /.product-image -->
                                                <div class="product-info text-left">
                                                    <h3 class="name"><a href="singleProduct.php">Nokia</a></h3>
                                                    <div class="description"></div>
                                                    <div class="product-price">
                                                        <span class="price"><i class="fa fa-inr"></i> 10,000 - <i class="fa fa-inr"></i> 99000 </span>
                                                    </div>
                                                    <!-- /.product-price -->
                                                </div>
                                                <!-- /.product-info -->
                                                <div class="cart clearfix animate-effect">
                                                    <div class="action">
                                                        <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.action -->
                                                </div>
                                                <!-- /.cart -->
                                            </div>
                                            <!-- /.product -->
                                        </div>
                                        <!-- /.products -->
                                    </div>
                                    <!-- /.item -->
                                    <div class="col-sm-3 col-md-4 col-xs-6">
                                        <div class="products">
                                            <div class="product">
                                                <div class="product-image">
                                                    <div class="image">
                                                        <a href="singleProduct.php"><img src="_/images/blank.gif" data-echo="_/images/products/c6.jpg" alt="" class="img-responsive"></a>
                                                    </div>
                                                    <!-- /.image -->
                                                    <div class="tag new"><span>new</span></div>
                                                </div>
                                                <!-- /.product-image -->
                                                <div class="product-info text-left">
                                                    <h3 class="name"><a href="singleProduct.php">Nokia</a></h3>
                                                    <div class="description"></div>
                                                    <div class="product-price">
                                                        <span class="price"><i class="fa fa-inr"></i> 10,000 - <i class="fa fa-inr"></i> 99000 </span>
                                                    </div>
                                                    <!-- /.product-price -->
                                                </div>
                                                <!-- /.product-info -->
                                                <div class="cart clearfix animate-effect">
                                                    <div class="action">
                                                        <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.action -->
                                                </div>
                                                <!-- /.cart -->
                                            </div>
                                            <!-- /.product -->
                                        </div>
                                        <!-- /.products -->
                                    </div>
                                    <!-- /.item -->
                                    <div class="col-sm-3 col-md-4 col-xs-6">
                                        <div class="products">
                                            <div class="product">
                                                <div class="product-image">
                                                    <div class="image">
                                                        <a href="singleProduct.php"><img src="_/images/blank.gif" data-echo="_/images/products/c4.jpg" alt="" class="img-responsive"></a>
                                                    </div>
                                                    <!-- /.image -->
                                                    <div class="tag new"><span>new</span></div>
                                                </div>
                                                <!-- /.product-image -->
                                                <div class="product-info text-left">
                                                    <h3 class="name"><a href="singleProduct.php">Sony Ericson Vaga</a></h3>
                                                    <div class="description"></div>
                                                    <div class="product-price">
                                                        <span class="price"><i class="fa fa-inr"></i> 10,000 - <i class="fa fa-inr"></i> 99000 </span>
                                                    </div>
                                                    <!-- /.product-price -->
                                                </div>
                                                <!-- /.product-info -->
                                                <div class="cart clearfix animate-effect">
                                                    <div class="action">
                                                        <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.action -->
                                                </div>
                                                <!-- /.cart -->
                                            </div>
                                            <!-- /.product -->
                                        </div>
                                        <!-- /.products -->
                                    </div>
                                    <!-- /.item -->
                                    <div class="col-sm-3 col-md-4 col-xs-6">
                                        <div class="products">
                                            <div class="product">
                                                <div class="product-image">
                                                    <div class="image">
                                                        <a href="singleProduct.php"><img src="_/images/blank.gif" data-echo="_/images/products/c2.jpg" alt="" class="img-responsive"></a>
                                                    </div>
                                                    <!-- /.image -->
                                                    <div class="tag sale"><span>sale</span></div>
                                                </div>
                                                <!-- /.product-image -->
                                                <div class="product-info text-left">
                                                    <h3 class="name"><a href="singleProduct.php">Samsung Galaxy S4</a></h3>
                                                    <div class="description"></div>
                                                    <div class="product-price">
                                                        <span class="price"><i class="fa fa-inr"></i> 10,000 - <i class="fa fa-inr"></i> 99000 </span>
                                                    </div>
                                                    <!-- /.product-price -->
                                                </div>
                                                <!-- /.product-info -->
                                                <div class="cart clearfix animate-effect">
                                                    <div class="action">
                                                        <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.action -->
                                                </div>
                                                <!-- /.cart -->
                                            </div>
                                            <!-- /.product -->
                                        </div>
                                        <!-- /.products -->
                                    </div>
                                    <!-- /.item -->
                                    <div class="col-sm-3 col-md-4 col-xs-6">
                                        <div class="products">
                                            <div class="product">
                                                <div class="product-image">
                                                    <div class="image">
                                                        <a href="singleProduct.php"><img src="_/images/blank.gif" data-echo="_/images/products/c1.jpg" alt="" class="img-responsive"></a>
                                                    </div>
                                                    <!-- /.image -->
                                                    <div class="tag hot"><span>hot</span></div>
                                                </div>
                                                <!-- /.product-image -->
                                                <div class="product-info text-left">
                                                    <h3 class="name"><a href="singleProduct.php">Samsung Galaxy S4</a></h3>
                                                    <div class="description"></div>
                                                    <div class="product-price">
                                                        <span class="price"><i class="fa fa-inr"></i> 10,000 - <i class="fa fa-inr"></i> 99000 </span>
                                                    </div>
                                                    <!-- /.product-price -->
                                                </div>
                                                <!-- /.product-info -->
                                                <div class="cart clearfix animate-effect">
                                                    <div class="action">
                                                        <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.action -->
                                                </div>
                                                <!-- /.cart -->
                                            </div>
                                            <!-- /.product -->
                                        </div>
                                        <!-- /.products -->
                                    </div>
                                    <!-- /.item -->
                                    <div class="col-sm-3 col-md-4 col-xs-6">
                                        <div class="products">
                                            <div class="product">
                                                <div class="product-image">
                                                    <div class="image">
                                                        <a href="singleProduct.php"><img src="_/images/blank.gif" data-echo="_/images/products/c6.jpg" alt="" class="img-responsive"></a>
                                                    </div>
                                                    <!-- /.image -->
                                                    <div class="tag new"><span>new</span></div>
                                                </div>
                                                <!-- /.product-image -->
                                                <div class="product-info text-left">
                                                    <h3 class="name"><a href="singleProduct.php">Sony Ericson Vaga</a></h3>
                                                    <div class="description"></div>
                                                    <div class="product-price">
                                                        <span class="price"><i class="fa fa-inr"></i> 10,000 - <i class="fa fa-inr"></i> 99000 </span>
                                                    </div>
                                                    <!-- /.product-price -->
                                                </div>
                                                <!-- /.product-info -->
                                                <div class="cart clearfix animate-effect">
                                                    <div class="action">
                                                        <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.action -->
                                                </div>
                                                <!-- /.cart -->
                                            </div>
                                            <!-- /.product -->
                                        </div>
                                        <!-- /.products -->
                                    </div>
                                    <!-- /.item -->
                                    <div class="col-sm-3 col-md-4 col-xs-6">
                                        <div class="products">
                                            <div class="product">
                                                <div class="product-image">
                                                    <div class="image">
                                                        <a href="singleProduct.php"><img src="_/images/blank.gif" data-echo="_/images/products/c5.jpg" alt="" class="img-responsive"></a>
                                                    </div>
                                                    <!-- /.image -->
                                                    <div class="tag sale"><span>sale</span></div>
                                                </div>
                                                <!-- /.product-image -->
                                                <div class="product-info text-left">
                                                    <h3 class="name"><a href="singleProduct.php">Samsung Galaxy S4</a></h3>
                                                    <div class="description"></div>
                                                    <div class="product-price">
                                                        <span class="price"><i class="fa fa-inr"></i> 10,000 - <i class="fa fa-inr"></i> 99000 </span>
                                                    </div>
                                                    <!-- /.product-price -->
                                                </div>
                                                <!-- /.product-info -->
                                                <div class="cart clearfix animate-effect">
                                                    <div class="action">
                                                        <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.action -->
                                                </div>
                                                <!-- /.cart -->
                                            </div>
                                            <!-- /.product -->
                                        </div>
                                        <!-- /.products -->
                                    </div>
                                    <!-- /.item -->
                                    <div class="col-sm-3 col-md-4 col-xs-6">
                                        <div class="products">
                                            <div class="product">
                                                <div class="product-image">
                                                    <div class="image">
                                                        <a href="singleProduct.php"><img src="_/images/blank.gif" data-echo="_/images/products/c3.jpg" alt="" class="img-responsive"></a>
                                                    </div>
                                                    <!-- /.image -->
                                                    <div class="tag hot"><span>hot</span></div>
                                                </div>
                                                <!-- /.product-image -->
                                                <div class="product-info text-left">
                                                    <h3 class="name"><a href="singleProduct.php">Samsung Galaxy S4</a></h3>
                                                    <div class="description"></div>
                                                    <div class="product-price">
                                                        <span class="price"><i class="fa fa-inr"></i> 10,000 - <i class="fa fa-inr"></i> 99000 </span>
                                                    </div>
                                                    <!-- /.product-price -->
                                                </div>
                                                <!-- /.product-info -->
                                                <div class="cart clearfix animate-effect">
                                                    <div class="action">
                                                        <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.action -->
                                                </div>
                                                <!-- /.cart -->
                                            </div>
                                            <!-- /.product -->
                                        </div>
                                        <!-- /.products -->
                                    </div>
                                    <!-- /.item -->
                                    <div class="col-sm-3 col-md-4 col-xs-6">
                                        <div class="products">
                                            <div class="product">
                                                <div class="product-image">
                                                    <div class="image">
                                                        <a href="singleProduct.php"><img src="_/images/blank.gif" data-echo="_/images/products/c1.jpg" alt="" class="img-responsive"></a>
                                                    </div>
                                                    <!-- /.image -->
                                                    <div class="tag new"><span>new</span></div>
                                                </div>
                                                <!-- /.product-image -->
                                                <div class="product-info text-left">
                                                    <h3 class="name"><a href="singleProduct.php">Sony Ericson Vaga</a></h3>
                                                    <div class="description"></div>
                                                    <div class="product-price">
                                                        <span class="price"><i class="fa fa-inr"></i> 10,000 - <i class="fa fa-inr"></i> 99000 </span>
                                                    </div>
                                                    <!-- /.product-price -->
                                                </div>
                                                <!-- /.product-info -->
                                                <div class="cart clearfix animate-effect">
                                                    <div class="action">
                                                        <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.action -->
                                                </div>
                                                <!-- /.cart -->
                                            </div>
                                            <!-- /.product -->
                                        </div>
                                        <!-- /.products -->
                                    </div>
                                    <!-- /.item -->
                                    <div class="col-sm-3 col-md-4 col-xs-6">
                                        <div class="products">
                                            <div class="product">
                                                <div class="product-image">
                                                    <div class="image">
                                                        <a href="singleProduct.php"><img src="_/images/blank.gif" data-echo="_/images/products/c2.jpg" alt="" class="img-responsive"></a>
                                                    </div>
                                                    <!-- /.image -->
                                                    <div class="tag sale"><span>sale</span></div>
                                                </div>
                                                <!-- /.product-image -->
                                                <div class="product-info text-left">
                                                    <h3 class="name"><a href="singleProduct.php">Samsung Galaxy S4</a></h3>
                                                    <div class="description"></div>
                                                    <div class="product-price">
                                                        <span class="price"><i class="fa fa-inr"></i> 10,000 - <i class="fa fa-inr"></i> 99000 </span>
                                                    </div>
                                                    <!-- /.product-price -->
                                                </div>
                                                <!-- /.product-info -->
                                                <div class="cart clearfix animate-effect">
                                                    <div class="action">
                                                        <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.action -->
                                                </div>
                                                <!-- /.cart -->
                                            </div>
                                            <!-- /.product -->
                                        </div>
                                        <!-- /.products -->
                                    </div>
                                    <!-- /.item -->
                                    <div class="col-sm-3 col-md-4 col-xs-6">
                                        <div class="products">
                                            <div class="product">
                                                <div class="product-image">
                                                    <div class="image">
                                                        <a href="singleProduct.php"><img src="_/images/blank.gif" data-echo="_/images/products/c3.jpg" alt="" class="img-responsive"></a>
                                                    </div>
                                                    <!-- /.image -->
                                                    <div class="tag hot"><span>hot</span></div>
                                                </div>
                                                <!-- /.product-image -->
                                                <div class="product-info text-left">
                                                    <h3 class="name"><a href="singleProduct.php">Samsung Galaxy S4</a></h3>
                                                    <div class="description"></div>
                                                    <div class="product-price">
                                                        <span class="price"><i class="fa fa-inr"></i> 10,000 - <i class="fa fa-inr"></i> 99000 </span>
                                                    </div>
                                                    <!-- /.product-price -->
                                                </div>
                                                <!-- /.product-info -->
                                                <div class="cart clearfix animate-effect">
                                                    <div class="action">
                                                        <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.action -->
                                                </div>
                                                <!-- /.cart -->
                                            </div>
                                            <!-- /.product -->
                                        </div>
                                        <!-- /.products -->
                                    </div>
                                    <!-- /.item -->
                                    <div class="col-sm-3 col-md-4 col-xs-6">
                                        <div class="products">
                                            <div class="product">
                                                <div class="product-image">
                                                    <div class="image">
                                                        <a href="singleProduct.php"><img src="_/images/blank.gif" data-echo="_/images/products/c4.jpg" alt="" class="img-responsive"></a>
                                                    </div>
                                                    <!-- /.image -->
                                                    <div class="tag hot"><span>hot</span></div>
                                                </div>
                                                <!-- /.product-image -->
                                                <div class="product-info text-left">
                                                    <h3 class="name"><a href="singleProduct.php">Apple Iphone 5s 32GB</a></h3>
                                                    <div class="description"></div>
                                                    <div class="product-price">
                                                        <span class="price"><i class="fa fa-inr"></i> 10,000 - <i class="fa fa-inr"></i> 99000 </span>
                                                    </div>
                                                    <!-- /.product-price -->
                                                </div>
                                                <!-- /.product-info -->
                                                <div class="cart clearfix animate-effect">
                                                    <div class="action">
                                                        <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.action -->
                                                </div>
                                                <!-- /.cart -->
                                            </div>
                                            <!-- /.product -->
                                        </div>
                                        <!-- /.products -->
                                    </div>
                                    <!-- /.item -->
                                    <div class="col-sm-3 col-md-4 col-xs-6">
                                        <div class="products">
                                            <div class="product">
                                                <div class="product-image">
                                                    <div class="image">
                                                        <a href="singleProduct.php"><img src="_/images/blank.gif" data-echo="_/images/products/c5.jpg" alt="" class="img-responsive"></a>
                                                    </div>
                                                    <!-- /.image -->
                                                    <div class="tag sale"><span>sale</span></div>
                                                </div>
                                                <!-- /.product-image -->
                                                <div class="product-info text-left">
                                                    <h3 class="name"><a href="singleProduct.php">Nokia</a></h3>
                                                    <div class="description"></div>
                                                    <div class="product-price">
                                                        <span class="price"><i class="fa fa-inr"></i> 10,000 - <i class="fa fa-inr"></i> 99000 </span>
                                                    </div>
                                                    <!-- /.product-price -->
                                                </div>
                                                <!-- /.product-info -->
                                                <div class="cart clearfix animate-effect">
                                                    <div class="action">
                                                        <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.action -->
                                                </div>
                                                <!-- /.cart -->
                                            </div>
                                            <!-- /.product -->
                                        </div>
                                        <!-- /.products -->
                                    </div>
                                    <!-- /.item -->
                                    <div class="col-sm-3 col-md-4 col-xs-6">
                                        <div class="products">
                                            <div class="product">
                                                <div class="product-image">
                                                    <div class="image">
                                                        <a href="singleProduct.php"><img src="_/images/blank.gif" data-echo="_/images/products/c6.jpg" alt="" class="img-responsive"></a>
                                                    </div>
                                                    <!-- /.image -->
                                                    <div class="tag new"><span>new</span></div>
                                                </div>
                                                <!-- /.product-image -->
                                                <div class="product-info text-left">
                                                    <h3 class="name"><a href="singleProduct.php">Nokia</a></h3>
                                                    <div class="description"></div>
                                                    <div class="product-price">
                                                        <span class="price"><i class="fa fa-inr"></i> 10,000 - <i class="fa fa-inr"></i> 99000 </span>
                                                    </div>
                                                    <!-- /.product-price -->
                                                </div>
                                                <!-- /.product-info -->
                                                <div class="cart clearfix animate-effect">
                                                    <div class="action">
                                                        <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.action -->
                                                </div>
                                                <!-- /.cart -->
                                            </div>
                                            <!-- /.product -->
                                        </div>
                                        <!-- /.products -->
                                    </div>
                                    <!-- /.item -->
                                    <div class="col-sm-3 col-md-4 col-xs-6">
                                        <div class="products">
                                            <div class="product">
                                                <div class="product-image">
                                                    <div class="image">
                                                        <a href="singleProduct.php"><img src="_/images/blank.gif" data-echo="_/images/products/c4.jpg" alt="" class="img-responsive"></a>
                                                    </div>
                                                    <!-- /.image -->
                                                    <div class="tag new"><span>new</span></div>
                                                </div>
                                                <!-- /.product-image -->
                                                <div class="product-info text-left">
                                                    <h3 class="name"><a href="singleProduct.php">Sony Ericson Vaga</a></h3>
                                                    <div class="description"></div>
                                                    <div class="product-price">
                                                        <span class="price"><i class="fa fa-inr"></i> 10,000 - <i class="fa fa-inr"></i> 99000 </span>
                                                    </div>
                                                    <!-- /.product-price -->
                                                </div>
                                                <!-- /.product-info -->
                                                <div class="cart clearfix animate-effect">
                                                    <div class="action">
                                                        <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.action -->
                                                </div>
                                                <!-- /.cart -->
                                            </div>
                                            <!-- /.product -->
                                        </div>
                                        <!-- /.products -->
                                    </div>
                                    <!-- /.item -->
                                    <div class="col-sm-3 col-md-4 col-xs-6">
                                        <div class="products">
                                            <div class="product">
                                                <div class="product-image">
                                                    <div class="image">
                                                        <a href="singleProduct.php"><img src="_/images/blank.gif" data-echo="_/images/products/c2.jpg" alt="" class="img-responsive"></a>
                                                    </div>
                                                    <!-- /.image -->
                                                    <div class="tag sale"><span>sale</span></div>
                                                </div>
                                                <!-- /.product-image -->
                                                <div class="product-info text-left">
                                                    <h3 class="name"><a href="singleProduct.php">Samsung Galaxy S4</a></h3>
                                                    <div class="description"></div>
                                                    <div class="product-price">
                                                        <span class="price"><i class="fa fa-inr"></i> 10,000 - <i class="fa fa-inr"></i> 99000 </span>
                                                    </div>
                                                    <!-- /.product-price -->
                                                </div>
                                                <!-- /.product-info -->
                                                <div class="cart clearfix animate-effect">
                                                    <div class="action">
                                                        <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.action -->
                                                </div>
                                                <!-- /.cart -->
                                            </div>
                                            <!-- /.product -->
                                        </div>
                                        <!-- /.products -->
                                    </div>
                                    <!-- /.item -->
                                    <div class="col-sm-3 col-md-4 col-xs-6">
                                        <div class="products">
                                            <div class="product">
                                                <div class="product-image">
                                                    <div class="image">
                                                        <a href="singleProduct.php"><img src="_/images/blank.gif" data-echo="_/images/products/c1.jpg" alt="" class="img-responsive"></a>
                                                    </div>
                                                    <!-- /.image -->
                                                    <div class="tag hot"><span>hot</span></div>
                                                </div>
                                                <!-- /.product-image -->
                                                <div class="product-info text-left">
                                                    <h3 class="name"><a href="singleProduct.php">Samsung Galaxy S4</a></h3>
                                                    <div class="description"></div>
                                                    <div class="product-price">
                                                        <span class="price"><i class="fa fa-inr"></i> 10,000 - <i class="fa fa-inr"></i> 99000 </span>
                                                    </div>
                                                    <!-- /.product-price -->
                                                </div>
                                                <!-- /.product-info -->
                                                <div class="cart clearfix animate-effect">
                                                    <div class="action">
                                                        <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.action -->
                                                </div>
                                                <!-- /.cart -->
                                            </div>
                                            <!-- /.product -->
                                        </div>
                                        <!-- /.products -->
                                    </div>
                                    <!-- /.item -->
                                    <div class="col-sm-3 col-md-4 col-xs-6">
                                        <div class="products">
                                            <div class="product">
                                                <div class="product-image">
                                                    <div class="image">
                                                        <a href="singleProduct.php"><img src="_/images/blank.gif" data-echo="_/images/products/c6.jpg" alt="" class="img-responsive"></a>
                                                    </div>
                                                    <!-- /.image -->
                                                    <div class="tag new"><span>new</span></div>
                                                </div>
                                                <!-- /.product-image -->
                                                <div class="product-info text-left">
                                                    <h3 class="name"><a href="singleProduct.php">Sony Ericson Vaga</a></h3>
                                                    <div class="description"></div>
                                                    <div class="product-price">
                                                        <span class="price"><i class="fa fa-inr"></i> 10,000 - <i class="fa fa-inr"></i> 99000 </span>
                                                    </div>
                                                    <!-- /.product-price -->
                                                </div>
                                                <!-- /.product-info -->
                                                <div class="cart clearfix animate-effect">
                                                    <div class="action">
                                                        <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.action -->
                                                </div>
                                                <!-- /.cart -->
                                            </div>
                                            <!-- /.product -->
                                        </div>
                                        <!-- /.products -->
                                    </div>
                                    <!-- /.item -->
                                    <div class="col-sm-3 col-md-4 col-xs-6">
                                        <div class="products">
                                            <div class="product">
                                                <div class="product-image">
                                                    <div class="image">
                                                        <a href="singleProduct.php"><img src="_/images/blank.gif" data-echo="_/images/products/c5.jpg" alt="" class="img-responsive"></a>
                                                    </div>
                                                    <!-- /.image -->
                                                    <div class="tag sale"><span>sale</span></div>
                                                </div>
                                                <!-- /.product-image -->
                                                <div class="product-info text-left">
                                                    <h3 class="name"><a href="singleProduct.php">Samsung Galaxy S4</a></h3>
                                                    <div class="description"></div>
                                                    <div class="product-price">
                                                        <span class="price"><i class="fa fa-inr"></i> 10,000 - <i class="fa fa-inr"></i> 99000 </span>
                                                    </div>
                                                    <!-- /.product-price -->
                                                </div>
                                                <!-- /.product-info -->
                                                <div class="cart clearfix animate-effect">
                                                    <div class="action">
                                                        <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.action -->
                                                </div>
                                                <!-- /.cart -->
                                            </div>
                                            <!-- /.product -->
                                        </div>
                                        <!-- /.products -->
                                    </div>
                                    <!-- /.item -->
                                    <div class="col-sm-3 col-md-4 col-xs-6">
                                        <div class="products">
                                            <div class="product">
                                                <div class="product-image">
                                                    <div class="image">
                                                        <a href="singleProduct.php"><img src="_/images/blank.gif" data-echo="_/images/products/c3.jpg" alt="" class="img-responsive"></a>
                                                    </div>
                                                    <!-- /.image -->
                                                    <div class="tag hot"><span>hot</span></div>
                                                </div>
                                                <!-- /.product-image -->
                                                <div class="product-info text-left">
                                                    <h3 class="name"><a href="singleProduct.php">Samsung Galaxy S4</a></h3>
                                                    <div class="description"></div>
                                                    <div class="product-price">
                                                        <span class="price"><i class="fa fa-inr"></i> 10,000 - <i class="fa fa-inr"></i> 99000 </span>
                                                    </div>
                                                    <!-- /.product-price -->
                                                </div>
                                                <!-- /.product-info -->
                                                <div class="cart clearfix animate-effect">
                                                    <div class="action">
                                                        <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.action -->
                                                </div>
                                                <!-- /.cart -->
                                            </div>
                                            <!-- /.product -->
                                        </div>
                                        <!-- /.products -->
                                    </div>
                                    <!-- /.item -->
                                </div>
                                <!-- /.row -->
                            </div> <!-- /.category-product -->
                        </div>
                        <div class="tab-pane" id="list-container">
                            <div class="category-product">
                                <div class="category-product-inner" style="visibility: visible; animation-name: fadeInUp;">
                                    <div class="products">
                                        <div class="product-list product">
                                            <div class="row product-list-row">
                                                <div class="col col-sm-4 col-lg-3">
                                                    <div class="product-image">
                                                        <div class="image"> <img src="_/images/products/3.jpg" alt=""> </div>
                                                    </div>
                                                    <!-- /.product-image --> 
                                                </div>
                                                <!-- /.col -->
                                                <div class="col col-sm-8 col-lg-9">
                                                    <div class="product-info">
                                                        <h3 class="name"><a href="#">Floral Print Buttoned</a></h3>
                                                        <div class="product-price"> <span class="price"><i class='fa fa-inr'></i> 45099 - <i class='fa fa-inr'></i> 80000</span> </div>
                                                        <!-- /.product-price -->
                                                        <div class="description m-t-10">Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget.</div>
                                                        <div class="cart clearfix animate-effect">
                                                            <div class="action">
                                                                <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                            </div>
                                                            <!-- /.action --> 
                                                        </div>
                                                        <!-- /.cart --> 
                                                    </div>
                                                    <!-- /.product-info --> 
                                                </div>
                                                <!-- /.col --> 
                                            </div>
                                            <!-- /.product-list-row -->
                                            <div class="tag new"><span>new</span></div>
                                        </div>
                                        <!-- /.product-list --> 
                                    </div>
                                    <!-- /.products --> 
                                </div>
                                <!-- /.category-product-inner -->
                                <div class="category-product-inner" style="visibility: visible; animation-name: fadeInUp;">
                                    <div class="products">
                                        <div class="product-list product">
                                            <div class="row product-list-row">
                                                <div class="col col-sm-4 col-lg-3">
                                                    <div class="product-image">
                                                        <div class="image"> <img src="_/images/products/4.jpg" alt=""> </div>
                                                    </div>
                                                    <!-- /.product-image --> 
                                                </div>
                                                <!-- /.col -->
                                                <div class="col col-sm-8 col-lg-9">
                                                    <div class="product-info">
                                                        <h3 class="name"><a href="#">Floral Print Buttoned</a></h3>
                                                        <div class="product-price"> <span class="price"><i class='fa fa-inr'></i> 45099 - <i class='fa fa-inr'></i> 80000</span> </div>
                                                        <!-- /.product-price -->
                                                        <div class="description m-t-10">Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget.</div>
                                                        <div class="cart clearfix animate-effect">
                                                            <div class="action">
                                                                <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                            </div>
                                                            <!-- /.action --> 
                                                        </div>
                                                        <!-- /.cart --> 
                                                    </div>
                                                    <!-- /.product-info --> 
                                                </div>
                                                <!-- /.col --> 
                                            </div>
                                            <!-- /.product-list-row -->
                                            <div class="tag sale"><span>sale</span></div>
                                        </div>
                                        <!-- /.product-list --> 
                                    </div>
                                    <!-- /.products --> 
                                </div>
                                <!-- /.category-product-inner -->
                                <div class="category-product-inner" style="visibility: visible; animation-name: fadeInUp;">
                                    <div class="products">
                                        <div class="product-list product">
                                            <div class="row product-list-row">
                                                <div class="col col-sm-4 col-lg-3">
                                                    <div class="product-image">
                                                        <div class="image"> <img src="_/images/products/5.jpg" alt=""> </div>
                                                    </div>
                                                    <!-- /.product-image --> 
                                                </div>
                                                <!-- /.col -->
                                                <div class="col col-sm-8 col-lg-9">
                                                    <div class="product-info">
                                                        <h3 class="name"><a href="#">Floral Print Buttoned</a></h3>
                                                        <div class="product-price"> <span class="price"><i class='fa fa-inr'></i> 45099 - <i class='fa fa-inr'></i> 80000</span> </div>
                                                        <!-- /.product-price -->
                                                        <div class="description m-t-10">Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget.</div>
                                                        <div class="cart clearfix animate-effect">
                                                            <div class="action">
                                                                <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                            </div>
                                                            <!-- /.action --> 
                                                        </div>
                                                        <!-- /.cart --> 
                                                    </div>
                                                    <!-- /.product-info --> 
                                                </div>
                                                <!-- /.col --> 
                                            </div>
                                            <!-- /.product-list-row -->
                                            <div class="tag hot"><span>hot</span></div>
                                        </div>
                                        <!-- /.product-list --> 
                                    </div>
                                    <!-- /.products --> 
                                </div>
                                <!-- /.category-product-inner -->
                                <div class="category-product-inner" style="visibility: visible; animation-name: fadeInUp;">
                                    <div class="products">
                                        <div class="product-list product">
                                            <div class="row product-list-row">
                                                <div class="col col-sm-4 col-lg-3">
                                                    <div class="product-image">
                                                        <div class="image"> <img src="_/images/products/6.jpg" alt=""> </div>
                                                    </div>
                                                    <!-- /.product-image --> 
                                                </div>
                                                <!-- /.col -->
                                                <div class="col col-sm-8 col-lg-9">
                                                    <div class="product-info">
                                                        <h3 class="name"><a href="#">Floral Print Buttoned</a></h3>
                                                        <div class="product-price"> <span class="price"><i class='fa fa-inr'></i> 45099 - <i class='fa fa-inr'></i> 80000</span> </div>
                                                        <!-- /.product-price -->
                                                        <div class="description m-t-10">Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget.</div>
                                                        <div class="cart clearfix animate-effect">
                                                            <div class="action">
                                                                <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                            </div>
                                                            <!-- /.action --> 
                                                        </div>
                                                        <!-- /.cart --> 
                                                    </div>
                                                    <!-- /.product-info --> 
                                                </div>
                                                <!-- /.col --> 
                                            </div>
                                            <!-- /.product-list-row -->
                                            <div class="tag hot"><span>hot</span></div>
                                        </div>
                                        <!-- /.product-list --> 
                                    </div>
                                    <!-- /.products --> 
                                </div>
                                <!-- /.category-product-inner -->
                                <div class="category-product-inner" style="visibility: visible; animation-name: fadeInUp;">
                                    <div class="products">
                                        <div class="product-list product">
                                            <div class="row product-list-row">
                                                <div class="col col-sm-4 col-lg-3">
                                                    <div class="product-image">
                                                        <div class="image"> <img src="_/images/products/7.jpg" alt=""> </div>
                                                    </div>
                                                    <!-- /.product-image --> 
                                                </div>
                                                <!-- /.col -->
                                                <div class="col col-sm-8 col-lg-9">
                                                    <div class="product-info">
                                                        <h3 class="name"><a href="#">Floral Print Buttoned</a></h3>
                                                        <div class="product-price"> <span class="price"><i class='fa fa-inr'></i> 45099 - <i class='fa fa-inr'></i> 80000</span> </div>
                                                        <!-- /.product-price -->
                                                        <div class="description m-t-10">Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget.</div>
                                                        <div class="cart clearfix animate-effect">
                                                            <div class="action">
                                                                <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                            </div>
                                                            <!-- /.action --> 
                                                        </div>
                                                        <!-- /.cart --> 
                                                    </div>
                                                    <!-- /.product-info --> 
                                                </div>
                                                <!-- /.col --> 
                                            </div>
                                            <!-- /.product-list-row -->
                                            <div class="tag sale"><span>sale</span></div>
                                        </div>
                                        <!-- /.product-list --> 
                                    </div>
                                    <!-- /.products --> 
                                </div>
                                <!-- /.category-product-inner -->
                                <div class="category-product-inner" style="visibility: visible; animation-name: fadeInUp;">
                                    <div class="products">
                                        <div class="product-list product">
                                            <div class="row product-list-row">
                                                <div class="col col-sm-4 col-lg-3">
                                                    <div class="product-image">
                                                        <div class="image"> <img src="_/images/products/8.jpg" alt=""> </div>
                                                    </div>
                                                    <!-- /.product-image --> 
                                                </div>
                                                <!-- /.col -->
                                                <div class="col col-sm-8 col-lg-9">
                                                    <div class="product-info">
                                                        <h3 class="name"><a href="#">Floral Print Buttoned</a></h3>
                                                        <div class="product-price"> <span class="price"><i class='fa fa-inr'></i> 45099 - <i class='fa fa-inr'></i> 80000</span> </div>
                                                        <!-- /.product-price -->
                                                        <div class="description m-t-10">Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget.</div>
                                                        <div class="cart clearfix animate-effect">
                                                            <div class="action">
                                                                <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                            </div>
                                                            <!-- /.action --> 
                                                        </div>
                                                        <!-- /.cart --> 
                                                    </div>
                                                    <!-- /.product-info --> 
                                                </div>
                                                <!-- /.col --> 
                                            </div>
                                            <!-- /.product-list-row -->
                                            <div class="tag new"><span>new</span></div>
                                        </div>
                                        <!-- /.product-list --> 
                                    </div>
                                    <!-- /.products --> 
                                </div>
                                <!-- /.category-product-inner -->
                                <div class="category-product-inner" style="visibility: visible; animation-name: fadeInUp;">
                                    <div class="products">
                                        <div class="product-list product">
                                            <div class="row product-list-row">
                                                <div class="col col-sm-4 col-lg-3">
                                                    <div class="product-image">
                                                        <div class="image"> <img src="_/images/products/9.jpg" alt=""> </div>
                                                    </div>
                                                    <!-- /.product-image --> 
                                                </div>
                                                <!-- /.col -->
                                                <div class="col col-sm-8 col-lg-9">
                                                    <div class="product-info">
                                                        <h3 class="name"><a href="#">Floral Print Buttoned</a></h3>
                                                        <div class="product-price"> <span class="price"><i class='fa fa-inr'></i> 45099 - <i class='fa fa-inr'></i> 80000</span> </div>
                                                        <!-- /.product-price -->
                                                        <div class="description m-t-10">Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget.</div>
                                                        <div class="cart clearfix animate-effect">
                                                            <div class="action">
                                                                <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                            </div>
                                                            <!-- /.action --> 
                                                        </div>
                                                        <!-- /.cart --> 
                                                    </div>
                                                    <!-- /.product-info --> 
                                                </div>
                                                <!-- /.col --> 
                                            </div>
                                            <!-- /.product-list-row -->
                                            <div class="tag new"><span>new</span></div>
                                        </div>
                                        <!-- /.product-list --> 
                                    </div>
                                    <!-- /.products --> 
                                </div>
                                <!-- /.category-product-inner -->
                                <div class="category-product-inner" style="visibility: visible; animation-name: fadeInUp;">
                                    <div class="products">
                                        <div class="product-list product">
                                            <div class="row product-list-row">
                                                <div class="col col-sm-4 col-lg-3">
                                                    <div class="product-image">
                                                        <div class="image"> <img src="_/images/products/10.jpg" alt=""> </div>
                                                    </div>
                                                    <!-- /.product-image --> 
                                                </div>
                                                <!-- /.col -->
                                                <div class="col col-sm-8 col-lg-9">
                                                    <div class="product-info">
                                                        <h3 class="name"><a href="#">Floral Print Buttoned</a></h3>
                                                        <div class="product-price"> <span class="price"><i class='fa fa-inr'></i> 45099 - <i class='fa fa-inr'></i> 80000</span> </div>
                                                        <!-- /.product-price -->
                                                        <div class="description m-t-10">Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget.</div>
                                                        <div class="cart clearfix animate-effect">
                                                            <div class="action">
                                                                <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                            </div>
                                                            <!-- /.action --> 
                                                        </div>
                                                        <!-- /.cart --> 
                                                    </div>
                                                    <!-- /.product-info --> 
                                                </div>
                                                <!-- /.col --> 
                                            </div>
                                            <!-- /.product-list-row -->
                                            <div class="tag sale"><span>sale</span></div>
                                        </div>
                                        <!-- /.product-list --> 
                                    </div>
                                    <!-- /.products --> 
                                </div>
                                <!-- /.category-product-inner -->
                                <div class="category-product-inner" style="visibility: visible; animation-name: fadeInUp;">
                                    <div class="products">
                                        <div class="product-list product">
                                            <div class="row product-list-row">
                                                <div class="col col-sm-4 col-lg-3">
                                                    <div class="product-image">
                                                        <div class="image"> <img src="_/images/products/11.jpg" alt=""> </div>
                                                    </div>
                                                    <!-- /.product-image --> 
                                                </div>
                                                <!-- /.col -->
                                                <div class="col col-sm-8 col-lg-9">
                                                    <div class="product-info">
                                                        <h3 class="name"><a href="#">Floral Print Buttoned</a></h3>
                                                        <div class="product-price"> <span class="price"><i class='fa fa-inr'></i> 45099 - <i class='fa fa-inr'></i> 80000</span> </div>
                                                        <!-- /.product-price -->
                                                        <div class="description m-t-10">Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget.</div>
                                                        <div class="cart clearfix animate-effect">
                                                            <div class="action">
                                                                <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                            </div>
                                                            <!-- /.action --> 
                                                        </div>
                                                        <!-- /.cart --> 
                                                    </div>
                                                    <!-- /.product-info --> 
                                                </div>
                                                <!-- /.col --> 
                                            </div>
                                            <!-- /.product-list-row -->
                                            <div class="tag hot"><span>hot</span></div>
                                        </div>
                                        <!-- /.product-list --> 
                                    </div>
                                    <!-- /.products --> 
                                </div>
                                <!-- /.category-product-inner -->
                                <div class="category-product-inner" style="visibility: visible; animation-name: fadeInUp;">
                                    <div class="products">
                                        <div class="product-list product">
                                            <div class="row product-list-row">
                                                <div class="col col-sm-4 col-lg-3">
                                                    <div class="product-image">
                                                        <div class="image"> <img src="_/images/products/12.jpg" alt=""> </div>
                                                    </div>
                                                    <!-- /.product-image --> 
                                                </div>
                                                <!-- /.col -->
                                                <div class="col col-sm-8 col-lg-9">
                                                    <div class="product-info">
                                                        <h3 class="name"><a href="#">Floral Print Buttoned</a></h3>
                                                        <div class="product-price"> <span class="price"><i class='fa fa-inr'></i> 45099 - <i class='fa fa-inr'></i> 80000</span> </div>
                                                        <!-- /.product-price -->
                                                        <div class="description m-t-10">Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget.</div>
                                                        <div class="cart clearfix animate-effect">
                                                            <div class="action">
                                                                <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                            </div>
                                                            <!-- /.action --> 
                                                        </div>
                                                        <!-- /.cart --> 
                                                    </div>
                                                    <!-- /.product-info --> 
                                                </div>
                                                <!-- /.col --> 
                                            </div>
                                            <!-- /.product-list-row -->
                                            <div class="tag new"><span>new</span></div>
                                        </div>
                                        <!-- /.product-list --> 
                                    </div>
                                    <!-- /.products --> 
                                </div>
                                <!-- /.category-product-inner -->
                                <div class="category-product-inner" style="visibility: visible; animation-name: fadeInUp;">
                                    <div class="products">
                                        <div class="product-list product">
                                            <div class="row product-list-row">
                                                <div class="col col-sm-4 col-lg-3">
                                                    <div class="product-image">
                                                        <div class="image"> <img src="_/images/products/13.jpg" alt=""> </div>
                                                    </div>
                                                    <!-- /.product-image --> 
                                                </div>
                                                <!-- /.col -->
                                                <div class="col col-sm-8 col-lg-9">
                                                    <div class="product-info">
                                                        <h3 class="name"><a href="#">Floral Print Buttoned</a></h3>
                                                        <div class="product-price"> <span class="price"><i class='fa fa-inr'></i> 45099 - <i class='fa fa-inr'></i> 80000</span> </div>
                                                        <!-- /.product-price -->
                                                        <div class="description m-t-10">Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget.</div>
                                                        <div class="cart clearfix animate-effect">
                                                            <div class="action">
                                                                <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                            </div>
                                                            <!-- /.action --> 
                                                        </div>
                                                        <!-- /.cart --> 
                                                    </div>
                                                    <!-- /.product-info --> 
                                                </div>
                                                <!-- /.col --> 
                                            </div>
                                            <!-- /.product-list-row -->
                                            <div class="tag sale"><span>sale</span></div>
                                        </div>
                                        <!-- /.product-list --> 
                                    </div>
                                    <!-- /.products --> 
                                </div>
                                <!-- /.category-product-inner -->
                                <div class="category-product-inner" style="visibility: visible; animation-name: fadeInUp;">
                                    <div class="products">
                                        <div class="product-list product">
                                            <div class="row product-list-row">
                                                <div class="col col-sm-4 col-lg-3">
                                                    <div class="product-image">
                                                        <div class="image"> <img src="_/images/products/14.jpg" alt=""> </div>
                                                    </div>
                                                    <!-- /.product-image --> 
                                                </div>
                                                <!-- /.col -->
                                                <div class="col col-sm-8 col-lg-9">
                                                    <div class="product-info">
                                                        <h3 class="name"><a href="#">Floral Print Buttoned</a></h3>
                                                        <div class="product-price"> <span class="price"><i class='fa fa-inr'></i> 45099 - <i class='fa fa-inr'></i> 80000</span> </div>
                                                        <!-- /.product-price -->
                                                        <div class="description m-t-10">Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget.</div>
                                                        <div class="cart clearfix animate-effect">
                                                            <div class="action">
                                                                <ul class="list-unstyled">
                                                            <li class="add-cart-button btn-group">
                                                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                <i class="fa fa-truck"></i>
                                                                </button>
                                                                <a class="btn btn-primary" href="" title="Wishlist">Add to Truck</a>
                                                            </li>
                                                        </ul>
                                                            </div>
                                                            <!-- /.action --> 
                                                        </div>
                                                        <!-- /.cart --> 
                                                    </div>
                                                    <!-- /.product-info --> 
                                                </div>
                                                <!-- /.col --> 
                                            </div>
                                            <!-- /.product-list-row -->
                                            <div class="tag hot"><span>hot</span></div>
                                        </div>
                                        <!-- /.product-list --> 
                                    </div>
                                    <!-- /.products --> 
                                </div>
                                <!-- /.category-product-inner --> 
                            </div>
                            <!-- /.category-product --> 
                        </div>
                    </div>
                    <div class="clearfix filters-container">
                        <div class="text-right">
                            <div class="pagination-container">
                                <ul class="list-inline list-unstyled">
                                    <li class="prev"><a href="#"><i class="fa fa-angle-left"></i></a></li>
                                    <li><a href="#">1</a></li>
                                    <li class="active"><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li class="next"><a href="#"><i class="fa fa-angle-right"></i></a></li>
                                </ul>
                                <!-- /.list-inline -->
                            </div>
                            <!-- /.pagination-container --> 
                        </div>
                        <!-- /.text-right -->
                    </div>
                    <!-- /.filters-container -->
                </div>
            </div><!-- /.col -->
        </div><!-- /.row -->
        <div id="brands-carousel" class="logo-slider">
            <h3 class="section-title">Our Brands</h3>
            <div class="logo-slider-inner">
                <div id="brand-slider" class="owl-carousel brand-slider custom-carousel owl-theme">
                    <div class="item m-t-15">
                        <a href="#" class="image">
                        <img src="_/images/brands/brand1.png" alt="">
                        </a>
                    </div>
                    <!--/.item-->
                    <div class="item m-t-10">
                        <a href="#" class="image">
                        <img src="_/images/brands/brand2.png" alt="">
                        </a>
                    </div>
                    <!--/.item-->
                    <div class="item">
                        <a href="#" class="image">
                        <img src="_/images/brands/brand3.png" alt="">
                        </a>
                    </div>
                    <!--/.item-->
                    <div class="item">
                        <a href="#" class="image">
                        <img src="_/images/brands/brand4.png" alt="">
                        </a>
                    </div>
                    <!--/.item-->
                    <div class="item">
                        <a href="#" class="image">
                        <img src="_/images/brands/brand5.png" alt="">
                        </a>
                    </div>
                    <!--/.item-->
                    <div class="item">
                        <a href="#" class="image">
                        <img src="_/images/brands/brand6.png" alt="">
                        </a>
                    </div>
                    <!--/.item-->
                    <div class="item">
                        <a href="#" class="image">
                        <img src="_/images/brands/brand2.png" alt="">
                        </a>
                    </div>
                    <!--/.item-->
                    <div class="item">
                        <a href="#" class="image">
                        <img src="_/images/brands/brand4.png" alt="">
                        </a>
                    </div>
                    <!--/.item-->
                    <div class="item">
                        <a href="#" class="image">
                        <img src="_/images/brands/brand1.png" alt="">
                        </a>
                    </div>
                    <!--/.item-->
                    <div class="item">
                        <a href="#" class="image">
                        <img src="_/images/brands/brand5.png" alt="">
                        </a>
                    </div>
                    <!--/.item-->
                </div>
                <!-- /.owl-carousel #logo-slider -->
            </div>
            <!-- /.logo-slider-inner -->
        </div>
    </div>
</div>
<?php echo$footer; ?>