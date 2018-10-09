<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta charset="ISO-8859-15">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title><?php echo $title_for_layout; ?></title>
        <link rel="icon" href="<?php echo IMG_URL; ?>favicon.ico" type="image/x-icon" />
        <!-- Bootstrap -->
        <link href="<?php echo VENDOR_URL; ?>bootstrap/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link href="<?php echo VENDOR_URL; ?>font-awesome/css/font-awesome.min.css" rel="stylesheet">

        <!-- Custom Theme Style -->
        <link href="<?php echo CSS_URL; ?>front-style.css" rel="stylesheet">
        <link href="<?php echo CSS_URL; ?>front-colorbox.css" rel="stylesheet">
        <link href="<?php echo CSS_URL; ?>front-zoomslider.css" rel="stylesheet">

        <?php if ($theme->slug) { ?>
            <link href="<?php echo CSS_URL; ?>theme/<?php echo $theme->slug; ?>.css" rel="stylesheet">
        <?php } else { ?>
            <link href="<?php echo CSS_URL; ?>theme/dodger-blue.css" rel="stylesheet">
        <?php } ?>

        <!-- jQuery -->
        <script src="<?php echo JS_URL; ?>modernizr-2.6.2.min.js"></script>
        <script src="<?php echo JS_URL; ?>jquery-1.11.2.min.js"></script>
        <script src="<?php echo JS_URL; ?>jquery.validate.js"></script>

    </head>

    <body>
        
        <?php $this->load->view('layout/header'); ?>   

        
        <!-- page content -->
        
        <?php echo $content_for_layout; ?>
        <!-- /page content -->
        
        <!-- footer content -->
        <?php $this->load->view('layout/footer'); ?>   
        <!-- /footer content -->

        <!-- Bootstrap -->
        <script src="<?php echo VENDOR_URL; ?>bootstrap/bootstrap.min.js"></script>    

        <!--   Start   -->
        
        <script src="<?php echo JS_URL; ?>jquery.zoomslider.min.js"></script>        
        <script src="<?php echo JS_URL; ?>jquery.colorbox-min.js"></script>
        <!-- dataTable with buttons end -->
    
        <!-- Custom Theme Scripts -->
        <script src="<?php echo JS_URL; ?>front-custom.js"></script>   

        <script type="text/javascript">

            jQuery.extend(jQuery.validator.messages, {
                required: "<?php echo $this->lang->line('required_field'); ?>",
                email: "<?php echo $this->lang->line('enter_valid_email'); ?>",
                url: "<?php echo $this->lang->line('enter_valid_url'); ?>",
                date: "<?php echo $this->lang->line('enter_valid_date'); ?>",
                number: "<?php echo $this->lang->line('enter_valid_number'); ?>",
                digits: "<?php echo $this->lang->line('enter_only_digit'); ?>",
                equalTo: "<?php echo $this->lang->line('enter_same_value_again'); ?>",
                remote: "<?php echo $this->lang->line('pls_fix_this'); ?>",
                dateISO: "Please enter a valid date (ISO).",
                maxlength: jQuery.validator.format("Please enter no more than {0} characters."),
                minlength: jQuery.validator.format("Please enter at least {0} characters."),
                rangelength: jQuery.validator.format("Please enter a value between {0} and {1} characters long."),
                range: jQuery.validator.format("Please enter a value between {0} and {1}."),
                max: jQuery.validator.format("Please enter a value less than or equal to {0}."),
                min: jQuery.validator.format("Please enter a value greater than or equal to {0}.")
            });
        </script>

    </body>
</html>