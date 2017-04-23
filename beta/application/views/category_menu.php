<div class="head"><i class="icon fa fa-align-justify fa-fw hidden-lg hidden-md"></i> Categories</div>
<nav class="yamm megamenu-horizontal" role="navigation">
    <ul class="nav">
        <?php foreach($categoryMenu AS $k):?>
        <li class="dropdown menu-item">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false"><?php echo $k->categoryName;?></a>
            <?php if(property_exists($k,'SubCategory')):
                if(!empty($k->SubCategory)): $subCategory=$k->SubCategory;?>
                <ul class="dropdown-menu mega-menu">
                    <li class="yamm-content">
                        <div class="row">
                            <div class="col-sm-12 col-md-3">
                                <ul class="links list-unstyled">
                                    <?php foreach($subCategory AS $kk):?>
                                    <li class="dropdown menu-item">
                                        <a href="<?php echo BASE_URL.'products/'.my_seo_freindly_url($kk->categoryName).'/?cpid='.  base64_encode($kk->categoryId*226201);?>&sort=popular" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false"><?php echo $kk->categoryName;?></a>
                                        <?php if(property_exists($k,'SubCategory')):
                                            if(!empty($kk->SubCategory)): $subSubCategory=$kk->SubCategory;?>
                                            <ul class="dropdown-menu">
                                                <?php foreach($subSubCategory AS $kkk):?>
                                                    <li><a href="<?php echo BASE_URL.'products/'.my_seo_freindly_url($kkk->categoryName).'/?cpid='.  base64_encode($kkk->categoryId*226201);?>&sort=popular"><?php echo $kkk->categoryName;?></a></li>
                                                <?php endforeach;?>
                                            </ul>
                                            <?php endif;?>
                                        <?php endif;?>
                                    </li>
                                    <?php endforeach;?>
                                </ul>
                            </div> <!-- /.col -->
                        </div> <!-- /.row -->
                    </li><!-- /.yamm-content -->
                </ul><!-- /.dropdown-menu -->
                <?php endif;?>
            <?php endif;?>
        </li><!-- /.menu-item -->
        <?php endforeach;?>
    </ul><!-- /.nav -->
</nav><!-- /.megamenu-horizontal -->