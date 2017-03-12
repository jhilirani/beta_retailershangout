<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <meta name="keywords" content="MediaCenter, Template, eCommerce">
        <!--<meta name="robots" content="all">-->
        <title><?php echo $MetaTitle;?></title>
        <?php echo meta($meta);?>
        <link rel="author" href=" http://beta.retailershangout.com"/>
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css'>
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css'>
        <link rel='stylesheet' href='<?php echo SiteCSSURL;?>jquery-ui.theme.min.css'>
        <link rel='stylesheet' href='<?php echo SiteCSSURL;?>main.css'>
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.css'>
        <link rel='stylesheet' href='<?php echo SiteCSSURL;?>owl.transitions.css'>
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.9.0/css/lightbox.min.css'>
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css'>
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.11.2/css/bootstrap-select.min.css'>
        <link rel='stylesheet' href='<?php echo SiteCSSURL;?>styles.css'>
        <link rel='stylesheet' href='<?php echo SiteCSSURL;?>custom.css'>
        <!-- Fonts -->
        <!--<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,700,700i" rel="stylesheet"> -->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <!--<link rel='stylesheet' href='<?php //echo SiteCSSURL;?>font-awesome.min.css'>-->
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700'>
        <!--[if lt IE 9]><script src="assets/js/html5shiv.js"></script><script src="assets/js/respond.min.js"></script><![endif]-->
        <script src="<?php echo SiteJSURL;?>jquery-1.11.1.min.js"></script> 
        <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>-->
        <script type="text/javascript">
        //<![CDATA[
            // URL for access ajax data
            myJsMain = window.myJsMain || {};
            myJsMain.baseURL = '<?php echo BASE_URL;?>';
            myJsMain.showHowItWorksBoxLoaded =0;
            myJsMain.securityCode='<?php echo $this->session->userdata("secret");?>';
            <?php if($this->session->userdata('FE_SESSION_VAR')==''):?>
            myJsMain.isLogedIn=false;
            <?php else:?>
            myJsMain.isLogedIn=true;
            <?php endif;?>
            <?php if($isMobile=='yes'):?>
                myJsMain.isMobile='yes';
            <?php else: ?>
                myJsMain.isMobile='no';
            <?php endif;?>    
            myJsMain.SecretTextSetAjaxURL='<?php echo BASE_URL.'ajax/reset_secret/'?>';
            myJsMain.CaptchaCookeName='<?php echo $this->config->item('CAPTCHA_COOKIE_NAME');?>';     
        //]]>
        manualClick=false;
            var searchurl = '<?php echo BASE_URL;?>';
            var dialog=null;
        </script>
        <script type="text/javascript"> //<![CDATA[ 
        var tlJsHost = ((window.location.protocol == "https:") ? "https://secure.comodo.com/" : "http://www.trustlogo.com/");
        document.write(unescape("%3Cscript src='" + tlJsHost + "trustlogo/javascript/trustlogo.js' type='text/javascript'%3E%3C/script%3E"));
        //]]>
        </script>
    </head>